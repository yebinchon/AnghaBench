; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_op_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_op_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.b43legacy_wl = type { i32, i32, i32, i32, i32, i64, i32, i32, %struct.b43legacy_wldev* }
%struct.b43legacy_wldev = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@B43legacy_STAT_INITIALIZED = common dso_local global i64 0, align 8
@B43legacy_STAT_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @b43legacy_op_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_op_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.b43legacy_wl*, align 8
  %4 = alloca %struct.b43legacy_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw* %7)
  store %struct.b43legacy_wl* %8, %struct.b43legacy_wl** %3, align 8
  %9 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %9, i32 0, i32 8
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  store %struct.b43legacy_wldev* %11, %struct.b43legacy_wldev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %13 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = call i32 @memset(i32 %14, i32 0, i32 %15)
  %17 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %18 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = call i32 @memset(i32 %19, i32 0, i32 %20)
  %22 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %23 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %25 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %27 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %29 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %28, i32 0, i32 2
  store i32 1, i32* %29, align 8
  %30 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %31 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %30, i32 0, i32 3
  store i32 1, i32* %31, align 4
  %32 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %33 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %32, i32 0, i32 4
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %36 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %35)
  %37 = load i64, i64* @B43legacy_STAT_INITIALIZED, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %1
  %40 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %41 = call i32 @b43legacy_wireless_core_init(%struct.b43legacy_wldev* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %69

45:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %48 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %47)
  %49 = load i64, i64* @B43legacy_STAT_STARTED, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %53 = call i32 @b43legacy_wireless_core_start(%struct.b43legacy_wldev* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %61 = call i32 @b43legacy_wireless_core_exit(%struct.b43legacy_wldev* %60)
  br label %62

62:                                               ; preds = %59, %56
  br label %69

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %46
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %66 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @wiphy_rfkill_start_polling(i32 %67)
  br label %69

69:                                               ; preds = %64, %62, %44
  %70 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %71 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %70, i32 0, i32 4
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_wireless_core_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_wireless_core_start(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_wireless_core_exit(%struct.b43legacy_wldev*) #1

declare dso_local i32 @wiphy_rfkill_start_polling(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
