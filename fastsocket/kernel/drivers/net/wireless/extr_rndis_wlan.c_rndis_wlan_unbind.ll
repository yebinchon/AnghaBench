; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_wlan_unbind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_wlan_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_interface = type { i32 }
%struct.rndis_wlan_private = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.usb_interface*)* @rndis_wlan_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_wlan_unbind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.rndis_wlan_private*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %6 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %7 = call %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet* %6)
  store %struct.rndis_wlan_private* %7, %struct.rndis_wlan_private** %5, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %9 = call i32 @disassociate(%struct.usbnet* %8, i32 0)
  %10 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %11 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %10, i32 0, i32 4
  %12 = call i32 @cancel_delayed_work_sync(i32* %11)
  %13 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %14 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %13, i32 0, i32 3
  %15 = call i32 @cancel_delayed_work_sync(i32* %14)
  %16 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %17 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %16, i32 0, i32 2
  %18 = call i32 @cancel_work_sync(i32* %17)
  %19 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %20 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @flush_workqueue(i32 %21)
  %23 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %24 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @destroy_workqueue(i32 %25)
  %27 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %28 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %29 = call i32 @rndis_unbind(%struct.usbnet* %27, %struct.usb_interface* %28)
  %30 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %31 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wiphy_unregister(i32 %33)
  %35 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %36 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wiphy_free(i32 %38)
  ret void
}

declare dso_local %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet*) #1

declare dso_local i32 @disassociate(%struct.usbnet*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @rndis_unbind(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i32 @wiphy_unregister(i32) #1

declare dso_local i32 @wiphy_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
