; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_mac_reset_tsf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_mac_reset_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, %struct.TYPE_2__, i32, i64, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"enter: type %d, addr %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"leave - not ready\0A\00", align 1
@RXON_FILTER_ASSOC_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_mac_reset_tsf(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  store %struct.il_priv* %9, %struct.il_priv** %5, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %21 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %20, i32 0, i32 2
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 5
  %26 = call i32 @memset(i32* %25, i32 0, i32 4)
  %27 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @dev_kfree_skb(i32* %34)
  br label %36

36:                                               ; preds = %31, %2
  %37 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %38 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %40 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %42 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %41, i32 0, i32 2
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %46 = call i32 @il_scan_cancel_timeout(%struct.il_priv* %45, i32 100)
  %47 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %48 = call i32 @il_is_ready_rf(%struct.il_priv* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %36
  %51 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %53 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %71

55:                                               ; preds = %36
  %56 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %59 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %64 = call i32 @il_commit_rxon(%struct.il_priv* %63)
  %65 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %66 = call i32 @il_set_rate(%struct.il_priv* %65)
  %67 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %69 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  br label %71

71:                                               ; preds = %55, %50
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @D_MAC80211(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @il_scan_cancel_timeout(%struct.il_priv*, i32) #1

declare dso_local i32 @il_is_ready_rf(%struct.il_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @il_commit_rxon(%struct.il_priv*) #1

declare dso_local i32 @il_set_rate(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
