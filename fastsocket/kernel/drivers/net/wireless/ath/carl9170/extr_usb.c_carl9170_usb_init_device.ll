; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_init_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*)* @carl9170_usb_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_usb_init_device(%struct.ar9170* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  %5 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %6 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %5, i32 0, i32 0
  store i32 -2, i32* %6, align 4
  %7 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %8 = call i32 @carl9170_usb_send_rx_irq_urb(%struct.ar9170* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %14 = call i32 @carl9170_usb_init_rx_bulk_urbs(%struct.ar9170* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %40

18:                                               ; preds = %12
  %19 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %20 = call i32 @carl9170_usb_open(%struct.ar9170* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %40

24:                                               ; preds = %18
  %25 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %26 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %29 = call i32 @carl9170_usb_load_firmware(%struct.ar9170* %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %31 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %37

36:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %45

37:                                               ; preds = %35
  %38 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %39 = call i32 @carl9170_usb_stop(%struct.ar9170* %38)
  br label %40

40:                                               ; preds = %37, %23, %17
  %41 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %42 = call i32 @carl9170_usb_cancel_urbs(%struct.ar9170* %41)
  br label %43

43:                                               ; preds = %40, %11
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %36
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @carl9170_usb_send_rx_irq_urb(%struct.ar9170*) #1

declare dso_local i32 @carl9170_usb_init_rx_bulk_urbs(%struct.ar9170*) #1

declare dso_local i32 @carl9170_usb_open(%struct.ar9170*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @carl9170_usb_load_firmware(%struct.ar9170*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @carl9170_usb_stop(%struct.ar9170*) #1

declare dso_local i32 @carl9170_usb_cancel_urbs(%struct.ar9170*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
