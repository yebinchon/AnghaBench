; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.dvb_usb_device = type { %struct.TYPE_4__, %struct.dib0700_state* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dib0700_state = type { i32, i8* }

@dib0700_device_count = common dso_local global i32 0, align 4
@dib0700_devices = common dso_local global i32* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Firmware version: %x, %d, 0x%x, %d\0A\00", align 1
@nb_packet_buffer_size = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @dib0700_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0700_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca %struct.dib0700_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %64, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @dib0700_device_count, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %13
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = load i32*, i32** @dib0700_devices, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* @THIS_MODULE, align 4
  %24 = load i32, i32* @adapter_nr, align 4
  %25 = call i64 @dvb_usb_device_init(%struct.usb_interface* %18, i32* %22, i32 %23, %struct.dvb_usb_device** %7, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %17
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %28, i32 0, i32 1
  %30 = load %struct.dib0700_state*, %struct.dib0700_state** %29, align 8
  store %struct.dib0700_state* %30, %struct.dib0700_state** %8, align 8
  %31 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %32 = call i32 @dib0700_get_version(%struct.dvb_usb_device* %31, i8** %9, i8** %10, i8** %11, i8** %12)
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @deb_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34, i8* %35, i8* %36)
  %38 = load i8*, i8** %11, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %41 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* @nb_packet_buffer_size, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %45 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %47 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 66048
  br i1 %49, label %50, label %55

50:                                               ; preds = %27
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %60

55:                                               ; preds = %27
  %56 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %57 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %62 = call i32 @dib0700_rc_setup(%struct.dvb_usb_device* %61)
  store i32 0, i32* %3, align 4
  br label %70

63:                                               ; preds = %17
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %13

67:                                               ; preds = %13
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @dvb_usb_device_init(%struct.usb_interface*, i32*, i32, %struct.dvb_usb_device**, i32) #1

declare dso_local i32 @dib0700_get_version(%struct.dvb_usb_device*, i8**, i8**, i8**, i8**) #1

declare dso_local i32 @deb_info(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @dib0700_rc_setup(%struct.dvb_usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
