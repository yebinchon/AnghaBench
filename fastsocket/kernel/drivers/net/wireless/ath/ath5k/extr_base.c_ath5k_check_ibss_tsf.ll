; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_check_ibss_tsf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_check_ibss_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_rx_status = type { i64 }
%struct.ath_common = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@ATH5K_DEBUG_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"beacon %llx mactime %llx (diff %lld) tsf now %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"fixing mactime from %llx to %llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"fixed beacon timers after beacon receive\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.sk_buff*, %struct.ieee80211_rx_status*)* @ath5k_check_ibss_tsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_check_ibss_tsf(%struct.ath5k_hw* %0, %struct.sk_buff* %1, %struct.ieee80211_rx_status* %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %6, align 8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %13 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %12)
  store %struct.ath_common* %13, %struct.ath_common** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %17, %struct.ieee80211_mgmt** %11, align 8
  %18 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %19 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ieee80211_is_beacon(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %107

23:                                               ; preds = %3
  %24 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %25 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %107

33:                                               ; preds = %23
  %34 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %35 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %38 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ether_addr_equal(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %107

42:                                               ; preds = %33
  %43 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %44 = call i64 @ath5k_hw_get_tsf64(%struct.ath5k_hw* %43)
  store i64 %44, i64* %8, align 8
  %45 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %46 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le64_to_cpu(i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @TSF_TO_TU(i64 %51)
  store i64 %52, i64* %10, align 8
  %53 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %54 = load i32, i32* @ATH5K_DEBUG_BEACON, align 4
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load i64, i64* %8, align 8
  %65 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %53, i32 %54, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %58, i64 %63, i64 %64)
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %68 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %42
  %72 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %73 = load i32, i32* @ATH5K_DEBUG_BEACON, align 4
  %74 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %72, i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %76, i64 %77)
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %81 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %71, %42
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %85 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @ath5k_beacon_update_timers(%struct.ath5k_hw* %89, i64 %90)
  br label %92

92:                                               ; preds = %88, %82
  %93 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %94 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %95 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ath5k_hw_check_beacon_timers(%struct.ath5k_hw* %93, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @ath5k_beacon_update_timers(%struct.ath5k_hw* %100, i64 %101)
  %103 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %104 = load i32, i32* @ATH5K_DEBUG_BEACON, align 4
  %105 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %103, i32 %104, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %106

106:                                              ; preds = %99, %92
  br label %107

107:                                              ; preds = %106, %33, %23, %3
  ret void
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i64 @ath5k_hw_get_tsf64(%struct.ath5k_hw*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @TSF_TO_TU(i64) #1

declare dso_local i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw*, i32, i8*, ...) #1

declare dso_local i32 @ath5k_beacon_update_timers(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @ath5k_hw_check_beacon_timers(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
