; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_link_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@EVENT_LINK_RESET = common dso_local global i32 0, align 4
@EVENT_LINK_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbnet_link_change(%struct.usbnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netif_carrier_on(i32 %15)
  br label %22

17:                                               ; preds = %9, %3
  %18 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netif_carrier_off(i32 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %30 = load i32, i32* @EVENT_LINK_RESET, align 4
  %31 = call i32 @usbnet_defer_kevent(%struct.usbnet* %29, i32 %30)
  br label %36

32:                                               ; preds = %25, %22
  %33 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %34 = load i32, i32* @EVENT_LINK_CHANGE, align 4
  %35 = call i32 @usbnet_defer_kevent(%struct.usbnet* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  ret void
}

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @usbnet_defer_kevent(%struct.usbnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
