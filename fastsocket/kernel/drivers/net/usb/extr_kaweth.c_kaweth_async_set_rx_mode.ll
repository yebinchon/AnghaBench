; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_async_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_async_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaweth_device = type { i64, i32, i32 }

@KAWETH_COMMAND_SET_PACKET_FILTER = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@KAWETH_CONTROL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to set Rx mode: %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Set Rx mode to %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kaweth_device*)* @kaweth_async_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kaweth_async_set_rx_mode(%struct.kaweth_device* %0) #0 {
  %2 = alloca %struct.kaweth_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.kaweth_device* %0, %struct.kaweth_device** %2, align 8
  %5 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %6 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %9 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %43

13:                                               ; preds = %1
  %14 = call i64 (...) @in_interrupt()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %43

17:                                               ; preds = %13
  %18 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %19 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %20 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_sndctrlpipe(i32 %21, i32 0)
  %23 = load i32, i32* @KAWETH_COMMAND_SET_PACKET_FILTER, align 4
  %24 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %25 = load i32, i32* @USB_DIR_OUT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %28 = or i32 %26, %27
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %31 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %30, i32 0, i32 1
  %32 = bitcast i32* %31 to i8*
  %33 = load i32, i32* @KAWETH_CONTROL_TIMEOUT, align 4
  %34 = call i32 @kaweth_control(%struct.kaweth_device* %18, i32 %22, i32 %23, i32 %28, i64 %29, i32 0, i8* %32, i32 0, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %43

40:                                               ; preds = %17
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %12, %16, %40, %37
  ret void
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @kaweth_control(%struct.kaweth_device*, i32, i32, i32, i64, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @dbg(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
