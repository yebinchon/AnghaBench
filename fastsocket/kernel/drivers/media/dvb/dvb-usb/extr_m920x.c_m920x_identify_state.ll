; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_m920x.c_m920x_identify_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_m920x.c_m920x_identify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.dvb_usb_device_properties = type { i32 }
%struct.dvb_usb_device_description = type { i32 }
%struct.usb_host_interface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_description**, i32*)* @m920x_identify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m920x_identify_state(%struct.usb_device* %0, %struct.dvb_usb_device_properties* %1, %struct.dvb_usb_device_description** %2, i32* %3) #0 {
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.dvb_usb_device_properties*, align 8
  %7 = alloca %struct.dvb_usb_device_description**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.usb_host_interface*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.dvb_usb_device_properties* %1, %struct.dvb_usb_device_properties** %6, align 8
  store %struct.dvb_usb_device_description** %2, %struct.dvb_usb_device_description*** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %11 = call i32 @usb_ifnum_to_if(%struct.usb_device* %10, i32 0)
  %12 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(i32 %11, i32 1)
  store %struct.usb_host_interface* %12, %struct.usb_host_interface** %9, align 8
  %13 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %14 = icmp eq %struct.usb_host_interface* %13, null
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  %17 = load i32*, i32** %8, align 8
  store i32 %16, i32* %17, align 4
  ret i32 0
}

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(i32, i32) #1

declare dso_local i32 @usb_ifnum_to_if(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
