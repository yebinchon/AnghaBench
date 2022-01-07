; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_start_streaming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { i64, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hdpvr_video_info = type { i32, i32, i32 }

@STATUS_STREAMING = common dso_local global i64 0, align 8
@STATUS_IDLE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@MSG_BUFFER = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"video signal: %dx%d@%dhz\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"encoder start control request returned %d\0A\00", align 1
@CTRL_START_STREAMING_VALUE = common dso_local global i32 0, align 4
@hdpvr_transmit_buffers = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"streaming started\0A\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"no video signal at input %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdpvr_device*)* @hdpvr_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdpvr_start_streaming(%struct.hdpvr_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdpvr_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdpvr_video_info*, align 8
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %3, align 8
  %6 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %7 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @STATUS_STREAMING, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

12:                                               ; preds = %1
  %13 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %14 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @STATUS_IDLE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %92

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %24 = call %struct.hdpvr_video_info* @get_video_info(%struct.hdpvr_device* %23)
  store %struct.hdpvr_video_info* %24, %struct.hdpvr_video_info** %5, align 8
  %25 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %5, align 8
  %26 = icmp ne %struct.hdpvr_video_info* %25, null
  br i1 %26, label %27, label %79

27:                                               ; preds = %22
  %28 = load i32, i32* @MSG_BUFFER, align 4
  %29 = load i32, i32* @hdpvr_debug, align 4
  %30 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %31 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %30, i32 0, i32 2
  %32 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %5, align 8
  %33 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %5, align 8
  %36 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %5, align 8
  %39 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 %28, i32 %29, i32* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  %42 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %5, align 8
  %43 = call i32 @kfree(%struct.hdpvr_video_info* %42)
  %44 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %45 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %48 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @usb_sndctrlpipe(i32 %49, i32 0)
  %51 = call i32 @usb_control_msg(i32 %46, i32 %50, i32 184, i32 56, i32 1, i32 0, i32* null, i32 0, i32 8000)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @MSG_BUFFER, align 4
  %53 = load i32, i32* @hdpvr_debug, align 4
  %54 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %55 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %54, i32 0, i32 2
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 %52, i32 %53, i32* %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %59 = load i32, i32* @CTRL_START_STREAMING_VALUE, align 4
  %60 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %58, i32 %59, i32 0)
  %61 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %62 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %61, i32 0, i32 3
  %63 = load i32, i32* @hdpvr_transmit_buffers, align 4
  %64 = call i32 @INIT_WORK(i32* %62, i32 %63)
  %65 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %66 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %69 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %68, i32 0, i32 3
  %70 = call i32 @queue_work(i32 %67, i32* %69)
  %71 = load i32, i32* @MSG_BUFFER, align 4
  %72 = load i32, i32* @hdpvr_debug, align 4
  %73 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %74 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %73, i32 0, i32 2
  %75 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 %71, i32 %72, i32* %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i64, i64* @STATUS_STREAMING, align 8
  %77 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %78 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  store i32 0, i32* %2, align 4
  br label %92

79:                                               ; preds = %22
  %80 = call i32 @msleep(i32 250)
  %81 = load i32, i32* @MSG_INFO, align 4
  %82 = load i32, i32* @hdpvr_debug, align 4
  %83 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %84 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %83, i32 0, i32 2
  %85 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %86 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 %81, i32 %82, i32* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EAGAIN, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %79, %27, %18, %11
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.hdpvr_video_info* @get_video_info(%struct.hdpvr_device*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, ...) #1

declare dso_local i32 @kfree(%struct.hdpvr_video_info*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @hdpvr_config_call(%struct.hdpvr_device*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
