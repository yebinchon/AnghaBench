; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.if_usb_card = type { i32, i64 }
%struct.lbs_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LBS_DEB_MAIN = common dso_local global i32 0, align 4
@dev_attr_lbs_flash_boot2 = common dso_local global i32 0, align 4
@dev_attr_lbs_flash_fw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @if_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.if_usb_card*, align 8
  %4 = alloca %struct.lbs_private*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.if_usb_card* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.if_usb_card* %6, %struct.if_usb_card** %3, align 8
  %7 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %8 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.lbs_private*
  store %struct.lbs_private* %10, %struct.lbs_private** %4, align 8
  %11 = load i32, i32* @LBS_DEB_MAIN, align 4
  %12 = call i32 @lbs_deb_enter(i32 %11)
  %13 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @device_remove_file(i32* %16, i32* @dev_attr_lbs_flash_boot2)
  %18 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @device_remove_file(i32* %21, i32* @dev_attr_lbs_flash_fw)
  %23 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %24 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %26 = icmp ne %struct.lbs_private* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %29 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %31 = call i32 @lbs_stop_card(%struct.lbs_private* %30)
  %32 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %33 = call i32 @lbs_remove_card(%struct.lbs_private* %32)
  br label %34

34:                                               ; preds = %27, %1
  %35 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %36 = call i32 @if_usb_free(%struct.if_usb_card* %35)
  %37 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %38 = call i32 @usb_set_intfdata(%struct.usb_interface* %37, i32* null)
  %39 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %40 = call i32 @interface_to_usbdev(%struct.usb_interface* %39)
  %41 = call i32 @usb_put_dev(i32 %40)
  %42 = load i32, i32* @LBS_DEB_MAIN, align 4
  %43 = call i32 @lbs_deb_leave(i32 %42)
  ret void
}

declare dso_local %struct.if_usb_card* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @lbs_stop_card(%struct.lbs_private*) #1

declare dso_local i32 @lbs_remove_card(%struct.lbs_private*) #1

declare dso_local i32 @if_usb_free(%struct.if_usb_card*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
