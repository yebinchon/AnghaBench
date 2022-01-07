; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl1271_build_qos_null_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl1271_build_qos_null_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wl12xx_vif = type { i32, i32 }
%struct.ieee80211_qos_hdr = type { i8*, i8*, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_STYPE_QOS_NULLFUNC = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@CMD_TEMPL_QOS_NULL_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_build_qos_null_data(%struct.wl1271* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.ieee80211_qos_hdr, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %8 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %7)
  store %struct.wl12xx_vif* %8, %struct.wl12xx_vif** %5, align 8
  %9 = call i32 @memset(%struct.ieee80211_qos_hdr* %6, i32 0, i32 32)
  %10 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %6, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = call i32 @memcpy(i32 %11, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %6, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i32 @memcpy(i32 %19, i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %6, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @memcpy(i32 %26, i32 %30, i32 %31)
  %33 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %34 = load i32, i32* @IEEE80211_STYPE_QOS_NULLFUNC, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %6, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = call i8* @cpu_to_le16(i32 0)
  %41 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %6, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %43 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %44 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CMD_TEMPL_QOS_NULL_DATA, align 4
  %47 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %48 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %42, i32 %45, i32 %46, %struct.ieee80211_qos_hdr* %6, i32 32, i32 0, i32 %49)
  ret i32 %50
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @memset(%struct.ieee80211_qos_hdr*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_cmd_template_set(%struct.wl1271*, i32, i32, %struct.ieee80211_qos_hdr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
