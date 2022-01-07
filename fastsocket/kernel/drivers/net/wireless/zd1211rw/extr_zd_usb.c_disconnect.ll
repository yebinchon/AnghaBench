; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.zd_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.zd_usb }
%struct.zd_usb = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.zd_mac*, align 8
  %5 = alloca %struct.zd_usb*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.ieee80211_hw* @zd_intf_to_hw(%struct.usb_interface* %6)
  store %struct.ieee80211_hw* %7, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = icmp eq %struct.ieee80211_hw* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw* %12)
  store %struct.zd_mac* %13, %struct.zd_mac** %4, align 8
  %14 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %15 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.zd_usb* %16, %struct.zd_usb** %5, align 8
  %17 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %18 = call i32 @zd_usb_dev(%struct.zd_usb* %17)
  %19 = call i32 @dev_dbg_f(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %20)
  %22 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %23 = call i32 @zd_usb_disable_tx(%struct.zd_usb* %22)
  %24 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %25 = call i32 @zd_usb_disable_rx(%struct.zd_usb* %24)
  %26 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %27 = call i32 @zd_usb_disable_int(%struct.zd_usb* %26)
  %28 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %29 = call i32 @interface_to_usbdev(%struct.usb_interface* %28)
  %30 = call i32 @usb_reset_device(i32 %29)
  %31 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %32 = call i32 @zd_mac_clear(%struct.zd_mac* %31)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %34 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %33)
  %35 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %36 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 0
  %37 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.ieee80211_hw* @zd_intf_to_hw(%struct.usb_interface*) #1

declare dso_local %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @dev_dbg_f(i32, i8*) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @zd_usb_disable_tx(%struct.zd_usb*) #1

declare dso_local i32 @zd_usb_disable_rx(%struct.zd_usb*) #1

declare dso_local i32 @zd_usb_disable_int(%struct.zd_usb*) #1

declare dso_local i32 @usb_reset_device(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @zd_mac_clear(%struct.zd_mac*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
