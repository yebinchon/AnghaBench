; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rx.c_iwl_mvm_set_mac80211_rx_flag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rx.c_iwl_mvm_set_mac80211_rx_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@RX_MPDU_RES_STATUS_SEC_ENC_MSK = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_SEC_NO_ENC = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_SEC_ENC_ERR = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_MIC_OK = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"hw decrypted CCMP successfully\0A\00", align 1
@RX_MPDU_RES_STATUS_TTAK_OK = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_ICV_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Unhandled alg: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_hdr*, %struct.ieee80211_rx_status*, i32)* @iwl_mvm_set_mac80211_rx_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_set_mac80211_rx_flag(%struct.iwl_mvm* %0, %struct.ieee80211_hdr* %1, %struct.ieee80211_rx_status* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %7, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ieee80211_has_protected(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @RX_MPDU_RES_STATUS_SEC_ENC_MSK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @RX_MPDU_RES_STATUS_SEC_NO_ENC, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %71

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @RX_MPDU_RES_STATUS_SEC_ENC_MSK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @RX_MPDU_RES_STATUS_SEC_ENC_ERR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %71

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @RX_MPDU_RES_STATUS_SEC_ENC_MSK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %66 [
    i32 130, label %33
    i32 129, label %47
    i32 128, label %54
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @RX_MPDU_RES_STATUS_MIC_OK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %71

39:                                               ; preds = %33
  %40 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %41 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %42 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %46 = call i32 @IWL_DEBUG_WEP(%struct.iwl_mvm* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %71

47:                                               ; preds = %29
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @RX_MPDU_RES_STATUS_TTAK_OK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %71

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %29, %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @RX_MPDU_RES_STATUS_ICV_OK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %71

60:                                               ; preds = %54
  %61 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %62 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %63 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  store i32 0, i32* %5, align 4
  br label %71

66:                                               ; preds = %29
  %67 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @IWL_ERR(%struct.iwl_mvm* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %60, %59, %52, %39, %38, %28, %21
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @ieee80211_has_protected(i32) #1

declare dso_local i32 @IWL_DEBUG_WEP(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
