; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_rtl8225.c_rtl8225_rf_conf_erp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_rtl8225.c_rtl8225_rf_conf_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_bss_conf = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_bss_conf*)* @rtl8225_rf_conf_erp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225_rf_conf_erp(%struct.ieee80211_hw* %0, %struct.ieee80211_bss_conf* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_bss_conf*, align 8
  %5 = alloca %struct.rtl8180_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_bss_conf* %1, %struct.ieee80211_bss_conf** %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  store %struct.rtl8180_priv* %8, %struct.rtl8180_priv** %5, align 8
  %9 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  %14 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %15 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %16 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %14, i32* %18, i32 9)
  %20 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %21 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %20, i32* %24, i32 34)
  %26 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %27 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %28 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %26, i32* %30, i32 20)
  %32 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %33 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %34 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %32, i32* %36, i32 81)
  %38 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %39 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %40 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %38, i32* %42, i32 115)
  br label %75

44:                                               ; preds = %2
  %45 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %46 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %47 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %45, i32* %49, i32 20)
  %51 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %52 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %53 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %51, i32* %55, i32 68)
  %57 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %58 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %59 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %57, i32* %61, i32 36)
  %63 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %64 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %65 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %63, i32* %67, i32 81)
  %69 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %70 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %71 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %69, i32* %73, i32 165)
  br label %75

75:                                               ; preds = %44, %13
  ret void
}

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
