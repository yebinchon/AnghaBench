; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*)* }

@RTL818X_CMD_TX_ENABLE = common dso_local global i32 0, align 4
@RTL818X_CMD_RX_ENABLE = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@RTL818X_CONFIG4_VCOOFF = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8180_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8180_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  store %struct.rtl8180_priv* %8, %struct.rtl8180_priv** %3, align 8
  %9 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %10 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %9, i32* %13, i32 0)
  %15 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %16 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %15, i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @RTL818X_CMD_TX_ENABLE, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @RTL818X_CMD_RX_ENABLE, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %30 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %29, i32* %33, i32 %34)
  %36 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %37 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %39, align 8
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %42 = call i32 %40(%struct.ieee80211_hw* %41)
  %43 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %44 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %45 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %49 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %43, i32* %47, i32 %48)
  %50 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %51 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %52 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %50, i32* %54)
  store i32 %55, i32* %4, align 4
  %56 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %57 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %58 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @RTL818X_CONFIG4_VCOOFF, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %56, i32* %60, i32 %63)
  %65 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %66 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %67 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %71 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %65, i32* %69, i32 %70)
  %72 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %73 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %78 = call i32 @free_irq(i32 %76, %struct.ieee80211_hw* %77)
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %80 = call i32 @rtl8180_free_rx_ring(%struct.ieee80211_hw* %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %88, %1
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @rtl8180_free_tx_ring(%struct.ieee80211_hw* %85, i32 %86)
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %81

91:                                               ; preds = %81
  ret void
}

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8180_free_rx_ring(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8180_free_tx_ring(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
