; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_init_drv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_init_drv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32*, i32, i32, i64, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@IWL_MISSED_BEACON_THRESHOLD_DEF = common dso_local global i32 0, align 4
@IWL_OWNERSHIP_DRIVER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@IWLAGN_BT_KILL_ACK_MASK_DEFAULT = common dso_local global i32 0, align 4
@IWLAGN_BT_KILL_CTS_MASK_DEFAULT = common dso_local global i32 0, align 4
@IWLAGN_BT_ALL_VALID_MSK = common dso_local global i32 0, align 4
@BT_ON_THRESHOLD_DEF = common dso_local global i32 0, align 4
@BT_DURATION_LIMIT_DEF = common dso_local global i32 0, align 4
@BT_FRAG_THRESHOLD_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_init_drv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_init_drv(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %3 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %3, i32 0, i32 18
  %5 = call i32 @spin_lock_init(i32* %4)
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 17
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %9, i32 0, i32 16
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 15
  store i32 %12, i32* %14, align 8
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 6
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 14
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 13
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 12
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @IWL_MISSED_BEACON_THRESHOLD_DEF, align 4
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %33 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %32, i32 0, i32 11
  store i32 %31, i32* %33, align 8
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %35 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %34, i32 0, i32 10
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @IWL_OWNERSHIP_DRIVER, align 4
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %38 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @jiffies, align 4
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %41 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 8
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %43 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %44 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %43, i32 0, i32 7
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = call i32 @iwlagn_set_rxon_chain(%struct.iwl_priv* %42, i32* %47)
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %50 = call i32 @iwl_init_scan_params(%struct.iwl_priv* %49)
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %52 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %51, i32 0, i32 6
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %85

57:                                               ; preds = %1
  %58 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %59 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %58, i32 0, i32 6
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %57
  %67 = load i32, i32* @IWLAGN_BT_KILL_ACK_MASK_DEFAULT, align 4
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %69 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @IWLAGN_BT_KILL_CTS_MASK_DEFAULT, align 4
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %72 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @IWLAGN_BT_ALL_VALID_MSK, align 4
  %74 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %75 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @BT_ON_THRESHOLD_DEF, align 4
  %77 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %78 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @BT_DURATION_LIMIT_DEF, align 4
  %80 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %81 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @BT_FRAG_THRESHOLD_DEF, align 4
  %83 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %84 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %66, %57, %1
  ret i32 0
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @iwlagn_set_rxon_chain(%struct.iwl_priv*, i32*) #1

declare dso_local i32 @iwl_init_scan_params(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
