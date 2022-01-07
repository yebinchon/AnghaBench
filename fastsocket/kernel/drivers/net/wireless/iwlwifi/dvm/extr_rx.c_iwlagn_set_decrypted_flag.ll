; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_set_decrypted_flag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_set_decrypted_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@RXON_FILTER_DIS_DECRYPT_MSK = common dso_local global i32 0, align 4
@IEEE80211_FCTL_PROTECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"decrypt_res:0x%x\0A\00", align 1
@RX_RES_STATUS_SEC_TYPE_MSK = common dso_local global i32 0, align 4
@RX_RES_STATUS_DECRYPT_TYPE_MSK = common dso_local global i32 0, align 4
@RX_RES_STATUS_BAD_KEY_TTAK = common dso_local global i32 0, align 4
@RX_RES_STATUS_BAD_ICV_MIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Packet destroyed\0A\00", align 1
@RX_RES_STATUS_DECRYPT_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"hw decrypt successfully!!!\0A\00", align 1
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.ieee80211_hdr*, i32, %struct.ieee80211_rx_status*)* @iwlagn_set_decrypted_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_set_decrypted_flag(%struct.iwl_priv* %0, %struct.ieee80211_hdr* %1, i32 %2, %struct.ieee80211_rx_status* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %9, align 8
  %11 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RXON_FILTER_DIS_DECRYPT_MSK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @IEEE80211_FCTL_PROTECTED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %75

33:                                               ; preds = %27
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RX(%struct.iwl_priv* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @RX_RES_STATUS_SEC_TYPE_MSK, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %73 [
    i32 129, label %40
    i32 128, label %48
    i32 130, label %58
  ]

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @RX_RES_STATUS_DECRYPT_TYPE_MSK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @RX_RES_STATUS_BAD_KEY_TTAK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %74

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %33, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @RX_RES_STATUS_DECRYPT_TYPE_MSK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @RX_RES_STATUS_BAD_ICV_MIC, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %56 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RX(%struct.iwl_priv* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %75

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %33, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @RX_RES_STATUS_DECRYPT_TYPE_MSK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @RX_RES_STATUS_DECRYPT_OK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %66 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RX(%struct.iwl_priv* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %68 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %69 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %64, %58
  br label %74

73:                                               ; preds = %33
  br label %74

74:                                               ; preds = %73, %72, %46
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %54, %32, %26
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_priv*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
