; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i64 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"DEV Failed to connect in HIGH SPEED mode\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@lme2510_properties = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"DEV registering device driver\00", align 1
@lme2510c_properties = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"DEV lme2510 Error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @lme2510_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lme2510_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %9 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %8)
  store %struct.usb_device* %9, %struct.usb_device** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %11 = call i32 @usb_reset_configuration(%struct.usb_device* %10)
  %12 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_set_interface(%struct.usb_device* %12, i32 %18, i32 1)
  %20 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USB_SPEED_HIGH, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %27 = call i32 @usb_reset_device(%struct.usb_device* %26)
  store i32 %27, i32* %7, align 4
  %28 = call i32 @info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %2
  %32 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %33 = call i32 @lme_firmware_switch(%struct.usb_device* %32, i32 0)
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = load i32, i32* @THIS_MODULE, align 4
  %36 = load i32, i32* @adapter_nr, align 4
  %37 = call i64 @dvb_usb_device_init(%struct.usb_interface* %34, i32* @lme2510_properties, i32 %35, i32* null, i32 %36)
  %38 = icmp eq i64 0, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 @info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %53

41:                                               ; preds = %31
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = load i32, i32* @THIS_MODULE, align 4
  %44 = load i32, i32* @adapter_nr, align 4
  %45 = call i64 @dvb_usb_device_init(%struct.usb_interface* %42, i32* @lme2510c_properties, i32 %43, i32* null, i32 %44)
  %46 = icmp eq i64 0, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 @info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %53

49:                                               ; preds = %41
  %50 = call i32 @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %47, %39, %25
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_reset_configuration(%struct.usb_device*) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_reset_device(%struct.usb_device*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @lme_firmware_switch(%struct.usb_device*, i32) #1

declare dso_local i64 @dvb_usb_device_init(%struct.usb_interface*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
