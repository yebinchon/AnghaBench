; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_config_vif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_config_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64 }
%struct.ieee80211_conf = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_conf*, i32)* @wl12xx_config_vif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_config_vif(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.ieee80211_conf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.wl12xx_vif*, align 8
  %8 = alloca %struct.ieee80211_conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %7, align 8
  store %struct.ieee80211_conf* %2, %struct.ieee80211_conf** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %12 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %15 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %4
  %19 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %20 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %21 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %22 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @wl1271_acx_tx_power(%struct.wl1271* %19, %struct.wl12xx_vif* %20, i64 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %36

29:                                               ; preds = %18
  %30 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %31 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %34 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @wl1271_acx_tx_power(%struct.wl1271*, %struct.wl12xx_vif*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
