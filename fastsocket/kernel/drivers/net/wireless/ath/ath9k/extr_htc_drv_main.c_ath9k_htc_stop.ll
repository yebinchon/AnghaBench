; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, i32, %struct.ath_hw*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.ath_hw = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ath_common = type { i32 }

@OP_INVALID = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Device not present\0A\00", align 1
@WMI_DISABLE_INTR_CMDID = common dso_local global i32 0, align 4
@WMI_DRAIN_TXQ_ALL_CMDID = common dso_local global i32 0, align 4
@WMI_STOP_RECV_CMDID = common dso_local global i32 0, align 4
@ATH9K_PM_FULL_SLEEP = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Driver halt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @ath9k_htc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  store %struct.ath9k_htc_priv* %10, %struct.ath9k_htc_priv** %3, align 8
  %11 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %11, i32 0, i32 2
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  store %struct.ath_hw* %13, %struct.ath_hw** %4, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %5, align 8
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* @OP_INVALID, align 4
  %20 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %26 = load i32, i32* @ANY, align 4
  %27 = call i32 @ath_dbg(%struct.ath_common* %25, i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %96

31:                                               ; preds = %1
  %32 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %33 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %32)
  %34 = load i32, i32* @WMI_DISABLE_INTR_CMDID, align 4
  %35 = call i32 @WMI_CMD(i32 %34)
  %36 = load i32, i32* @WMI_DRAIN_TXQ_ALL_CMDID, align 4
  %37 = call i32 @WMI_CMD(i32 %36)
  %38 = load i32, i32* @WMI_STOP_RECV_CMDID, align 4
  %39 = call i32 @WMI_CMD(i32 %38)
  %40 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %41 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %40, i32 0, i32 7
  %42 = call i32 @tasklet_kill(i32* %41)
  %43 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %44 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @del_timer_sync(i32* %45)
  %47 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %48 = call i32 @ath9k_htc_tx_drain(%struct.ath9k_htc_priv* %47)
  %49 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %50 = call i32 @ath9k_wmi_event_drain(%struct.ath9k_htc_priv* %49)
  %51 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %52 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %55 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %54, i32 0, i32 5
  %56 = call i32 @cancel_work_sync(i32* %55)
  %57 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %58 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %57, i32 0, i32 4
  %59 = call i32 @cancel_work_sync(i32* %58)
  %60 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %61 = call i32 @ath9k_htc_stop_ani(%struct.ath9k_htc_priv* %60)
  %62 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %63 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %62, i32 0, i32 0
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %66 = call i32 @ath9k_htc_stop_btcoex(%struct.ath9k_htc_priv* %65)
  %67 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %68 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %67, i32 0, i32 2
  %69 = load %struct.ath_hw*, %struct.ath_hw** %68, align 8
  %70 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %31
  %74 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %75 = call i32 @ath9k_htc_remove_monitor_interface(%struct.ath9k_htc_priv* %74)
  br label %76

76:                                               ; preds = %73, %31
  %77 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %78 = call i32 @ath9k_hw_phy_disable(%struct.ath_hw* %77)
  %79 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %80 = call i32 @ath9k_hw_disable(%struct.ath_hw* %79)
  %81 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %82 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %81)
  %83 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %84 = load i32, i32* @ATH9K_PM_FULL_SLEEP, align 4
  %85 = call i32 @ath9k_htc_setpower(%struct.ath9k_htc_priv* %83, i32 %84)
  %86 = load i32, i32* @OP_INVALID, align 4
  %87 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %88 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %87, i32 0, i32 1
  %89 = call i32 @set_bit(i32 %86, i32* %88)
  %90 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %91 = load i32, i32* @CONFIG, align 4
  %92 = call i32 @ath_dbg(%struct.ath_common* %90, i32 %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %94 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  br label %96

96:                                               ; preds = %76, %24
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @WMI_CMD(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ath9k_htc_tx_drain(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_wmi_event_drain(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ath9k_htc_stop_ani(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_stop_btcoex(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_remove_monitor_interface(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_hw_phy_disable(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_disable(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_setpower(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
