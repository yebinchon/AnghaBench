; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_ap_init_qos_null_template.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_ap_init_qos_null_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.wl12xx_vif = type { i32, i32 }
%struct.ieee80211_qos_hdr = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_STYPE_QOS_NULLFUNC = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CMD_TEMPL_QOS_NULL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.ieee80211_vif*)* @wl1271_ap_init_qos_null_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_ap_init_qos_null_template(%struct.wl1271* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.ieee80211_qos_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %10 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %9)
  store %struct.wl12xx_vif* %10, %struct.wl12xx_vif** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ieee80211_qos_hdr* @kzalloc(i32 12, i32 %11)
  store %struct.ieee80211_qos_hdr* %12, %struct.ieee80211_qos_hdr** %6, align 8
  %13 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %6, align 8
  %14 = icmp ne %struct.ieee80211_qos_hdr* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  br label %56

18:                                               ; preds = %2
  %19 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %20 = load i32, i32* @IEEE80211_STYPE_QOS_NULLFUNC, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @cpu_to_le16(i32 %23)
  %25 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @memcpy(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i32 %37, i32 %40, i32 %41)
  %43 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %44 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %45 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %43, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %49 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %50 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CMD_TEMPL_QOS_NULL_DATA, align 4
  %53 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %48, i32 %51, i32 %52, %struct.ieee80211_qos_hdr* %53, i32 12, i32 0, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %18, %15
  %57 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %6, align 8
  %58 = call i32 @kfree(%struct.ieee80211_qos_hdr* %57)
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local %struct.ieee80211_qos_hdr* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_cmd_template_set(%struct.wl1271*, i32, i32, %struct.ieee80211_qos_hdr*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_qos_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
