; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_op_sw_scan_start_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_op_sw_scan_start_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.b43_wl = type { i32, %struct.b43_wldev* }
%struct.b43_wldev = type { i32 }

@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@B43_HF_SKCFPUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @b43_op_sw_scan_start_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_op_sw_scan_start_notifier(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.b43_wl*, align 8
  %4 = alloca %struct.b43_wldev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %5)
  store %struct.b43_wl* %6, %struct.b43_wl** %3, align 8
  %7 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %11 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %10, i32 0, i32 1
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %11, align 8
  store %struct.b43_wldev* %12, %struct.b43_wldev** %4, align 8
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %14 = icmp ne %struct.b43_wldev* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %17 = call i64 @b43_status(%struct.b43_wldev* %16)
  %18 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %23 = call i32 @b43_hf_read(%struct.b43_wldev* %22)
  %24 = load i32, i32* @B43_HF_SKCFPUP, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @b43_hf_write(%struct.b43_wldev* %21, i32 %25)
  br label %27

27:                                               ; preds = %20, %15, %1
  %28 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %29 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  ret void
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
