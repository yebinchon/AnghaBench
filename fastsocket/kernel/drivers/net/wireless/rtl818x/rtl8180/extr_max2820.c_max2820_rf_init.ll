; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_max2820.c_max2820_rf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_max2820.c_max2820_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RTL818X_CONFIG2_ANTENNA_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @max2820_rf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max2820_rf_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8180_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  store %struct.rtl8180_priv* %6, %struct.rtl8180_priv** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call i32 @write_max2820(%struct.ieee80211_hw* %7, i32 0, i32 7)
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call i32 @write_max2820(%struct.ieee80211_hw* %9, i32 1, i32 30)
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call i32 @write_max2820(%struct.ieee80211_hw* %11, i32 2, i32 1)
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call i32 @max2820_rf_set_channel(%struct.ieee80211_hw* %13, i32* null)
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call i32 @write_max2820(%struct.ieee80211_hw* %15, i32 4, i32 787)
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call i32 @write_max2820(%struct.ieee80211_hw* %17, i32 5, i32 15)
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %19, i32 0, i32 136)
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %22 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %21, i32 3, i32 8)
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %24 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %23, i32 4, i32 248)
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %26 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %25, i32 5, i32 144)
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %27, i32 6, i32 26)
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %30 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %29, i32 7, i32 100)
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %32 = call i32 @max2820_write_phy_antenna(%struct.ieee80211_hw* %31, i32 1)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %34 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %33, i32 17, i32 136)
  %35 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %36 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %37 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %35, i32* %39)
  %41 = load i32, i32* @RTL818X_CONFIG2_ANTENNA_DIV, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %1
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %46 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %45, i32 18, i32 199)
  br label %50

47:                                               ; preds = %1
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %49 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %48, i32 18, i32 71)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %52 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %51, i32 19, i32 155)
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %54 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %53, i32 25, i32 0)
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %56 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %55, i32 26, i32 159)
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = call i32 @max2820_rf_set_channel(%struct.ieee80211_hw* %57, i32* null)
  ret void
}

declare dso_local i32 @write_max2820(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @max2820_rf_set_channel(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @rtl8180_write_phy(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @max2820_write_phy_antenna(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
