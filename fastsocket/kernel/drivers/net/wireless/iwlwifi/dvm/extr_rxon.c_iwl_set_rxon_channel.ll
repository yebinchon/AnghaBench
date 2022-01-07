; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwl_set_rxon_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwl_set_rxon_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.ieee80211_channel = type { i32, i64 }
%struct.iwl_rxon_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Staging channel set to %d [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_set_rxon_channel(%struct.iwl_priv* %0, %struct.ieee80211_channel* %1, %struct.iwl_rxon_context* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.iwl_rxon_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store %struct.iwl_rxon_context* %2, %struct.iwl_rxon_context** %6, align 8
  %9 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le16_to_cpu(i32 %18)
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %61

29:                                               ; preds = %22, %3
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @cpu_to_le16(i64 %30)
  %32 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %33 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %42 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %40
  store i32 %45, i32* %43, align 4
  br label %53

46:                                               ; preds = %29
  %47 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %48 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %49 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %38
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %56 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %28
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
