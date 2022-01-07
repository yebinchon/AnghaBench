; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_roc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_roc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mac80211_hwsim_data* }
%struct.mac80211_hwsim_data = type { i32, i32, %struct.ieee80211_channel*, i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_channel = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"hwsim ROC (%d MHz, %d ms)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_channel*, i32, i32)* @mac80211_hwsim_roc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac80211_hwsim_roc(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mac80211_hwsim_data*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 1
  %15 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %14, align 8
  store %struct.mac80211_hwsim_data* %15, %struct.mac80211_hwsim_data** %12, align 8
  %16 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %17 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %20 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %19, i32 0, i32 2
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %20, align 8
  %22 = icmp ne %struct.ieee80211_channel* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %25 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %5
  %29 = phi i1 [ true, %5 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %35 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %62

39:                                               ; preds = %28
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %41 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %42 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %41, i32 0, i32 2
  store %struct.ieee80211_channel* %40, %struct.ieee80211_channel** %42, align 8
  %43 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %44 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @wiphy_debug(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %55 = call i32 @ieee80211_ready_on_channel(%struct.ieee80211_hw* %54)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %57 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %58 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %57, i32 0, i32 0
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @msecs_to_jiffies(i32 %59)
  %61 = call i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw* %56, i32* %58, i32 %60)
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %39, %33
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wiphy_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_ready_on_channel(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw*, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
