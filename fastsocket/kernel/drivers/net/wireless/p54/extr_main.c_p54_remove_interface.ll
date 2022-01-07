; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_remove_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54_common* }
%struct.p54_common = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.ieee80211_vif = type { i32 }

@HZ = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @p54_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.p54_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.p54_common*, %struct.p54_common** %7, align 8
  store %struct.p54_common* %8, %struct.p54_common** %5, align 8
  %9 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %10 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %13 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %12, i32 0, i32 6
  store i32* null, i32** %13, align 8
  %14 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %15 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le32_to_cpu(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %21 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %22 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @p54_tx_cancel(%struct.p54_common* %20, i32 %23)
  %25 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %26 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %25, i32 0, i32 4
  %27 = load i32, i32* @HZ, align 4
  %28 = call i32 @wait_for_completion_interruptible_timeout(i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %19, %2
  %30 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %31 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %32 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %34 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = call i32 @memset(i32 %35, i32 0, i32 %36)
  %38 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %39 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memset(i32 %40, i32 0, i32 %41)
  %43 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %44 = call i32 @p54_setup_mac(%struct.p54_common* %43)
  %45 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %46 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @p54_tx_cancel(%struct.p54_common*, i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @p54_setup_mac(%struct.p54_common*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
