; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_alloc_rx_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_alloc_rx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.ar9170 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AR9170_USB_EP_RX = common dso_local global i32 0, align 4
@carl9170_usb_rx_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.ar9170*, i32)* @carl9170_usb_alloc_rx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @carl9170_usb_alloc_rx_urb(%struct.ar9170* %0, i32 %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i8*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %9 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i8* @kmalloc(i32 %11, i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.urb* null, %struct.urb** %3, align 8
  br label %49

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %18)
  store %struct.urb* %19, %struct.urb** %6, align 8
  %20 = load %struct.urb*, %struct.urb** %6, align 8
  %21 = icmp ne %struct.urb* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @kfree(i8* %23)
  store %struct.urb* null, %struct.urb** %3, align 8
  br label %49

25:                                               ; preds = %17
  %26 = load %struct.urb*, %struct.urb** %6, align 8
  %27 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %28 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %31 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AR9170_USB_EP_RX, align 4
  %34 = call i32 @usb_rcvbulkpipe(i32 %32, i32 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %37 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @carl9170_usb_rx_complete, align 4
  %41 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %42 = call i32 @usb_fill_bulk_urb(%struct.urb* %26, i32 %29, i32 %34, i8* %35, i32 %39, i32 %40, %struct.ar9170* %41)
  %43 = load i32, i32* @URB_FREE_BUFFER, align 4
  %44 = load %struct.urb*, %struct.urb** %6, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.urb*, %struct.urb** %6, align 8
  store %struct.urb* %48, %struct.urb** %3, align 8
  br label %49

49:                                               ; preds = %25, %22, %16
  %50 = load %struct.urb*, %struct.urb** %3, align 8
  ret %struct.urb* %50
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.ar9170*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
