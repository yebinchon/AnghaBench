; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_w996Xcf.c_w9968cf_set_crop_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_w996Xcf.c_w9968cf_set_crop_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SEN_OV7620 = common dso_local global i64 0, align 8
@FREQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @w9968cf_set_crop_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9968cf_set_crop_window(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %13 = load %struct.sd*, %struct.sd** %2, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 352, i32* %11, align 4
  store i32 288, i32* %12, align 4
  br label %19

18:                                               ; preds = %1
  store i32 640, i32* %11, align 4
  store i32 480, i32* %12, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load %struct.sd*, %struct.sd** %2, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SEN_OV7620, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load %struct.sd*, %struct.sd** %2, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i64, i64* @FREQ, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 277, i32* %3, align 4
  store i32 37, i32* %4, align 4
  br label %36

35:                                               ; preds = %25
  store i32 105, i32* %3, align 4
  store i32 37, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %38

37:                                               ; preds = %19
  store i32 320, i32* %3, align 4
  store i32 35, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load %struct.sd*, %struct.sd** %2, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 10
  %44 = load i32, i32* %11, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load %struct.sd*, %struct.sd** %2, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 %49, 10
  %51 = load i32, i32* %12, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i32, i32* %11, align 4
  br label %66

58:                                               ; preds = %38
  %59 = load %struct.sd*, %struct.sd** %2, align 8
  %60 = getelementptr inbounds %struct.sd, %struct.sd* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 10
  %64 = load i32, i32* %8, align 4
  %65 = sdiv i32 %63, %64
  br label %66

66:                                               ; preds = %58, %56
  %67 = phi i32 [ %57, %56 ], [ %65, %58 ]
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.sd*, %struct.sd** %2, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = shl i32 %75, 10
  %77 = load i32, i32* %7, align 4
  %78 = sdiv i32 %76, %77
  br label %81

79:                                               ; preds = %66
  %80 = load i32, i32* %12, align 4
  br label %81

81:                                               ; preds = %79, %71
  %82 = phi i32 [ %78, %71 ], [ %80, %79 ]
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.sd*, %struct.sd** %2, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.sd*, %struct.sd** %2, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %89, %90
  %92 = sdiv i32 %91, 2
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sdiv i32 %95, 2
  store i32 %96, i32* %6, align 4
  %97 = load %struct.sd*, %struct.sd** %2, align 8
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %98, %99
  %101 = call i32 @reg_w(%struct.sd* %97, i32 16, i32 %100)
  %102 = load %struct.sd*, %struct.sd** %2, align 8
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %103, %104
  %106 = call i32 @reg_w(%struct.sd* %102, i32 17, i32 %105)
  %107 = load %struct.sd*, %struct.sd** %2, align 8
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %110, %111
  %113 = call i32 @reg_w(%struct.sd* %107, i32 18, i32 %112)
  %114 = load %struct.sd*, %struct.sd** %2, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @reg_w(%struct.sd* %114, i32 19, i32 %119)
  ret void
}

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
