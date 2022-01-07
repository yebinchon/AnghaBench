; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_assign_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_assign_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wl12xx_vif = type { i32, i32, i32, i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"mac80211 assign chanctx (role %d) %d (type %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_chanctx_conf*)* @wlcore_op_assign_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_op_assign_vif_chanctx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_chanctx_conf* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_chanctx_conf* %2, %struct.ieee80211_chanctx_conf** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  store %struct.wl1271* %12, %struct.wl1271** %7, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %13)
  store %struct.wl12xx_vif* %14, %struct.wl12xx_vif** %8, align 8
  %15 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ieee80211_frequency_to_channel(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @DEBUG_MAC80211, align 4
  %23 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %24 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %27, i32 0, i32 0
  %29 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_4__* %28)
  %30 = call i32 @wl1271_debug(i32 %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %29)
  %31 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %41 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %44 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %45, i32 0, i32 0
  %47 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_4__* %46)
  %48 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %49 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %51 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %52 = call i32 @wl1271_set_band_rate(%struct.wl1271* %50, %struct.wl12xx_vif* %51)
  %53 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %54 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  ret i32 0
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1271_set_band_rate(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
