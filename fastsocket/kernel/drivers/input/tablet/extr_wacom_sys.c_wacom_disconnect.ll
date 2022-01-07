; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.wacom = type { %struct.wacom*, i32, i32, i32, i32 }

@WACOM_PKGLEN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @wacom_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.wacom*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.wacom* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.wacom* %5, %struct.wacom** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.wacom*, %struct.wacom** %3, align 8
  %9 = getelementptr inbounds %struct.wacom, %struct.wacom* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @usb_kill_urb(i32 %10)
  %12 = load %struct.wacom*, %struct.wacom** %3, align 8
  %13 = getelementptr inbounds %struct.wacom, %struct.wacom* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @input_unregister_device(i32 %14)
  %16 = load %struct.wacom*, %struct.wacom** %3, align 8
  %17 = call i32 @wacom_destroy_leds(%struct.wacom* %16)
  %18 = load %struct.wacom*, %struct.wacom** %3, align 8
  %19 = getelementptr inbounds %struct.wacom, %struct.wacom* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @usb_free_urb(i32 %20)
  %22 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %23 = call i32 @interface_to_usbdev(%struct.usb_interface* %22)
  %24 = load i32, i32* @WACOM_PKGLEN_MAX, align 4
  %25 = load %struct.wacom*, %struct.wacom** %3, align 8
  %26 = getelementptr inbounds %struct.wacom, %struct.wacom* %25, i32 0, i32 0
  %27 = load %struct.wacom*, %struct.wacom** %26, align 8
  %28 = getelementptr inbounds %struct.wacom, %struct.wacom* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wacom*, %struct.wacom** %3, align 8
  %31 = getelementptr inbounds %struct.wacom, %struct.wacom* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usb_buffer_free(i32 %23, i32 %24, i32 %29, i32 %32)
  %34 = load %struct.wacom*, %struct.wacom** %3, align 8
  %35 = getelementptr inbounds %struct.wacom, %struct.wacom* %34, i32 0, i32 0
  %36 = load %struct.wacom*, %struct.wacom** %35, align 8
  %37 = call i32 @wacom_remove_shared_data(%struct.wacom* %36)
  %38 = load %struct.wacom*, %struct.wacom** %3, align 8
  %39 = getelementptr inbounds %struct.wacom, %struct.wacom* %38, i32 0, i32 0
  %40 = load %struct.wacom*, %struct.wacom** %39, align 8
  %41 = call i32 @kfree(%struct.wacom* %40)
  %42 = load %struct.wacom*, %struct.wacom** %3, align 8
  %43 = call i32 @kfree(%struct.wacom* %42)
  ret void
}

declare dso_local %struct.wacom* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @wacom_destroy_leds(%struct.wacom*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_buffer_free(i32, i32, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @wacom_remove_shared_data(%struct.wacom*) #1

declare dso_local i32 @kfree(%struct.wacom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
