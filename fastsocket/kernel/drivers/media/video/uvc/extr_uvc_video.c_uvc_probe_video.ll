; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_probe_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_probe_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.uvc_streaming_control = type { i64, i32, i32, i32, i32 }

@UVC_QUIRK_PROBE_MINMAX = common dso_local global i32 0, align 4
@UVC_GET_MIN = common dso_local global i32 0, align 4
@UVC_GET_MAX = common dso_local global i32 0, align 4
@UVC_GET_CUR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_probe_video(%struct.uvc_streaming* %0, %struct.uvc_streaming_control* %1) #0 {
  %3 = alloca %struct.uvc_streaming*, align 8
  %4 = alloca %struct.uvc_streaming_control*, align 8
  %5 = alloca %struct.uvc_streaming_control, align 8
  %6 = alloca %struct.uvc_streaming_control, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %3, align 8
  store %struct.uvc_streaming_control* %1, %struct.uvc_streaming_control** %4, align 8
  %10 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %11 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %12 = call i32 @uvc_set_video_ctrl(%struct.uvc_streaming* %10, %struct.uvc_streaming_control* %11, i32 1)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %114

16:                                               ; preds = %2
  %17 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %18 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UVC_QUIRK_PROBE_MINMAX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %16
  %26 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %27 = load i32, i32* @UVC_GET_MIN, align 4
  %28 = call i32 @uvc_get_video_ctrl(%struct.uvc_streaming* %26, %struct.uvc_streaming_control* %5, i32 1, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %114

32:                                               ; preds = %25
  %33 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %34 = load i32, i32* @UVC_GET_MAX, align 4
  %35 = call i32 @uvc_get_video_ctrl(%struct.uvc_streaming* %33, %struct.uvc_streaming_control* %6, i32 1, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %114

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %6, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %43 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %16
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %110, %44
  %46 = load i32, i32* %8, align 4
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %48, label %113

48:                                               ; preds = %45
  %49 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %50 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %51 = call i32 @uvc_set_video_ctrl(%struct.uvc_streaming* %49, %struct.uvc_streaming_control* %50, i32 1)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %114

55:                                               ; preds = %48
  %56 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %57 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %58 = load i32, i32* @UVC_GET_CUR, align 4
  %59 = call i32 @uvc_get_video_ctrl(%struct.uvc_streaming* %56, %struct.uvc_streaming_control* %57, i32 1, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %114

63:                                               ; preds = %55
  %64 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %65 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %113

71:                                               ; preds = %63
  %72 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %73 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %77 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sle i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %113

81:                                               ; preds = %71
  %82 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %83 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @UVC_QUIRK_PROBE_MINMAX, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i32, i32* @ENOSPC, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %9, align 4
  br label %114

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %5, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %97 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %5, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %101 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %6, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %105 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %5, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %109 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %93
  %111 = load i32, i32* %8, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %45

113:                                              ; preds = %80, %70, %45
  br label %114

114:                                              ; preds = %113, %90, %62, %54, %38, %31, %15
  %115 = load i32, i32* %9, align 4
  ret i32 %115
}

declare dso_local i32 @uvc_set_video_ctrl(%struct.uvc_streaming*, %struct.uvc_streaming_control*, i32) #1

declare dso_local i32 @uvc_get_video_ctrl(%struct.uvc_streaming*, %struct.uvc_streaming_control*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
