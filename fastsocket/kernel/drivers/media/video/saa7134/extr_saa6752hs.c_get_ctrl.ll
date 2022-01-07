; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa6752hs.c_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa6752hs.c_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa6752hs_mpeg_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ext_control = type { i32, i32 }

@V4L2_MPEG_STREAM_TYPE_MPEG2_TS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.saa6752hs_mpeg_params*, %struct.v4l2_ext_control*)* @get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ctrl(i32 %0, %struct.saa6752hs_mpeg_params* %1, %struct.v4l2_ext_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa6752hs_mpeg_params*, align 8
  %7 = alloca %struct.v4l2_ext_control*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.saa6752hs_mpeg_params* %1, %struct.saa6752hs_mpeg_params** %6, align 8
  store %struct.v4l2_ext_control* %2, %struct.v4l2_ext_control** %7, align 8
  %8 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %97 [
    i32 133, label %11
    i32 135, label %15
    i32 137, label %21
    i32 134, label %27
    i32 136, label %33
    i32 140, label %39
    i32 139, label %45
    i32 141, label %51
    i32 138, label %63
    i32 128, label %67
    i32 132, label %71
    i32 131, label %77
    i32 129, label %84
    i32 130, label %91
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  %13 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  br label %100

15:                                               ; preds = %3
  %16 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %6, align 8
  %17 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %100

21:                                               ; preds = %3
  %22 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %6, align 8
  %23 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %100

27:                                               ; preds = %3
  %28 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %6, align 8
  %29 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %100

33:                                               ; preds = %3
  %34 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %6, align 8
  %35 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %100

39:                                               ; preds = %3
  %40 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %6, align 8
  %41 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %100

45:                                               ; preds = %3
  %46 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %6, align 8
  %47 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %100

51:                                               ; preds = %3
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %101

57:                                               ; preds = %51
  %58 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %6, align 8
  %59 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %100

63:                                               ; preds = %3
  %64 = load i32, i32* @V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000, align 4
  %65 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %100

67:                                               ; preds = %3
  %68 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  %69 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %100

71:                                               ; preds = %3
  %72 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %6, align 8
  %73 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %100

77:                                               ; preds = %3
  %78 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %6, align 8
  %79 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 1000
  %82 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %100

84:                                               ; preds = %3
  %85 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %6, align 8
  %86 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %87, 1000
  %89 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %100

91:                                               ; preds = %3
  %92 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %6, align 8
  %93 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %100

97:                                               ; preds = %3
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %101

100:                                              ; preds = %91, %84, %77, %71, %67, %63, %57, %45, %39, %33, %27, %21, %15, %11
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %97, %54
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
