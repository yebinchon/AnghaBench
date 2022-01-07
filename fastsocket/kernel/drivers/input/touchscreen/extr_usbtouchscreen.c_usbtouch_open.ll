; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_usbtouchscreen.c_usbtouch_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_usbtouchscreen.c_usbtouch_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.usbtouch_usb = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @usbtouch_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtouch_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.usbtouch_usb*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %6 = call %struct.usbtouch_usb* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.usbtouch_usb* %6, %struct.usbtouch_usb** %4, align 8
  %7 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %8 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %11 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %9, i32* %13, align 4
  %14 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %15 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @usb_submit_urb(%struct.TYPE_2__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.usbtouch_usb* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
