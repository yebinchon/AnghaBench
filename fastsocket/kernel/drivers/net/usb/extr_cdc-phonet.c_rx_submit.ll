; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc-phonet.c_rx_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc-phonet.c_rx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbpn_dev = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.urb = type { i64 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@rx_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"RX submit error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbpn_dev*, %struct.urb*, i32)* @rx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_submit(%struct.usbpn_dev* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbpn_dev*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.usbpn_dev* %0, %struct.usbpn_dev** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usbpn_dev*, %struct.usbpn_dev** %5, align 8
  %12 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.page* @__netdev_alloc_page(%struct.net_device* %14, i32 %15)
  store %struct.page* %16, %struct.page** %9, align 8
  %17 = load %struct.page*, %struct.page** %9, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %54

22:                                               ; preds = %3
  %23 = load %struct.urb*, %struct.urb** %6, align 8
  %24 = load %struct.usbpn_dev*, %struct.usbpn_dev** %5, align 8
  %25 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.usbpn_dev*, %struct.usbpn_dev** %5, align 8
  %28 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.page*, %struct.page** %9, align 8
  %31 = call i32 @page_address(%struct.page* %30)
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load i32, i32* @rx_complete, align 4
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = call i32 @usb_fill_bulk_urb(%struct.urb* %23, i32 %26, i32 %29, i32 %31, i32 %32, i32 %33, %struct.net_device* %34)
  %36 = load %struct.urb*, %struct.urb** %6, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @usb_submit_urb(%struct.urb* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %22
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @dev_dbg(i32* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %8, align 8
  %50 = load %struct.page*, %struct.page** %9, align 8
  %51 = call i32 @netdev_free_page(%struct.net_device* %49, %struct.page* %50)
  br label %52

52:                                               ; preds = %44, %22
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.page* @__netdev_alloc_page(%struct.net_device*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @netdev_free_page(%struct.net_device*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
