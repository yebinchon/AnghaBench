; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_op_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_op_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.b43legacy_wl = type { i32, i32, i32, %struct.b43legacy_wldev* }
%struct.b43legacy_wldev = type { i32 }

@B43legacy_STAT_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @b43legacy_op_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_op_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.b43legacy_wl*, align 8
  %4 = alloca %struct.b43legacy_wldev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw* %5)
  store %struct.b43legacy_wl* %6, %struct.b43legacy_wl** %3, align 8
  %7 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %8 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %7, i32 0, i32 3
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %8, align 8
  store %struct.b43legacy_wldev* %9, %struct.b43legacy_wldev** %4, align 8
  %10 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %11 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %10, i32 0, i32 2
  %12 = call i32 @cancel_work_sync(i32* %11)
  %13 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %14 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %17 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %16)
  %18 = load i64, i64* @B43legacy_STAT_STARTED, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %22 = call i32 @b43legacy_wireless_core_stop(%struct.b43legacy_wldev* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %25 = call i32 @b43legacy_wireless_core_exit(%struct.b43legacy_wldev* %24)
  %26 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %27 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %29 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  ret void
}

declare dso_local %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_wireless_core_stop(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_wireless_core_exit(%struct.b43legacy_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
