; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_cpia_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_cpia_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.cam_data = type { i64, %struct.TYPE_6__*, i64, %struct.TYPE_5__, i32*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (i32)* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64 }

@CPIA_COMMAND_GetCameraStatus = common dso_local global i32 0, align 4
@CPIA_MAX_IMAGE_SIZE = common dso_local global i32 0, align 4
@CPIA_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cpia_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.cam_data*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.video_device*, %struct.video_device** %6, align 8
  store %struct.video_device* %7, %struct.video_device** %3, align 8
  %8 = load %struct.video_device*, %struct.video_device** %3, align 8
  %9 = call %struct.cam_data* @video_get_drvdata(%struct.video_device* %8)
  store %struct.cam_data* %9, %struct.cam_data** %4, align 8
  %10 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %11 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %49

14:                                               ; preds = %1
  %15 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %16 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %15, i32 0, i32 7
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %21 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %20, i32 0, i32 7
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %26 = call i32 @save_camera_state(%struct.cam_data* %25)
  %27 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %28 = call i32 @goto_low_power(%struct.cam_data* %27)
  %29 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %30 = load i32, i32* @CPIA_COMMAND_GetCameraStatus, align 4
  %31 = call i32 @do_command(%struct.cam_data* %29, i32 %30, i32 0, i32 0, i32 0, i32 0)
  %32 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %33 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @free_frames(i32 %34)
  %36 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %37 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %42 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %40(i32 %43)
  %45 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %46 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @put_cam(%struct.TYPE_6__* %47)
  br label %49

49:                                               ; preds = %24, %1
  %50 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %51 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %51, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %101

55:                                               ; preds = %49
  %56 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %57 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %62 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @CPIA_MAX_IMAGE_SIZE, align 4
  %65 = call i32 @rvfree(i32* %63, i32 %64)
  %66 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %67 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %66, i32 0, i32 4
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %60, %55
  %69 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %70 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %76 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @CPIA_MAX_FRAME_SIZE, align 4
  %80 = call i32 @rvfree(i32* %78, i32 %79)
  %81 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %82 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %74, %68
  %85 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %86 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %91 = call i32 @free_frame_buf(%struct.cam_data* %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %94 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = icmp ne %struct.TYPE_6__* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %99 = call i32 @kfree(%struct.cam_data* %98)
  br label %100

100:                                              ; preds = %97, %92
  br label %101

101:                                              ; preds = %100, %49
  %102 = load %struct.file*, %struct.file** %2, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 0
  store %struct.video_device* null, %struct.video_device** %103, align 8
  ret i32 0
}

declare dso_local %struct.cam_data* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @save_camera_state(%struct.cam_data*) #1

declare dso_local i32 @goto_low_power(%struct.cam_data*) #1

declare dso_local i32 @do_command(%struct.cam_data*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free_frames(i32) #1

declare dso_local i32 @put_cam(%struct.TYPE_6__*) #1

declare dso_local i32 @rvfree(i32*, i32) #1

declare dso_local i32 @free_frame_buf(%struct.cam_data*) #1

declare dso_local i32 @kfree(%struct.cam_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
