; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_rfkill.c_b43legacy_rfkill_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_rfkill.c_b43legacy_rfkill_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.b43legacy_wl = type { i32, %struct.b43legacy_wldev* }
%struct.b43legacy_wldev = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i32 }
%struct.TYPE_4__ = type { i32 }

@B43legacy_STAT_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Radio hardware status changed to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ENABLED\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_rfkill_poll(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.b43legacy_wl*, align 8
  %4 = alloca %struct.b43legacy_wldev*, align 8
  %5 = alloca %struct.ssb_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw* %8)
  store %struct.b43legacy_wl* %9, %struct.b43legacy_wl** %3, align 8
  %10 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %11 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %10, i32 0, i32 1
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %11, align 8
  store %struct.b43legacy_wldev* %12, %struct.b43legacy_wldev** %4, align 8
  %13 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %14 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.ssb_bus*, %struct.ssb_bus** %16, align 8
  store %struct.ssb_bus* %17, %struct.ssb_bus** %5, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %19 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %22 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %21)
  %23 = load i64, i64* @B43legacy_STAT_INITIALIZED, align 8
  %24 = icmp slt i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %1
  %29 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %30 = call i64 @ssb_bus_powerup(%struct.ssb_bus* %29, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %34 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  br label %101

36:                                               ; preds = %28
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %38 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32 @ssb_device_enable(%struct.TYPE_5__* %39, i32 0)
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %1
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %43 = call i32 @b43legacy_is_hw_radio_enabled(%struct.b43legacy_wldev* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %46 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %55 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %61 = call i32 @b43legacyinfo(%struct.b43legacy_wl* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %60)
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %63 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @wiphy_rfkill_set_hw_state(i32 %64, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %72 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %70, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %52
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %81 = call i32 @b43legacy_radio_turn_on(%struct.b43legacy_wldev* %80)
  br label %85

82:                                               ; preds = %76
  %83 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %84 = call i32 @b43legacy_radio_turn_off(%struct.b43legacy_wldev* %83, i32 0)
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85, %52
  br label %87

87:                                               ; preds = %86, %41
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %92 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = call i32 @ssb_device_disable(%struct.TYPE_5__* %93, i32 0)
  %95 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %96 = call i32 @ssb_bus_may_powerdown(%struct.ssb_bus* %95)
  br label %97

97:                                               ; preds = %90, %87
  %98 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %99 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  br label %101

101:                                              ; preds = %97, %32
  ret void
}

declare dso_local %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i64 @ssb_bus_powerup(%struct.ssb_bus*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ssb_device_enable(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @b43legacy_is_hw_radio_enabled(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacyinfo(%struct.b43legacy_wl*, i8*, i8*) #1

declare dso_local i32 @wiphy_rfkill_set_hw_state(i32, i32) #1

declare dso_local i32 @b43legacy_radio_turn_on(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_radio_turn_off(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @ssb_device_disable(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ssb_bus_may_powerdown(%struct.ssb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
