; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-core.c_hdpvr_device_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-core.c_hdpvr_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { i32*, i32, i32, i32, i32 }
%struct.hdpvr_video_info = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@CTRL_LOW_PASS_FILTER_VALUE = common dso_local global i32 0, align 4
@CTRL_DEFAULT_INDEX = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"control request returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"no valid video signal or device init failed\0A\00", align 1
@boost_audio = common dso_local global i32 0, align 4
@STATUS_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdpvr_device*)* @hdpvr_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdpvr_device_init(%struct.hdpvr_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdpvr_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hdpvr_video_info*, align 8
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %3, align 8
  %7 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %8 = call i64 @device_authorization(%struct.hdpvr_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EACCES, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %108

13:                                               ; preds = %1
  %14 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %15 = call i32 @hdpvr_set_options(%struct.hdpvr_device* %14)
  %16 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %17 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %20 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 3, i32* %23, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 3, i32* %25, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 0, i32* %29, align 4
  %30 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %31 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %34 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_sndctrlpipe(i32 %35, i32 0)
  %37 = load i32, i32* @CTRL_LOW_PASS_FILTER_VALUE, align 4
  %38 = load i32, i32* @CTRL_DEFAULT_INDEX, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @usb_control_msg(i32 %32, i32 %36, i32 1, i32 56, i32 %37, i32 %38, i32* %39, i32 4, i32 1000)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @MSG_INFO, align 4
  %42 = load i32, i32* @hdpvr_debug, align 4
  %43 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %44 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %43, i32 0, i32 3
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 %41, i32 %42, i32* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %48 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %47, i32 0, i32 2
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %51 = call %struct.hdpvr_video_info* @get_video_info(%struct.hdpvr_device* %50)
  store %struct.hdpvr_video_info* %51, %struct.hdpvr_video_info** %6, align 8
  %52 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %6, align 8
  %53 = icmp ne %struct.hdpvr_video_info* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %13
  %55 = load i32, i32* @MSG_INFO, align 4
  %56 = load i32, i32* @hdpvr_debug, align 4
  %57 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %58 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %57, i32 0, i32 3
  %59 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 %55, i32 %56, i32* %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %63

60:                                               ; preds = %13
  %61 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %6, align 8
  %62 = call i32 @kfree(%struct.hdpvr_video_info* %61)
  br label %63

63:                                               ; preds = %60, %54
  %64 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %65 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %64, i32 0, i32 2
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 1, i32* %68, align 4
  %69 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %70 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %73 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @usb_sndctrlpipe(i32 %74, i32 0)
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @usb_control_msg(i32 %71, i32 %75, i32 212, i32 56, i32 0, i32 0, i32* %76, i32 1, i32 1000)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @MSG_INFO, align 4
  %79 = load i32, i32* @hdpvr_debug, align 4
  %80 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %81 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %80, i32 0, i32 3
  %82 = load i32, i32* %4, align 4
  %83 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 %78, i32 %79, i32* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @boost_audio, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %88 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %91 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @usb_sndctrlpipe(i32 %92, i32 0)
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @usb_control_msg(i32 %89, i32 %93, i32 213, i32 56, i32 0, i32 0, i32* %94, i32 1, i32 1000)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* @MSG_INFO, align 4
  %97 = load i32, i32* @hdpvr_debug, align 4
  %98 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %99 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %98, i32 0, i32 3
  %100 = load i32, i32* %4, align 4
  %101 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 %96, i32 %97, i32* %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %103 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %102, i32 0, i32 2
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* @STATUS_IDLE, align 4
  %106 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %107 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %63, %10
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @device_authorization(%struct.hdpvr_device*) #1

declare dso_local i32 @hdpvr_set_options(%struct.hdpvr_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.hdpvr_video_info* @get_video_info(%struct.hdpvr_device*) #1

declare dso_local i32 @kfree(%struct.hdpvr_video_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
