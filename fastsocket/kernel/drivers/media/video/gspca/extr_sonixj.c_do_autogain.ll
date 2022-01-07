; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_do_autogain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_do_autogain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, i32, i32, i32 }

@AG_CNT_START = common dso_local global i64 0, align 8
@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"mean lum %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @do_autogain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_autogain(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %3, align 8
  store i32 130, i32* %6, align 4
  store i32 20, i32* %7, align 4
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %134

15:                                               ; preds = %1
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %134

22:                                               ; preds = %15
  %23 = load i64, i64* @AG_CNT_START, align 8
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.sd*, %struct.sd** %3, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 3
  %28 = call i32 @atomic_read(i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @D_FRAM, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @PDEBUG(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %39, %40
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %134

43:                                               ; preds = %37, %22
  %44 = load %struct.sd*, %struct.sd** %3, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %111 [
    i32 130, label %47
    i32 129, label %67
    i32 128, label %89
  ]

47:                                               ; preds = %43
  %48 = load %struct.sd*, %struct.sd** %3, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %51, %52
  %54 = ashr i32 %53, 6
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %47
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i8* @setexposure(%struct.gspca_dev* %61, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.sd*, %struct.sd** %3, align 8
  %66 = getelementptr inbounds %struct.sd, %struct.sd* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %133

67:                                               ; preds = %43
  %68 = load %struct.sd*, %struct.sd** %3, align 8
  %69 = getelementptr inbounds %struct.sd, %struct.sd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 8
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 %72, %73
  %75 = ashr i32 %74, 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %67
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %83 = load i32, i32* %5, align 4
  %84 = shl i32 %83, 8
  %85 = call i8* @setexposure(%struct.gspca_dev* %82, i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.sd*, %struct.sd** %3, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  br label %133

89:                                               ; preds = %43
  %90 = load %struct.sd*, %struct.sd** %3, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 %93, %94
  %96 = ashr i32 %95, 2
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %89
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i8* @setexposure(%struct.gspca_dev* %103, i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.sd*, %struct.sd** %3, align 8
  %108 = getelementptr inbounds %struct.sd, %struct.sd* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %110 = call i32 @setredblue(%struct.gspca_dev* %109)
  br label %133

111:                                              ; preds = %43
  %112 = load %struct.sd*, %struct.sd** %3, align 8
  %113 = getelementptr inbounds %struct.sd, %struct.sd* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %4, align 4
  %117 = sub nsw i32 %115, %116
  %118 = ashr i32 %117, 6
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %111
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i8* @setexposure(%struct.gspca_dev* %125, i32 %126)
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.sd*, %struct.sd** %3, align 8
  %130 = getelementptr inbounds %struct.sd, %struct.sd* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %132 = call i32 @setredblue(%struct.gspca_dev* %131)
  br label %133

133:                                              ; preds = %124, %102, %81, %60
  br label %134

134:                                              ; preds = %14, %21, %133, %37
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i8* @setexposure(%struct.gspca_dev*, i32) #1

declare dso_local i32 @setredblue(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
