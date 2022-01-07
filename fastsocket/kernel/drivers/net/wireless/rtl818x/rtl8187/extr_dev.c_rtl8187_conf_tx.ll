; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_conf_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32*, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@rtl8187b_ac_addr = common dso_local global i32* null, align 8
@SIFS_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_tx_queue_params*)* @rtl8187_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8187_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %10 = alloca %struct.rtl8187_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %9, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %14, align 8
  store %struct.rtl8187_priv* %15, %struct.rtl8187_priv** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %89

21:                                               ; preds = %4
  %22 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @fls(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fls(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %10, align 8
  %31 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %21
  %35 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %10, align 8
  %39 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  %44 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %10, align 8
  %45 = load i32*, i32** @rtl8187b_ac_addr, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %51 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = load i32, i32* %12, align 4
  %55 = shl i32 %54, 12
  %56 = or i32 %53, %55
  %57 = load i32, i32* %11, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %56, %58
  %60 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %10, align 8
  %64 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %62, %65
  %67 = load i32, i32* @SIFS_TIME, align 4
  %68 = add nsw i32 %66, %67
  %69 = or i32 %59, %68
  %70 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %44, i32 %49, i32 %69)
  br label %88

71:                                               ; preds = %21
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %89

77:                                               ; preds = %71
  %78 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %10, align 8
  %79 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %10, align 8
  %80 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = shl i32 %84, 4
  %86 = or i32 %83, %85
  %87 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %78, i32* %82, i32 %86)
  br label %88

88:                                               ; preds = %77, %34
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %74, %18
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8187_priv*, i32, i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
