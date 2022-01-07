; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_op_update_tkip_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_op_update_tkip_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_sta = type { i32* }
%struct.b43_wl = type { %struct.b43_wldev*, i32 }
%struct.b43_wldev = type { i32 }

@modparam_hwtkip = common dso_local global i32 0, align 4
@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_key_conf*, %struct.ieee80211_sta*, i32, i32*)* @b43_op_update_tkip_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_op_update_tkip_key(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_key_conf* %2, %struct.ieee80211_sta* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.b43_wl*, align 8
  %14 = alloca %struct.b43_wldev*, align 8
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %17 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %16)
  store %struct.b43_wl* %17, %struct.b43_wl** %13, align 8
  %18 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %19 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* @modparam_hwtkip, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @B43_WARN_ON(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  br label %72

28:                                               ; preds = %6
  %29 = load %struct.b43_wl*, %struct.b43_wl** %13, align 8
  %30 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %29, i32 0, i32 1
  %31 = call i32 @mutex_is_locked(i32* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @B43_WARN_ON(i32 %34)
  %36 = load %struct.b43_wl*, %struct.b43_wl** %13, align 8
  %37 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %36, i32 0, i32 0
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %37, align 8
  store %struct.b43_wldev* %38, %struct.b43_wldev** %14, align 8
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %14, align 8
  %40 = icmp ne %struct.b43_wldev* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %14, align 8
  %43 = call i64 @b43_status(%struct.b43_wldev* %42)
  %44 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %45 = icmp slt i64 %43, %44
  br label %46

46:                                               ; preds = %41, %28
  %47 = phi i1 [ true, %28 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @B43_WARN_ON(i32 %48)
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %14, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @keymac_write(%struct.b43_wldev* %50, i32 %51, i32* null)
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %14, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @rx_tkip_phase1_write(%struct.b43_wldev* %53, i32 %54, i32 %55, i32* %56)
  %58 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %59 = icmp ne %struct.ieee80211_sta* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @WARN_ON(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  br label %72

65:                                               ; preds = %46
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %14, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @keymac_write(%struct.b43_wldev* %66, i32 %67, i32* %70)
  br label %72

72:                                               ; preds = %65, %64, %27
  ret void
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @keymac_write(%struct.b43_wldev*, i32, i32*) #1

declare dso_local i32 @rx_tkip_phase1_write(%struct.b43_wldev*, i32, i32, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
