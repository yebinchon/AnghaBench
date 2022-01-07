; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_xpad.c_xpad_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_xpad.c_xpad_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.usb_xpad = type { i64, i32 }

@XTYPE_XBOX360W = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @xpad_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpad_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.usb_xpad*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.usb_xpad* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.usb_xpad* %5, %struct.usb_xpad** %3, align 8
  %6 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %7 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @XTYPE_XBOX360W, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %13 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @usb_kill_urb(i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %18 = call i32 @xpad_stop_output(%struct.usb_xpad* %17)
  ret void
}

declare dso_local %struct.usb_xpad* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @xpad_stop_output(%struct.usb_xpad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
