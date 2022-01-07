; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_usbkbd.c_usb_kbd_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_usbkbd.c_usb_kbd_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.TYPE_3__*, %struct.usb_kbd* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_kbd = type { i64*, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"led urb status %d received\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"usb_submit_urb(leds) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @usb_kbd_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_kbd_led(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_kbd*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %4 = load %struct.urb*, %struct.urb** %2, align 8
  %5 = getelementptr inbounds %struct.urb, %struct.urb* %4, i32 0, i32 2
  %6 = load %struct.usb_kbd*, %struct.usb_kbd** %5, align 8
  store %struct.usb_kbd* %6, %struct.usb_kbd** %3, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dev_warn(i32* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.usb_kbd*, %struct.usb_kbd** %3, align 8
  %22 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.usb_kbd*, %struct.usb_kbd** %3, align 8
  %26 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %52

30:                                               ; preds = %20
  %31 = load %struct.usb_kbd*, %struct.usb_kbd** %3, align 8
  %32 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.usb_kbd*, %struct.usb_kbd** %3, align 8
  %35 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  store i64 %33, i64* %36, align 8
  %37 = load %struct.usb_kbd*, %struct.usb_kbd** %3, align 8
  %38 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.usb_kbd*, %struct.usb_kbd** %3, align 8
  %41 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.usb_kbd*, %struct.usb_kbd** %3, align 8
  %45 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call i64 @usb_submit_urb(%struct.TYPE_4__* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %30
  %51 = call i32 @err_hid(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %29, %50, %30
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @err_hid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
