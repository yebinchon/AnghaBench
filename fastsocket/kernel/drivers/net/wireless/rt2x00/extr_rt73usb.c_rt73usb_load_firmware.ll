; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_load_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@MAC_CSR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unstable hardware\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@FIRMWARE_IMAGE_BASE = common dso_local global i32 0, align 4
@USB_DEVICE_MODE = common dso_local global i32 0, align 4
@USB_MODE_FIRMWARE = common dso_local global i32 0, align 4
@REGISTER_TIMEOUT_FIRMWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to write Firmware to device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32*, i64)* @rt73usb_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt73usb_load_firmware(%struct.rt2x00_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %23, %3
  %12 = load i32, i32* %8, align 4
  %13 = icmp ult i32 %12, 100
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %16 = load i32, i32* @MAC_CSR0, align 4
  %17 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %15, i32 %16, i64* %10)
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %26

21:                                               ; preds = %14
  %22 = call i32 @msleep(i32 1)
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %8, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %11

26:                                               ; preds = %20, %11
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %31 = call i32 @rt2x00_err(%struct.rt2x00_dev* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %52

34:                                               ; preds = %26
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %36 = load i32, i32* @FIRMWARE_IMAGE_BASE, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @rt2x00usb_register_multiwrite(%struct.rt2x00_dev* %35, i32 %36, i32* %37, i64 %38)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %41 = load i32, i32* @USB_DEVICE_MODE, align 4
  %42 = load i32, i32* @USB_MODE_FIRMWARE, align 4
  %43 = load i32, i32* @REGISTER_TIMEOUT_FIRMWARE, align 4
  %44 = call i32 @rt2x00usb_vendor_request_sw(%struct.rt2x00_dev* %40, i32 %41, i32 0, i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %49 = call i32 @rt2x00_err(%struct.rt2x00_dev* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %47, %29
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @rt2x00usb_register_read(%struct.rt2x00_dev*, i32, i64*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @rt2x00usb_register_multiwrite(%struct.rt2x00_dev*, i32, i32*, i64) #1

declare dso_local i32 @rt2x00usb_vendor_request_sw(%struct.rt2x00_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
