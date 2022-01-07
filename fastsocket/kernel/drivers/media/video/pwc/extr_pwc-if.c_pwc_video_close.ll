; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_video_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_video_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pwc_device* }
%struct.pwc_device = type { i32, i32, %struct.video_device*, i32, i32, i32, i32 }
%struct.video_device = type { i32 }
%struct.file = type { %struct.video_device* }

@.str = private unnamed_addr constant [37 x i8] c">> video_close called(vdev = 0x%p).\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"video_close() called on closed device?\0A\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"Closing video device: %d frames received, dumped %d frames, %d frames with errors.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to set LED on/off time.\0A\00", align 1
@power_save = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to power down camera (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"<< video_close() vopen=%d\0A\00", align 1
@MAX_DEV_HINTS = common dso_local global i32 0, align 4
@device_hint = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @pwc_video_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_video_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.video_device*, %struct.video_device** %8, align 8
  store %struct.video_device* %9, %struct.video_device** %3, align 8
  %10 = load %struct.video_device*, %struct.video_device** %3, align 8
  %11 = call i32 @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.video_device* %10)
  %12 = load %struct.video_device*, %struct.video_device** %3, align 8
  %13 = call %struct.pwc_device* @video_get_drvdata(%struct.video_device* %12)
  store %struct.pwc_device* %13, %struct.pwc_device** %4, align 8
  %14 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %15 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %18 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %17, i32 0, i32 2
  %19 = load %struct.video_device*, %struct.video_device** %18, align 8
  %20 = icmp eq %struct.video_device* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @PWC_DEBUG_MODULE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %1
  %24 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %25 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 20
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %30 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %33 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %36 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @PWC_DEBUG_MODULE(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %28, %23
  %40 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %41 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @DEVICE_USE_CODEC1(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 (...) @pwc_dec1_exit()
  br label %49

47:                                               ; preds = %39
  %48 = call i32 (...) @pwc_dec23_exit()
  br label %49

49:                                               ; preds = %47, %45
  %50 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %51 = call i32 @pwc_isoc_cleanup(%struct.pwc_device* %50)
  %52 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %53 = call i32 @pwc_free_buffers(%struct.pwc_device* %52)
  %54 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %55 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %85, label %58

58:                                               ; preds = %49
  %59 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %60 = call i64 @pwc_set_leds(%struct.pwc_device* %59, i32 0, i32 0)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 (i8*, ...) @PWC_DEBUG_MODULE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i64, i64* @power_save, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %69 = call i32 @pwc_camera_power(%struct.pwc_device* %68, i32 0)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @PWC_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %67
  br label %76

76:                                               ; preds = %75, %64
  %77 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %78 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %77, i32 0, i32 2
  %79 = load %struct.video_device*, %struct.video_device** %78, align 8
  %80 = getelementptr inbounds %struct.video_device, %struct.video_device* %79, i32 -1
  store %struct.video_device* %80, %struct.video_device** %78, align 8
  %81 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %82 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %81, i32 0, i32 2
  %83 = load %struct.video_device*, %struct.video_device** %82, align 8
  %84 = call i32 @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), %struct.video_device* %83)
  br label %112

85:                                               ; preds = %49
  %86 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %87 = call i32 @pwc_cleanup(%struct.pwc_device* %86)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %108, %85
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @MAX_DEV_HINTS, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @device_hint, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load %struct.pwc_device*, %struct.pwc_device** %97, align 8
  %99 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %100 = icmp eq %struct.pwc_device* %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @device_hint, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store %struct.pwc_device* null, %struct.pwc_device** %106, align 8
  br label %107

107:                                              ; preds = %101, %92
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %88

111:                                              ; preds = %88
  br label %112

112:                                              ; preds = %111, %76
  %113 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %114 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %113, i32 0, i32 1
  %115 = call i32 @mutex_unlock(i32* %114)
  ret i32 0
}

declare dso_local i32 @PWC_DEBUG_OPEN(i8*, %struct.video_device*) #1

declare dso_local %struct.pwc_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @PWC_DEBUG_MODULE(i8*, ...) #1

declare dso_local i64 @DEVICE_USE_CODEC1(i32) #1

declare dso_local i32 @pwc_dec1_exit(...) #1

declare dso_local i32 @pwc_dec23_exit(...) #1

declare dso_local i32 @pwc_isoc_cleanup(%struct.pwc_device*) #1

declare dso_local i32 @pwc_free_buffers(%struct.pwc_device*) #1

declare dso_local i64 @pwc_set_leds(%struct.pwc_device*, i32, i32) #1

declare dso_local i32 @pwc_camera_power(%struct.pwc_device*, i32) #1

declare dso_local i32 @PWC_ERROR(i8*, i32) #1

declare dso_local i32 @pwc_cleanup(%struct.pwc_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
