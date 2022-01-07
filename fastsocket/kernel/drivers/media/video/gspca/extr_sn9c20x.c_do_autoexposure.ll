; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_do_autoexposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_do_autoexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32, i32 }

@MIN_AVG_LUM = common dso_local global i64 0, align 8
@MAX_AVG_LUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64)* @do_autoexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_autoexposure(%struct.gspca_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @MIN_AVG_LUM, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %65

12:                                               ; preds = %2
  %13 = load %struct.sd*, %struct.sd** %5, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 6000
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %122

18:                                               ; preds = %12
  %19 = load %struct.sd*, %struct.sd** %5, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sd*, %struct.sd** %5, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 6000
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 6000, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 16, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.sd*, %struct.sd** %5, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %38 = call i32 @set_exposure(%struct.gspca_dev* %37)
  %39 = load %struct.sd*, %struct.sd** %5, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sd*, %struct.sd** %5, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.sd*, %struct.sd** %5, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  %46 = load %struct.sd*, %struct.sd** %5, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sd*, %struct.sd** %5, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %33
  %55 = load %struct.sd*, %struct.sd** %5, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %57, 2
  store i32 %58, i32* %56, align 4
  br label %64

59:                                               ; preds = %33
  %60 = load %struct.sd*, %struct.sd** %5, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %2
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @MAX_AVG_LUM, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %122

69:                                               ; preds = %65
  %70 = load %struct.sd*, %struct.sd** %5, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 16
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %122

75:                                               ; preds = %69
  %76 = load %struct.sd*, %struct.sd** %5, align 8
  %77 = getelementptr inbounds %struct.sd, %struct.sd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sd*, %struct.sd** %5, align 8
  %80 = getelementptr inbounds %struct.sd, %struct.sd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp sgt i32 %83, 5888
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  store i32 6000, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %75
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 16
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 16, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.sd*, %struct.sd** %5, align 8
  %93 = getelementptr inbounds %struct.sd, %struct.sd* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %95 = call i32 @set_exposure(%struct.gspca_dev* %94)
  %96 = load %struct.sd*, %struct.sd** %5, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sd*, %struct.sd** %5, align 8
  %100 = getelementptr inbounds %struct.sd, %struct.sd* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.sd*, %struct.sd** %5, align 8
  %102 = getelementptr inbounds %struct.sd, %struct.sd* %101, i32 0, i32 3
  store i32 0, i32* %102, align 4
  %103 = load %struct.sd*, %struct.sd** %5, align 8
  %104 = getelementptr inbounds %struct.sd, %struct.sd* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sd*, %struct.sd** %5, align 8
  %107 = getelementptr inbounds %struct.sd, %struct.sd* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %90
  %112 = load %struct.sd*, %struct.sd** %5, align 8
  %113 = getelementptr inbounds %struct.sd, %struct.sd* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sdiv i32 %114, 2
  store i32 %115, i32* %113, align 4
  br label %121

116:                                              ; preds = %90
  %117 = load %struct.sd*, %struct.sd** %5, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %116, %111
  br label %122

122:                                              ; preds = %17, %74, %121, %65
  ret void
}

declare dso_local i32 @set_exposure(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
