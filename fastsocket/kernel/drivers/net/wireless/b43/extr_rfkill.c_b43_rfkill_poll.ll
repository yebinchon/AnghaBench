; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_rfkill.c_b43_rfkill_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_rfkill.c_b43_rfkill_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.b43_wl = type { i32, %struct.b43_wldev* }
%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Radio hardware status changed to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ENABLED\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_rfkill_poll(%struct.ieee80211_hw* %0) #0 {
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
  %10 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %9, i32 0, i32 1
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  store %struct.b43_wldev* %11, %struct.b43_wldev** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %13 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %16 = call i64 @b43_status(%struct.b43_wldev* %15)
  %17 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %18 = icmp slt i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %24 = call i64 @b43_bus_powerup(%struct.b43_wldev* %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %28 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  br label %88

30:                                               ; preds = %22
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %32 = call i32 @b43_device_enable(%struct.b43_wldev* %31, i32 0)
  store i32 1, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %35 = call i32 @b43_is_hw_radio_enabled(%struct.b43_wldev* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %38 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %47 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 @b43info(%struct.b43_wl* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %55 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @wiphy_rfkill_set_hw_state(i32 %56, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %64 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %62, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %44
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @b43_software_rfkill(%struct.b43_wldev* %69, i32 %73)
  br label %75

75:                                               ; preds = %68, %44
  br label %76

76:                                               ; preds = %75, %33
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %81 = call i32 @b43_device_disable(%struct.b43_wldev* %80, i32 0)
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %83 = call i32 @b43_bus_may_powerdown(%struct.b43_wldev* %82)
  br label %84

84:                                               ; preds = %79, %76
  %85 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %86 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  br label %88

88:                                               ; preds = %84, %26
  ret void
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i64 @b43_bus_powerup(%struct.b43_wldev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @b43_device_enable(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_is_hw_radio_enabled(%struct.b43_wldev*) #1

declare dso_local i32 @b43info(%struct.b43_wl*, i8*, i8*) #1

declare dso_local i32 @wiphy_rfkill_set_hw_state(i32, i32) #1

declare dso_local i32 @b43_software_rfkill(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_device_disable(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_bus_may_powerdown(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
