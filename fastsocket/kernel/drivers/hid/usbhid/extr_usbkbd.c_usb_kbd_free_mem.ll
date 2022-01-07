; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_usbkbd.c_usb_kbd_free_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_usbkbd.c_usb_kbd_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_kbd = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_kbd*)* @usb_kbd_free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_kbd_free_mem(%struct.usb_device* %0, %struct.usb_kbd* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_kbd*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb_kbd* %1, %struct.usb_kbd** %4, align 8
  %5 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %6 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @usb_free_urb(i32 %7)
  %9 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %10 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @usb_free_urb(i32 %11)
  %13 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %14 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %15 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %18 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @usb_buffer_free(%struct.usb_device* %13, i32 8, i32 %16, i32 %19)
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %23 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %26 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_buffer_free(%struct.usb_device* %21, i32 4, i32 %24, i32 %27)
  %29 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %30 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %31 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %34 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_buffer_free(%struct.usb_device* %29, i32 1, i32 %32, i32 %35)
  ret void
}

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_buffer_free(%struct.usb_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
