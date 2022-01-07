; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-control.c_hdpvr_config_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-control.c_hdpvr_config_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { i32, i32, i32*, i32 }

@CTRL_DEFAULT_INDEX = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"config call request for value 0x%x returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdpvr_config_call(%struct.hdpvr_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hdpvr_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8 56, i8* %8, align 1
  store i8 1, i8* %9, align 1
  %10 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %11 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %15 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %19 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %22 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @usb_sndctrlpipe(i32 %23, i32 0)
  %25 = load i8, i8* %9, align 1
  %26 = load i8, i8* %8, align 1
  %27 = sext i8 %26 to i32
  %28 = or i32 0, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @CTRL_DEFAULT_INDEX, align 4
  %31 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %32 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @usb_control_msg(i32 %20, i32 %24, i8 signext %25, i32 %28, i32 %29, i32 %30, i32* %33, i32 1, i32 10000)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %36 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* @MSG_INFO, align 4
  %39 = load i32, i32* @hdpvr_debug, align 4
  %40 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %41 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %40, i32 0, i32 0
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @v4l2_dbg(i32 %38, i32 %39, i32* %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i32, i32* %7, align 4
  br label %50

49:                                               ; preds = %3
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i8 signext, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
