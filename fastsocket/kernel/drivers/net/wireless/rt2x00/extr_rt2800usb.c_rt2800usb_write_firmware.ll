; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_write_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_write_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RT2860 = common dso_local global i32 0, align 4
@RT2872 = common dso_local global i32 0, align 4
@RT3070 = common dso_local global i32 0, align 4
@FIRMWARE_IMAGE_BASE = common dso_local global i32 0, align 4
@H2M_MAILBOX_CID = common dso_local global i32 0, align 4
@H2M_MAILBOX_STATUS = common dso_local global i32 0, align 4
@USB_DEVICE_MODE = common dso_local global i32 0, align 4
@USB_MODE_FIRMWARE = common dso_local global i32 0, align 4
@REGISTER_TIMEOUT_FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to write Firmware to device\0A\00", align 1
@H2M_MAILBOX_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32*, i64)* @rt2800usb_write_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800usb_write_firmware(%struct.rt2x00_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %12 = load i32, i32* @RT2860, align 4
  %13 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %17 = load i32, i32* @RT2872, align 4
  %18 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %22 = load i32, i32* @RT3070, align 4
  %23 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15, %3
  store i32 0, i32* %9, align 4
  store i32 4096, i32* %10, align 4
  br label %27

26:                                               ; preds = %20
  store i32 4096, i32* %9, align 4
  store i32 4096, i32* %10, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %29 = load i32, i32* @FIRMWARE_IMAGE_BASE, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @rt2x00usb_register_multiwrite(%struct.rt2x00_dev* %28, i32 %29, i32* %33, i32 %34)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %37 = load i32, i32* @H2M_MAILBOX_CID, align 4
  %38 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %36, i32 %37, i32 -1)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %40 = load i32, i32* @H2M_MAILBOX_STATUS, align 4
  %41 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %39, i32 %40, i32 -1)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %43 = load i32, i32* @USB_DEVICE_MODE, align 4
  %44 = load i32, i32* @USB_MODE_FIRMWARE, align 4
  %45 = load i32, i32* @REGISTER_TIMEOUT_FIRMWARE, align 4
  %46 = call i32 @rt2x00usb_vendor_request_sw(%struct.rt2x00_dev* %42, i32 %43, i32 0, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %51 = call i32 @rt2x00_err(%struct.rt2x00_dev* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %58

53:                                               ; preds = %27
  %54 = call i32 @msleep(i32 10)
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %56 = load i32, i32* @H2M_MAILBOX_CSR, align 4
  %57 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %55, i32 %56, i32 0)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00usb_register_multiwrite(%struct.rt2x00_dev*, i32, i32*, i32) #1

declare dso_local i32 @rt2x00usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00usb_vendor_request_sw(%struct.rt2x00_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
