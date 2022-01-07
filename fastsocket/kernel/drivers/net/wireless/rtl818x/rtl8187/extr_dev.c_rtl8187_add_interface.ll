; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_add_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32, %struct.TYPE_2__*, %struct.ieee80211_vif* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.ieee80211_vif = type { i32, i64, i32 }
%struct.rtl8187_vif = type { i32, i32, %struct.ieee80211_hw* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@rtl8187_beacon_work = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @rtl8187_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8187_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.rtl8187_priv*, align 8
  %6 = alloca %struct.rtl8187_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %10, align 8
  store %struct.rtl8187_priv* %11, %struct.rtl8187_priv** %5, align 8
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %15 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %18 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %17, i32 0, i32 2
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %18, align 8
  %20 = icmp ne %struct.ieee80211_vif* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %85

22:                                               ; preds = %2
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %27 [
    i32 128, label %26
    i32 129, label %26
  ]

26:                                               ; preds = %22, %22
  br label %28

27:                                               ; preds = %22
  br label %85

28:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %30 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %31 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %30, i32 0, i32 2
  store %struct.ieee80211_vif* %29, %struct.ieee80211_vif** %31, align 8
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 2
  %34 = bitcast i32* %33 to %struct.rtl8187_vif*
  store %struct.rtl8187_vif* %34, %struct.rtl8187_vif** %6, align 8
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %36 = load %struct.rtl8187_vif*, %struct.rtl8187_vif** %6, align 8
  %37 = getelementptr inbounds %struct.rtl8187_vif, %struct.rtl8187_vif* %36, i32 0, i32 2
  store %struct.ieee80211_hw* %35, %struct.ieee80211_hw** %37, align 8
  %38 = load %struct.rtl8187_vif*, %struct.rtl8187_vif** %6, align 8
  %39 = getelementptr inbounds %struct.rtl8187_vif, %struct.rtl8187_vif* %38, i32 0, i32 1
  %40 = load i32, i32* @rtl8187_beacon_work, align 4
  %41 = call i32 @INIT_DELAYED_WORK(i32* %39, i32 %40)
  %42 = load %struct.rtl8187_vif*, %struct.rtl8187_vif** %6, align 8
  %43 = getelementptr inbounds %struct.rtl8187_vif, %struct.rtl8187_vif* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %45 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %46 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %50 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %44, i32* %48, i32 %49)
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %74, %28
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %57 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %58 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %66 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %56, i32* %64, i32 %72)
  br label %74

74:                                               ; preds = %55
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %51

77:                                               ; preds = %51
  %78 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %79 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %80 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %84 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %78, i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %77, %27, %21
  %86 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %87 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
