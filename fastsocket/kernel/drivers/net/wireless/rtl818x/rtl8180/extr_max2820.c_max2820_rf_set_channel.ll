; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_max2820.c_max2820_rf_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_max2820.c_max2820_rf_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_conf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@max2820_chan = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_conf*)* @max2820_rf_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max2820_rf_set_channel(%struct.ieee80211_hw* %0, %struct.ieee80211_conf* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_conf*, align 8
  %5 = alloca %struct.rtl8180_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %11, align 8
  store %struct.rtl8180_priv* %12, %struct.rtl8180_priv** %5, align 8
  %13 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %4, align 8
  %14 = icmp ne %struct.ieee80211_conf* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ieee80211_frequency_to_channel(i32 %21)
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi i32 [ %22, %15 ], [ 1, %23 ]
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %29 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 255
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** @max2820_chan, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %42, i32 3, i32 %43)
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @max2820_write_phy_antenna(%struct.ieee80211_hw* %45, i32 %46)
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @write_max2820(%struct.ieee80211_hw* %48, i32 3, i32 %49)
  ret void
}

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @rtl8180_write_phy(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @max2820_write_phy_antenna(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @write_max2820(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
