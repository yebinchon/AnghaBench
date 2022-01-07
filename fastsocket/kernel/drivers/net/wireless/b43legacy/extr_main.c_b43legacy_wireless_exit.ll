; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_wireless_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_wireless_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32 }
%struct.b43legacy_wl = type { %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_device*, %struct.b43legacy_wl*)* @b43legacy_wireless_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_wireless_exit(%struct.ssb_device* %0, %struct.b43legacy_wl* %1) #0 {
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca %struct.b43legacy_wl*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  store %struct.ssb_device* %0, %struct.ssb_device** %3, align 8
  store %struct.b43legacy_wl* %1, %struct.b43legacy_wl** %4, align 8
  %6 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %4, align 8
  %7 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %6, i32 0, i32 0
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_hw* %8, %struct.ieee80211_hw** %5, align 8
  %9 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %10 = call i32 @ssb_set_devtypedata(%struct.ssb_device* %9, i32* null)
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %11)
  ret void
}

declare dso_local i32 @ssb_set_devtypedata(%struct.ssb_device*, i32*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
