; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usbnet = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@PM_EVENT_AUTO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EVENT_DEV_ASLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbnet_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usbnet*, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %9 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.usbnet* %9, %struct.usbnet** %6, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %60, label %15

15:                                               ; preds = %2
  %16 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PM_EVENT_AUTO, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %33 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_irq(i32* %34)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %61

38:                                               ; preds = %25, %15
  %39 = load i32, i32* @EVENT_DEV_ASLEEP, align 4
  %40 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %41 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %40, i32 0, i32 2
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %44 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_irq(i32* %45)
  br label %47

47:                                               ; preds = %38
  %48 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %49 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @netif_device_detach(i32 %50)
  %52 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %53 = call i32 @usbnet_terminate_urbs(%struct.usbnet* %52)
  %54 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %55 = call i32 @__usbnet_status_stop_force(%struct.usbnet* %54)
  %56 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %57 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @netif_device_attach(i32 %58)
  br label %60

60:                                               ; preds = %47, %2
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @usbnet_terminate_urbs(%struct.usbnet*) #1

declare dso_local i32 @__usbnet_status_stop_force(%struct.usbnet*) #1

declare dso_local i32 @netif_device_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
