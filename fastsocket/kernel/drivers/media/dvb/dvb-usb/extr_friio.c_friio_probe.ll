; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_friio.c_friio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_friio.c_friio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i64 }
%struct.usb_device_id = type { i32 }
%struct.dvb_usb_device = type { i32* }
%struct.usb_host_interface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GL861_ALTSETTING_COUNT = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@FRIIO_BULK_ALTSETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"not alt found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set alt-setting!\0A\00", align 1
@friio_properties = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @friio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @friio_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GL861_ALTSETTING_COUNT, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = load i32, i32* @FRIIO_BULK_ALTSETTING, align 4
  %20 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %18, i32 %19)
  store %struct.usb_host_interface* %20, %struct.usb_host_interface** %7, align 8
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %22 = icmp eq %struct.usb_host_interface* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = call i32 @deb_rc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %59

27:                                               ; preds = %17
  %28 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %29 = call i32 @interface_to_usbdev(%struct.usb_interface* %28)
  %30 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %31 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %35 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_set_interface(i32 %29, i32 %33, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = call i32 @deb_rc(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %59

44:                                               ; preds = %27
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = load i32, i32* @THIS_MODULE, align 4
  %47 = load i32, i32* @adapter_nr, align 4
  %48 = call i32 @dvb_usb_device_init(%struct.usb_interface* %45, i32* @friio_properties, i32 %46, %struct.dvb_usb_device** %6, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @friio_streaming_ctrl(i32* %55, i32 1)
  br label %57

57:                                               ; preds = %51, %44
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %41, %23, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i32 @deb_rc(i8*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dvb_usb_device_init(%struct.usb_interface*, i32*, i32, %struct.dvb_usb_device**, i32) #1

declare dso_local i32 @friio_streaming_ctrl(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
