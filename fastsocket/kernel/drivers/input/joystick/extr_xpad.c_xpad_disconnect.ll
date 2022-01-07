; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_xpad.c_xpad_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_xpad.c_xpad_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_xpad = type { i64, i32, i32, i32, i32, i32, i32 }

@XTYPE_XBOX360W = common dso_local global i64 0, align 8
@XPAD_PKT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @xpad_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpad_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_xpad*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.usb_xpad* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.usb_xpad* %5, %struct.usb_xpad** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %9 = icmp ne %struct.usb_xpad* %8, null
  br i1 %9, label %10, label %55

10:                                               ; preds = %1
  %11 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %12 = call i32 @xpad_led_disconnect(%struct.usb_xpad* %11)
  %13 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %14 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @input_unregister_device(i32 %15)
  %17 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %18 = call i32 @xpad_deinit_output(%struct.usb_xpad* %17)
  %19 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %20 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XTYPE_XBOX360W, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %10
  %25 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %26 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @usb_kill_urb(i32 %27)
  %29 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %30 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @usb_free_urb(i32 %31)
  %33 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %34 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_kill_urb(i32 %35)
  br label %37

37:                                               ; preds = %24, %10
  %38 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %39 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_free_urb(i32 %40)
  %42 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %43 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @XPAD_PKT_LEN, align 4
  %46 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %47 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %50 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @usb_buffer_free(i32 %44, i32 %45, i32 %48, i32 %51)
  %53 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %54 = call i32 @kfree(%struct.usb_xpad* %53)
  br label %55

55:                                               ; preds = %37, %1
  ret void
}

declare dso_local %struct.usb_xpad* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @xpad_led_disconnect(%struct.usb_xpad*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @xpad_deinit_output(%struct.usb_xpad*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_buffer_free(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_xpad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
