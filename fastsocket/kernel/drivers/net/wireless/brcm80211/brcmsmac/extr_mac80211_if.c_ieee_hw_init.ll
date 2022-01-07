; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_ieee_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_ieee_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, i32, i32, i8*, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@IEEE80211_HW_AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@N_TX_QUEUES = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"minstrel_ht\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @ieee_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_hw_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %3 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %4 = load i32, i32* @IEEE80211_HW_REPORTS_TX_ACK_STATUS, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @IEEE80211_HW_AMPDU_AGGREGATION, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = call i32 (...) @brcms_c_get_header_len()
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 7
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @N_TX_QUEUES, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 1
  store i32 2, i32* %17, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 2
  store i32 7000, i32* %19, align 8
  %20 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %26, i32 0, i32 3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %31 = call i32 @ieee_hw_rate_init(%struct.ieee80211_hw* %30)
  ret i32 %31
}

declare dso_local i32 @brcms_c_get_header_len(...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee_hw_rate_init(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
