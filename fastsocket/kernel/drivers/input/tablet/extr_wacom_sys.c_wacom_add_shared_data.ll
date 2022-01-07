; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_add_shared_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_add_shared_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i32* }
%struct.usb_device = type { i32 }
%struct.wacom_usbdev_data = type { i32, i32, %struct.usb_device*, i32 }

@wacom_udev_list_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wacom_udev_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, %struct.usb_device*)* @wacom_add_shared_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_add_shared_data(%struct.wacom_wac* %0, %struct.usb_device* %1) #0 {
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.wacom_usbdev_data*, align 8
  %6 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  store %struct.usb_device* %1, %struct.usb_device** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @mutex_lock(i32* @wacom_udev_list_lock)
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = call %struct.wacom_usbdev_data* @wacom_get_usbdev_data(%struct.usb_device* %8)
  store %struct.wacom_usbdev_data* %9, %struct.wacom_usbdev_data** %5, align 8
  %10 = load %struct.wacom_usbdev_data*, %struct.wacom_usbdev_data** %5, align 8
  %11 = icmp ne %struct.wacom_usbdev_data* %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.wacom_usbdev_data* @kzalloc(i32 24, i32 %13)
  store %struct.wacom_usbdev_data* %14, %struct.wacom_usbdev_data** %5, align 8
  %15 = load %struct.wacom_usbdev_data*, %struct.wacom_usbdev_data** %5, align 8
  %16 = icmp ne %struct.wacom_usbdev_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %35

20:                                               ; preds = %12
  %21 = load %struct.wacom_usbdev_data*, %struct.wacom_usbdev_data** %5, align 8
  %22 = getelementptr inbounds %struct.wacom_usbdev_data, %struct.wacom_usbdev_data* %21, i32 0, i32 3
  %23 = call i32 @kref_init(i32* %22)
  %24 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %25 = load %struct.wacom_usbdev_data*, %struct.wacom_usbdev_data** %5, align 8
  %26 = getelementptr inbounds %struct.wacom_usbdev_data, %struct.wacom_usbdev_data* %25, i32 0, i32 2
  store %struct.usb_device* %24, %struct.usb_device** %26, align 8
  %27 = load %struct.wacom_usbdev_data*, %struct.wacom_usbdev_data** %5, align 8
  %28 = getelementptr inbounds %struct.wacom_usbdev_data, %struct.wacom_usbdev_data* %27, i32 0, i32 1
  %29 = call i32 @list_add_tail(i32* %28, i32* @wacom_udev_list)
  br label %30

30:                                               ; preds = %20, %2
  %31 = load %struct.wacom_usbdev_data*, %struct.wacom_usbdev_data** %5, align 8
  %32 = getelementptr inbounds %struct.wacom_usbdev_data, %struct.wacom_usbdev_data* %31, i32 0, i32 0
  %33 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %34 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  br label %35

35:                                               ; preds = %30, %17
  %36 = call i32 @mutex_unlock(i32* @wacom_udev_list_lock)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wacom_usbdev_data* @wacom_get_usbdev_data(%struct.usb_device*) #1

declare dso_local %struct.wacom_usbdev_data* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
