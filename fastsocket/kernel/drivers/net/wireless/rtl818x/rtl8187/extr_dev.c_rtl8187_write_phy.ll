; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_write_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_write_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8187_write_phy(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl8187_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  store %struct.rtl8187_priv* %10, %struct.rtl8187_priv** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = shl i32 %11, 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, 128
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %18 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %19 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 24
  %26 = and i32 %25, 255
  %27 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %17, i32* %23, i32 %26)
  %28 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %29 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %30 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %28, i32* %34, i32 %37)
  %39 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %40 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %41 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %39, i32* %45, i32 %48)
  %50 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %51 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %52 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 255
  %59 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %50, i32* %56, i32 %58)
  ret void
}

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
