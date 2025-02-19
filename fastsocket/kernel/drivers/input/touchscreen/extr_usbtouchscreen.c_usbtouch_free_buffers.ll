; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_usbtouchscreen.c_usbtouch_free_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_usbtouchscreen.c_usbtouch_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usbtouch_usb = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usbtouch_usb*)* @usbtouch_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbtouch_free_buffers(%struct.usb_device* %0, %struct.usbtouch_usb* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usbtouch_usb*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usbtouch_usb* %1, %struct.usbtouch_usb** %4, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %6 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %7 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %12 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %15 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb_buffer_free(%struct.usb_device* %5, i32 %10, i32 %13, i32 %16)
  %18 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %19 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @kfree(i32 %20)
  ret void
}

declare dso_local i32 @usb_buffer_free(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
