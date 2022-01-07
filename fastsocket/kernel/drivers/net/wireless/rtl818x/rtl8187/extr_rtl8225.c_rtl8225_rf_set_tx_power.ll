; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_rtl8225.c_rtl8225_rf_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_rtl8225.c_rtl8225_rf_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@rtl8225_tx_gain_cck_ofdm = common dso_local global i32* null, align 8
@rtl8225_tx_power_cck_ch14 = common dso_local global i32* null, align 8
@rtl8225_tx_power_cck = common dso_local global i32* null, align 8
@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@RTL818X_CONFIG3_ANAPARAM_WRITE = common dso_local global i32 0, align 4
@RTL8187_RTL8225_ANAPARAM2_ON = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@rtl8225_tx_power_ofdm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @rtl8225_rf_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225_rf_set_tx_power(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8187_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %12, align 8
  store %struct.rtl8187_priv* %13, %struct.rtl8187_priv** %5, align 8
  %14 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %15 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %6, align 4
  %24 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %25 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @min(i32 %34, i32 11)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 15
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i32 25, i32* %7, align 4
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 10
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %38
  %43 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %44 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %45 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  %48 = load i32*, i32** @rtl8225_tx_gain_cck_ofdm, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sdiv i32 %49, 6
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 1
  %55 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %43, i32* %47, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 14
  br i1 %57, label %58, label %65

58:                                               ; preds = %42
  %59 = load i32*, i32** @rtl8225_tx_power_cck_ch14, align 8
  %60 = load i32, i32* %6, align 4
  %61 = srem i32 %60, 6
  %62 = mul nsw i32 %61, 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  store i32* %64, i32** %8, align 8
  br label %72

65:                                               ; preds = %42
  %66 = load i32*, i32** @rtl8225_tx_power_cck, align 8
  %67 = load i32, i32* %6, align 4
  %68 = srem i32 %67, 6
  %69 = mul nsw i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  store i32* %71, i32** %8, align 8
  br label %72

72:                                               ; preds = %65, %58
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %84, %72
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 8
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 68, %78
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %8, align 8
  %82 = load i32, i32* %80, align 4
  %83 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %77, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %73

87:                                               ; preds = %73
  %88 = call i32 @msleep(i32 1)
  %89 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %90 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %91 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %95 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %89, i32* %93, i32 %94)
  %96 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %97 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %98 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %96, i32* %100)
  store i32 %101, i32* %9, align 4
  %102 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %103 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %104 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @RTL818X_CONFIG3_ANAPARAM_WRITE, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %102, i32* %106, i32 %109)
  %111 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %112 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %113 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i32, i32* @RTL8187_RTL8225_ANAPARAM2_ON, align 4
  %117 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %111, i32* %115, i32 %116)
  %118 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %119 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %120 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @RTL818X_CONFIG3_ANAPARAM_WRITE, align 4
  %125 = xor i32 %124, -1
  %126 = and i32 %123, %125
  %127 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %118, i32* %122, i32 %126)
  %128 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %129 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %130 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %134 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %128, i32* %132, i32 %133)
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %136 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %135, i32 2, i32 66)
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %138 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %137, i32 6, i32 0)
  %139 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %140 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %139, i32 8, i32 0)
  %141 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %142 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %143 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32*, i32** @rtl8225_tx_gain_cck_ofdm, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sdiv i32 %147, 6
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = ashr i32 %151, 1
  %153 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %141, i32* %145, i32 %152)
  %154 = load i32*, i32** @rtl8225_tx_power_ofdm, align 8
  %155 = load i32, i32* %7, align 4
  %156 = srem i32 %155, 6
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32* %158, i32** %8, align 8
  %159 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %159, i32 5, i32 %161)
  %163 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %163, i32 7, i32 %165)
  %167 = call i32 @msleep(i32 1)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8187_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
