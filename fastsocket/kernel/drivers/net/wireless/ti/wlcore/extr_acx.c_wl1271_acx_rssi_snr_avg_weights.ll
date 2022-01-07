; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_rssi_snr_avg_weights.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_rssi_snr_avg_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.conf_roam_trigger_settings }
%struct.conf_roam_trigger_settings = type { i32, i32, i32, i32 }
%struct.wl12xx_vif = type { i32 }
%struct.wl1271_acx_rssi_snr_avg_weights = type { i32, i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"acx rssi snr avg weights\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_RSSI_SNR_WEIGHTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"acx rssi snr trigger weights failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_rssi_snr_avg_weights(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca %struct.wl1271_acx_rssi_snr_avg_weights*, align 8
  %6 = alloca %struct.conf_roam_trigger_settings*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  store %struct.wl1271_acx_rssi_snr_avg_weights* null, %struct.wl1271_acx_rssi_snr_avg_weights** %5, align 8
  %8 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %9 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.conf_roam_trigger_settings* %10, %struct.conf_roam_trigger_settings** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @DEBUG_ACX, align 4
  %12 = call i32 @wl1271_debug(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.wl1271_acx_rssi_snr_avg_weights* @kzalloc(i32 20, i32 %13)
  store %struct.wl1271_acx_rssi_snr_avg_weights* %14, %struct.wl1271_acx_rssi_snr_avg_weights** %5, align 8
  %15 = load %struct.wl1271_acx_rssi_snr_avg_weights*, %struct.wl1271_acx_rssi_snr_avg_weights** %5, align 8
  %16 = icmp ne %struct.wl1271_acx_rssi_snr_avg_weights* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %56

20:                                               ; preds = %2
  %21 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %22 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wl1271_acx_rssi_snr_avg_weights*, %struct.wl1271_acx_rssi_snr_avg_weights** %5, align 8
  %25 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_avg_weights, %struct.wl1271_acx_rssi_snr_avg_weights* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.conf_roam_trigger_settings*, %struct.conf_roam_trigger_settings** %6, align 8
  %27 = getelementptr inbounds %struct.conf_roam_trigger_settings, %struct.conf_roam_trigger_settings* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wl1271_acx_rssi_snr_avg_weights*, %struct.wl1271_acx_rssi_snr_avg_weights** %5, align 8
  %30 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_avg_weights, %struct.wl1271_acx_rssi_snr_avg_weights* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.conf_roam_trigger_settings*, %struct.conf_roam_trigger_settings** %6, align 8
  %32 = getelementptr inbounds %struct.conf_roam_trigger_settings, %struct.conf_roam_trigger_settings* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wl1271_acx_rssi_snr_avg_weights*, %struct.wl1271_acx_rssi_snr_avg_weights** %5, align 8
  %35 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_avg_weights, %struct.wl1271_acx_rssi_snr_avg_weights* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.conf_roam_trigger_settings*, %struct.conf_roam_trigger_settings** %6, align 8
  %37 = getelementptr inbounds %struct.conf_roam_trigger_settings, %struct.conf_roam_trigger_settings* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wl1271_acx_rssi_snr_avg_weights*, %struct.wl1271_acx_rssi_snr_avg_weights** %5, align 8
  %40 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_avg_weights, %struct.wl1271_acx_rssi_snr_avg_weights* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.conf_roam_trigger_settings*, %struct.conf_roam_trigger_settings** %6, align 8
  %42 = getelementptr inbounds %struct.conf_roam_trigger_settings, %struct.conf_roam_trigger_settings* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wl1271_acx_rssi_snr_avg_weights*, %struct.wl1271_acx_rssi_snr_avg_weights** %5, align 8
  %45 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_avg_weights, %struct.wl1271_acx_rssi_snr_avg_weights* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %47 = load i32, i32* @ACX_RSSI_SNR_WEIGHTS, align 4
  %48 = load %struct.wl1271_acx_rssi_snr_avg_weights*, %struct.wl1271_acx_rssi_snr_avg_weights** %5, align 8
  %49 = call i32 @wl1271_cmd_configure(%struct.wl1271* %46, i32 %47, %struct.wl1271_acx_rssi_snr_avg_weights* %48, i32 20)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %20
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @wl1271_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %56

55:                                               ; preds = %20
  br label %56

56:                                               ; preds = %55, %52, %17
  %57 = load %struct.wl1271_acx_rssi_snr_avg_weights*, %struct.wl1271_acx_rssi_snr_avg_weights** %5, align 8
  %58 = call i32 @kfree(%struct.wl1271_acx_rssi_snr_avg_weights* %57)
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_acx_rssi_snr_avg_weights* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_rssi_snr_avg_weights*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_rssi_snr_avg_weights*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
