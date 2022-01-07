; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_xpad.c_xpad_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_xpad.c_xpad_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.usb_xpad = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@XTYPE_XBOX360W = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @xpad_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpad_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.usb_xpad*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %6 = call %struct.usb_xpad* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.usb_xpad* %6, %struct.usb_xpad** %4, align 8
  %7 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %8 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @XTYPE_XBOX360W, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %15 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %18 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %22 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i64 @usb_submit_urb(%struct.TYPE_2__* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %27, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.usb_xpad* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
