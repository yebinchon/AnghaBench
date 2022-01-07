; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_identify_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_identify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.dvb_usb_device_properties = type { i32 }
%struct.dvb_usb_device_description = type { i32 }

@REQUEST_GET_VERSION = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"FW GET_VERSION length: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"cold: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0700_identify_state(%struct.usb_device* %0, %struct.dvb_usb_device_properties* %1, %struct.dvb_usb_device_description** %2, i32* %3) #0 {
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.dvb_usb_device_properties*, align 8
  %7 = alloca %struct.dvb_usb_device_description**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [16 x i32], align 16
  %10 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.dvb_usb_device_properties* %1, %struct.dvb_usb_device_properties** %6, align 8
  store %struct.dvb_usb_device_description** %2, %struct.dvb_usb_device_description*** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %13 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %12, i32 0)
  %14 = load i32, i32* @REQUEST_GET_VERSION, align 4
  %15 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %16 = load i32, i32* @USB_DIR_IN, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %19 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %20 = call i64 @usb_control_msg(%struct.usb_device* %11, i32 %13, i32 %14, i32 %17, i32 0, i32 0, i32* %18, i32 16, i32 %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @deb_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* %10, align 8
  %25 = icmp sle i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @deb_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  ret i32 0
}

declare dso_local i64 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @deb_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
