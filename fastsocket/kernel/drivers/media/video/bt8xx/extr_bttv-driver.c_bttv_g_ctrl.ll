; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.bttv_fh = type { %struct.bttv* }
%struct.bttv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@core = common dso_local global i32 0, align 4
@g_ctrl = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @bttv_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_g_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.bttv_fh*, align 8
  %9 = alloca %struct.bttv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bttv_fh*
  store %struct.bttv_fh* %11, %struct.bttv_fh** %8, align 8
  %12 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %13 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %12, i32 0, i32 0
  %14 = load %struct.bttv*, %struct.bttv** %13, align 8
  store %struct.bttv* %14, %struct.bttv** %9, align 8
  %15 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %114 [
    i32 142, label %18
    i32 140, label %24
    i32 141, label %30
    i32 128, label %36
    i32 145, label %42
    i32 143, label %42
    i32 147, label %42
    i32 146, label %42
    i32 144, label %42
    i32 137, label %48
    i32 136, label %54
    i32 133, label %60
    i32 138, label %66
    i32 139, label %72
    i32 131, label %78
    i32 129, label %84
    i32 130, label %90
    i32 132, label %96
    i32 134, label %102
    i32 135, label %108
  ]

18:                                               ; preds = %3
  %19 = load %struct.bttv*, %struct.bttv** %9, align 8
  %20 = getelementptr inbounds %struct.bttv, %struct.bttv* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %117

24:                                               ; preds = %3
  %25 = load %struct.bttv*, %struct.bttv** %9, align 8
  %26 = getelementptr inbounds %struct.bttv, %struct.bttv* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %117

30:                                               ; preds = %3
  %31 = load %struct.bttv*, %struct.bttv** %9, align 8
  %32 = getelementptr inbounds %struct.bttv, %struct.bttv* %31, i32 0, i32 12
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %117

36:                                               ; preds = %3
  %37 = load %struct.bttv*, %struct.bttv** %9, align 8
  %38 = getelementptr inbounds %struct.bttv, %struct.bttv* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %117

42:                                               ; preds = %3, %3, %3, %3, %3
  %43 = load %struct.bttv*, %struct.bttv** %9, align 8
  %44 = load i32, i32* @core, align 4
  %45 = load i32, i32* @g_ctrl, align 4
  %46 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %47 = call i32 @bttv_call_all(%struct.bttv* %43, i32 %44, i32 %45, %struct.v4l2_control* %46)
  br label %117

48:                                               ; preds = %3
  %49 = load %struct.bttv*, %struct.bttv** %9, align 8
  %50 = getelementptr inbounds %struct.bttv, %struct.bttv* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %117

54:                                               ; preds = %3
  %55 = load %struct.bttv*, %struct.bttv** %9, align 8
  %56 = getelementptr inbounds %struct.bttv, %struct.bttv* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %117

60:                                               ; preds = %3
  %61 = load %struct.bttv*, %struct.bttv** %9, align 8
  %62 = getelementptr inbounds %struct.bttv, %struct.bttv* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %117

66:                                               ; preds = %3
  %67 = load %struct.bttv*, %struct.bttv** %9, align 8
  %68 = getelementptr inbounds %struct.bttv, %struct.bttv* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %117

72:                                               ; preds = %3
  %73 = load %struct.bttv*, %struct.bttv** %9, align 8
  %74 = getelementptr inbounds %struct.bttv, %struct.bttv* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %117

78:                                               ; preds = %3
  %79 = load %struct.bttv*, %struct.bttv** %9, align 8
  %80 = getelementptr inbounds %struct.bttv, %struct.bttv* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %117

84:                                               ; preds = %3
  %85 = load %struct.bttv*, %struct.bttv** %9, align 8
  %86 = getelementptr inbounds %struct.bttv, %struct.bttv* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %117

90:                                               ; preds = %3
  %91 = load %struct.bttv*, %struct.bttv** %9, align 8
  %92 = getelementptr inbounds %struct.bttv, %struct.bttv* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %117

96:                                               ; preds = %3
  %97 = load %struct.bttv*, %struct.bttv** %9, align 8
  %98 = getelementptr inbounds %struct.bttv, %struct.bttv* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %117

102:                                              ; preds = %3
  %103 = load %struct.bttv*, %struct.bttv** %9, align 8
  %104 = getelementptr inbounds %struct.bttv, %struct.bttv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %117

108:                                              ; preds = %3
  %109 = load %struct.bttv*, %struct.bttv** %9, align 8
  %110 = getelementptr inbounds %struct.bttv, %struct.bttv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %113 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %117

114:                                              ; preds = %3
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %118

117:                                              ; preds = %108, %102, %96, %90, %84, %78, %72, %66, %60, %54, %48, %42, %36, %30, %24, %18
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %114
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @bttv_call_all(%struct.bttv*, i32, i32, %struct.v4l2_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
