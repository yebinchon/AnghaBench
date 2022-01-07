; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwl_set_flags_for_band.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwl_set_flags_for_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@RXON_FLG_AUTO_DETECT_MSK = common dso_local global i32 0, align 4
@RXON_FLG_CCK_MSK = common dso_local global i32 0, align 4
@RXON_FLG_SHORT_SLOT_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_set_flags_for_band(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, i32 %2, %struct.ieee80211_vif* %3) #0 {
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.iwl_rxon_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_vif*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_vif* %3, %struct.ieee80211_vif** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %4
  %13 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %14 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @RXON_FLG_CCK_MSK, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %20 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %18
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %25 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %26 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  br label %74

30:                                               ; preds = %4
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %32 = icmp ne %struct.ieee80211_vif* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %41 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %42 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 4
  br label %54

46:                                               ; preds = %33, %30
  %47 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %50 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %46, %39
  %55 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %56 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %57 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %62 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %63 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @RXON_FLG_CCK_MSK, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %70 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %68
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %54, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
