; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { i32, i32 }
%struct.ieee80211_hw = type { i32 }
%struct.usb_interface = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zd_usb_init(%struct.zd_usb* %0, %struct.ieee80211_hw* %1, %struct.usb_interface* %2) #0 {
  %4 = alloca %struct.zd_usb*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %4, align 8
  store %struct.ieee80211_hw* %1, %struct.ieee80211_hw** %5, align 8
  store %struct.usb_interface* %2, %struct.usb_interface** %6, align 8
  %7 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %8 = call i32 @memset(%struct.zd_usb* %7, i32 0, i32 8)
  %9 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %10 = call i32 @usb_get_intf(%struct.usb_interface* %9)
  %11 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %12 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %14 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = call i32 @usb_set_intfdata(i32 %15, %struct.ieee80211_hw* %16)
  %18 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %19 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %18, i32 0, i32 0
  %20 = call i32 @init_usb_anchor(i32* %19)
  %21 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %22 = call i32 @init_usb_interrupt(%struct.zd_usb* %21)
  %23 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %24 = call i32 @init_usb_tx(%struct.zd_usb* %23)
  %25 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %26 = call i32 @init_usb_rx(%struct.zd_usb* %25)
  ret void
}

declare dso_local i32 @memset(%struct.zd_usb*, i32, i32) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(i32, %struct.ieee80211_hw*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @init_usb_interrupt(%struct.zd_usb*) #1

declare dso_local i32 @init_usb_tx(%struct.zd_usb*) #1

declare dso_local i32 @init_usb_rx(%struct.zd_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
