; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-control.c_hdpvr_set_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-control.c_hdpvr_set_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { i32, i32*, i32, i32, i32 }

@HDPVR_FLAG_AC3_CAP = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AAC = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AC3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid audio codec %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CTRL_AUDIO_INPUT_VALUE = common dso_local global i32 0, align 4
@CTRL_DEFAULT_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdpvr_set_audio(%struct.hdpvr_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hdpvr_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %9 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @HDPVR_FLAG_AC3_CAP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %76

14:                                               ; preds = %3
  %15 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %16 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %19 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @memset(i32* %20, i32 0, i32 2)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %24 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AAC, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %14
  %31 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %32 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 0, i32* %34, align 4
  br label %55

35:                                               ; preds = %14
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %41 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 1, i32* %43, align 4
  br label %54

44:                                               ; preds = %35
  %45 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %46 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %45, i32 0, i32 2
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %49 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %48, i32 0, i32 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @v4l2_err(i32* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %82

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %30
  %56 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %57 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %60 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @usb_sndctrlpipe(i32 %61, i32 0)
  %63 = load i32, i32* @CTRL_AUDIO_INPUT_VALUE, align 4
  %64 = load i32, i32* @CTRL_DEFAULT_INDEX, align 4
  %65 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %66 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @usb_control_msg(i32 %58, i32 %62, i32 1, i32 56, i32 %63, i32 %64, i32* %67, i32 2, i32 1000)
  store i32 %68, i32* %7, align 4
  %69 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %70 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %69, i32 0, i32 2
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %74, %55
  br label %81

76:                                               ; preds = %3
  %77 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %78 = load i32, i32* @CTRL_AUDIO_INPUT_VALUE, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %77, i32 %78, i32 %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %76, %75
  br label %82

82:                                               ; preds = %81, %44
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @hdpvr_config_call(%struct.hdpvr_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
