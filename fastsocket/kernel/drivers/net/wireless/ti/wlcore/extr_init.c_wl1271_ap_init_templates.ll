; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_ap_init_templates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_ap_init_templates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.wl12xx_vif = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_ap_init_templates(%struct.wl1271* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %9 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %8)
  store %struct.wl12xx_vif* %9, %struct.wl12xx_vif** %6, align 8
  %10 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %11 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %12 = call i32 @wl1271_ap_init_deauth_template(%struct.wl1271* %10, %struct.wl12xx_vif* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %20 = call i32 @wl1271_ap_init_null_template(%struct.wl1271* %18, %struct.ieee80211_vif* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %42

25:                                               ; preds = %17
  %26 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %28 = call i32 @wl1271_ap_init_qos_null_template(%struct.wl1271* %26, %struct.ieee80211_vif* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %25
  %34 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %35 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %36 = call i32 @wl1271_acx_beacon_filter_opt(%struct.wl1271* %34, %struct.wl12xx_vif* %35, i32 0)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %31, %23, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_ap_init_deauth_template(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_ap_init_null_template(%struct.wl1271*, %struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_ap_init_qos_null_template(%struct.wl1271*, %struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_acx_beacon_filter_opt(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
