; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_op_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_op_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.b43_wl = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.b43_wldev* }
%struct.b43_wldev = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@B43_STAT_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @b43_op_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_op_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.b43_wl*, align 8
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %7)
  store %struct.b43_wl* %8, %struct.b43_wl** %3, align 8
  %9 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %10 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %9, i32 0, i32 9
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  store %struct.b43_wldev* %11, %struct.b43_wldev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %13 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = call i32 @memset(i32 %14, i32 0, i32 %15)
  %17 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %18 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = call i32 @memset(i32 %19, i32 0, i32 %20)
  %22 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %23 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %25 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %27 = call i32 @b43_qos_clear(%struct.b43_wl* %26)
  %28 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %29 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %31 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %33 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %32, i32 0, i32 3
  store i32 1, i32* %33, align 4
  %34 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %35 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %34, i32 0, i32 4
  store i32 1, i32* %35, align 8
  %36 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %37 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %36, i32 0, i32 5
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %40 = call i64 @b43_status(%struct.b43_wldev* %39)
  %41 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %1
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %45 = call i32 @b43_wireless_core_init(%struct.b43_wldev* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %73

49:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %52 = call i64 @b43_status(%struct.b43_wldev* %51)
  %53 = load i64, i64* @B43_STAT_STARTED, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %57 = call i32 @b43_wireless_core_start(%struct.b43_wldev* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %65 = call i32 @b43_wireless_core_exit(%struct.b43_wldev* %64)
  br label %66

66:                                               ; preds = %63, %60
  br label %73

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %50
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %70 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @wiphy_rfkill_start_polling(i32 %71)
  br label %73

73:                                               ; preds = %68, %66, %48
  %74 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %75 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %74, i32 0, i32 5
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = call i32 @b43_op_config(%struct.ieee80211_hw* %80, i32 -1)
  br label %82

82:                                               ; preds = %79, %73
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @b43_qos_clear(%struct.b43_wl*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wireless_core_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wireless_core_start(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wireless_core_exit(%struct.b43_wldev*) #1

declare dso_local i32 @wiphy_rfkill_start_polling(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @b43_op_config(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
