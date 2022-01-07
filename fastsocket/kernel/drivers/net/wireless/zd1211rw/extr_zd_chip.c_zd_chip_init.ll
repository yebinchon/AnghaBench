; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_chip_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32, i32, i32 }
%struct.ieee80211_hw = type { i32 }
%struct.usb_interface = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zd_chip_init(%struct.zd_chip* %0, %struct.ieee80211_hw* %1, %struct.usb_interface* %2) #0 {
  %4 = alloca %struct.zd_chip*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  store %struct.zd_chip* %0, %struct.zd_chip** %4, align 8
  store %struct.ieee80211_hw* %1, %struct.ieee80211_hw** %5, align 8
  store %struct.usb_interface* %2, %struct.usb_interface** %6, align 8
  %7 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %8 = call i32 @memset(%struct.zd_chip* %7, i32 0, i32 12)
  %9 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %10 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %9, i32 0, i32 2
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %13 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %12, i32 0, i32 1
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %16 = call i32 @zd_usb_init(i32* %13, %struct.ieee80211_hw* %14, %struct.usb_interface* %15)
  %17 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %18 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %17, i32 0, i32 0
  %19 = call i32 @zd_rf_init(i32* %18)
  ret void
}

declare dso_local i32 @memset(%struct.zd_chip*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @zd_usb_init(i32*, %struct.ieee80211_hw*, %struct.usb_interface*) #1

declare dso_local i32 @zd_rf_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
