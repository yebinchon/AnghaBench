; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-usb.c_iforce_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-usb.c_iforce_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.iforce = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @iforce_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iforce_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.iforce*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.iforce* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.iforce* %6, %struct.iforce** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call i32 @usb_set_intfdata(%struct.usb_interface* %7, i32* null)
  %9 = load %struct.iforce*, %struct.iforce** %3, align 8
  %10 = icmp ne %struct.iforce* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.iforce*, %struct.iforce** %3, align 8
  %13 = getelementptr inbounds %struct.iforce, %struct.iforce* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.iforce*, %struct.iforce** %3, align 8
  %15 = getelementptr inbounds %struct.iforce, %struct.iforce* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @input_unregister_device(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %11
  %21 = load %struct.iforce*, %struct.iforce** %3, align 8
  %22 = call i32 @iforce_delete_device(%struct.iforce* %21)
  %23 = load %struct.iforce*, %struct.iforce** %3, align 8
  %24 = call i32 @kfree(%struct.iforce* %23)
  br label %25

25:                                               ; preds = %20, %11
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

declare dso_local %struct.iforce* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @iforce_delete_device(%struct.iforce*) #1

declare dso_local i32 @kfree(%struct.iforce*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
