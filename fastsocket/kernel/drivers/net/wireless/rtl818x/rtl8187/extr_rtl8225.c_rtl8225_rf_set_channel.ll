; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_rtl8225.c_rtl8225_rf_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_rtl8225.c_rtl8225_rf_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_conf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@rtl8225_rf_init = common dso_local global i64 0, align 8
@rtl8225z2_rf_init = common dso_local global i64 0, align 8
@rtl8225_chan = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_conf*)* @rtl8225_rf_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225_rf_set_channel(%struct.ieee80211_hw* %0, %struct.ieee80211_conf* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_conf*, align 8
  %5 = alloca %struct.rtl8187_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %8, align 8
  store %struct.rtl8187_priv* %9, %struct.rtl8187_priv** %5, align 8
  %10 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ieee80211_frequency_to_channel(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %18 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @rtl8225_rf_init, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @rtl8225_rf_set_tx_power(%struct.ieee80211_hw* %25, i32 %26)
  br label %45

28:                                               ; preds = %2
  %29 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %30 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @rtl8225z2_rf_init, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @rtl8225z2_rf_set_tx_power(%struct.ieee80211_hw* %37, i32 %38)
  br label %44

40:                                               ; preds = %28
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @rtl8225z2_b_rf_set_tx_power(%struct.ieee80211_hw* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %24
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %47 = load i32*, i32** @rtl8225_chan, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @rtl8225_write(%struct.ieee80211_hw* %46, i32 7, i32 %52)
  %54 = call i32 @msleep(i32 10)
  ret void
}

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @rtl8225_rf_set_tx_power(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8225z2_rf_set_tx_power(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8225z2_b_rf_set_tx_power(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8225_write(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
