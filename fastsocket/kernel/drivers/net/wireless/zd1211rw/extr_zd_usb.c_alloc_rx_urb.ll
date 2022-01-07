; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_alloc_rx_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_alloc_rx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32 }
%struct.zd_usb = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_MAX_RX_SIZE = common dso_local global i32 0, align 4
@EP_DATA_IN = common dso_local global i32 0, align 4
@rx_urb_complete = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.zd_usb*)* @alloc_rx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @alloc_rx_urb(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.zd_usb*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i8*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %3, align 8
  %7 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %8 = call %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb* %7)
  store %struct.usb_device* %8, %struct.usb_device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %9)
  store %struct.urb* %10, %struct.urb** %5, align 8
  %11 = load %struct.urb*, %struct.urb** %5, align 8
  %12 = icmp ne %struct.urb* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.urb* null, %struct.urb** %2, align 8
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = load i32, i32* @USB_MAX_RX_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load %struct.urb*, %struct.urb** %5, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 1
  %20 = call i8* @usb_buffer_alloc(%struct.usb_device* %15, i32 %16, i32 %17, i32* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load %struct.urb*, %struct.urb** %5, align 8
  %25 = call i32 @usb_free_urb(%struct.urb* %24)
  store %struct.urb* null, %struct.urb** %2, align 8
  br label %43

26:                                               ; preds = %14
  %27 = load %struct.urb*, %struct.urb** %5, align 8
  %28 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %29 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %30 = load i32, i32* @EP_DATA_IN, align 4
  %31 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %29, i32 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @USB_MAX_RX_SIZE, align 4
  %34 = load i32, i32* @rx_urb_complete, align 4
  %35 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %36 = call i32 @usb_fill_bulk_urb(%struct.urb* %27, %struct.usb_device* %28, i32 %31, i8* %32, i32 %33, i32 %34, %struct.zd_usb* %35)
  %37 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %38 = load %struct.urb*, %struct.urb** %5, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.urb*, %struct.urb** %5, align 8
  store %struct.urb* %42, %struct.urb** %2, align 8
  br label %43

43:                                               ; preds = %26, %23, %13
  %44 = load %struct.urb*, %struct.urb** %2, align 8
  ret %struct.urb* %44
}

declare dso_local %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @usb_buffer_alloc(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, i8*, i32, i32, %struct.zd_usb*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
