; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-control.c_get_video_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-control.c_get_video_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_video_info = type { i32, i32, i32 }
%struct.hdpvr_device = type { i32*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hdpvr_video_info* @get_video_info(%struct.hdpvr_device* %0) #0 {
  %2 = alloca %struct.hdpvr_device*, align 8
  %3 = alloca %struct.hdpvr_video_info*, align 8
  %4 = alloca i32, align 4
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %2, align 8
  store %struct.hdpvr_video_info* null, %struct.hdpvr_video_info** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.hdpvr_video_info* @kzalloc(i32 12, i32 %5)
  store %struct.hdpvr_video_info* %6, %struct.hdpvr_video_info** %3, align 8
  %7 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %3, align 8
  %8 = icmp ne %struct.hdpvr_video_info* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %11 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %10, i32 0, i32 2
  %12 = call i32 @v4l2_err(i32* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %88

13:                                               ; preds = %1
  %14 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %15 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %18 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %21 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @usb_rcvctrlpipe(i32 %22, i32 0)
  %24 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %25 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @usb_control_msg(i32 %19, i32 %23, i32 129, i32 184, i32 5120, i32 3, i32* %26, i32 5, i32 1000)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %66

30:                                               ; preds = %13
  %31 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %32 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %38 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %36, %41
  %43 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %3, align 8
  %44 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %46 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %52 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %50, %55
  %57 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %3, align 8
  %58 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %60 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %3, align 8
  %65 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %30, %13
  %67 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %68 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %3, align 8
  %71 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %3, align 8
  %76 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %3, align 8
  %81 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79, %74, %66
  %85 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %3, align 8
  %86 = call i32 @kfree(%struct.hdpvr_video_info* %85)
  store %struct.hdpvr_video_info* null, %struct.hdpvr_video_info** %3, align 8
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %9
  %89 = load %struct.hdpvr_video_info*, %struct.hdpvr_video_info** %3, align 8
  ret %struct.hdpvr_video_info* %89
}

declare dso_local %struct.hdpvr_video_info* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.hdpvr_video_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
