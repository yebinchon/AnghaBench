; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_aiptek.c_aiptek_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_aiptek.c_aiptek_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.aiptek = type { i32, i32, i32, i32 }

@aiptek_attribute_group = common dso_local global i32 0, align 4
@AIPTEK_PACKET_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @aiptek_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aiptek_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.aiptek*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.aiptek* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.aiptek* %5, %struct.aiptek** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %9 = icmp ne %struct.aiptek* %8, null
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %12 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @usb_kill_urb(i32 %13)
  %15 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %16 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @input_unregister_device(i32 %17)
  %19 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @sysfs_remove_group(i32* %21, i32* @aiptek_attribute_group)
  %23 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %24 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usb_free_urb(i32 %25)
  %27 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %28 = call i32 @interface_to_usbdev(%struct.usb_interface* %27)
  %29 = load i32, i32* @AIPTEK_PACKET_LENGTH, align 4
  %30 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %31 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %34 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_buffer_free(i32 %28, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %38 = call i32 @kfree(%struct.aiptek* %37)
  br label %39

39:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.aiptek* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_buffer_free(i32, i32, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @kfree(%struct.aiptek*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
