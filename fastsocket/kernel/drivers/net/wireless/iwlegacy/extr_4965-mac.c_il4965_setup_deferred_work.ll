; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_setup_deferred_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_setup_deferred_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@il4965_bg_restart = common dso_local global i32 0, align 4
@il4965_bg_rx_replenish = common dso_local global i32 0, align 4
@il4965_bg_run_time_calib_work = common dso_local global i32 0, align 4
@il4965_bg_init_alive_start = common dso_local global i32 0, align 4
@il4965_bg_alive_start = common dso_local global i32 0, align 4
@il4965_bg_txpower_work = common dso_local global i32 0, align 4
@il4965_bg_stats_periodic = common dso_local global i32 0, align 4
@il_bg_watchdog = common dso_local global i32 0, align 4
@il4965_irq_tasklet = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il4965_setup_deferred_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_setup_deferred_work(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %3 = load i32, i32* @DRV_NAME, align 4
  %4 = call i32 @create_singlethread_workqueue(i32 %3)
  %5 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %6 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %5, i32 0, i32 10
  store i32 %4, i32* %6, align 4
  %7 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 9
  %9 = call i32 @init_waitqueue_head(i32* %8)
  %10 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 8
  %12 = load i32, i32* @il4965_bg_restart, align 4
  %13 = call i32 @INIT_WORK(i32* %11, i32 %12)
  %14 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 7
  %16 = load i32, i32* @il4965_bg_rx_replenish, align 4
  %17 = call i32 @INIT_WORK(i32* %15, i32 %16)
  %18 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 6
  %20 = load i32, i32* @il4965_bg_run_time_calib_work, align 4
  %21 = call i32 @INIT_WORK(i32* %19, i32 %20)
  %22 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 5
  %24 = load i32, i32* @il4965_bg_init_alive_start, align 4
  %25 = call i32 @INIT_DELAYED_WORK(i32* %23, i32 %24)
  %26 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 4
  %28 = load i32, i32* @il4965_bg_alive_start, align 4
  %29 = call i32 @INIT_DELAYED_WORK(i32* %27, i32 %28)
  %30 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %31 = call i32 @il_setup_scan_deferred_work(%struct.il_priv* %30)
  %32 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 3
  %34 = load i32, i32* @il4965_bg_txpower_work, align 4
  %35 = call i32 @INIT_WORK(i32* %33, i32 %34)
  %36 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %37 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %36, i32 0, i32 2
  %38 = call i32 @init_timer(%struct.TYPE_2__* %37)
  %39 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %40 = ptrtoint %struct.il_priv* %39 to i64
  %41 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %42 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load i32, i32* @il4965_bg_stats_periodic, align 4
  %45 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %46 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %49 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %48, i32 0, i32 1
  %50 = call i32 @init_timer(%struct.TYPE_2__* %49)
  %51 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %52 = ptrtoint %struct.il_priv* %51 to i64
  %53 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %54 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load i32, i32* @il_bg_watchdog, align 4
  %57 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %58 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %61 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %60, i32 0, i32 0
  %62 = load i64, i64* @il4965_irq_tasklet, align 8
  %63 = inttoptr i64 %62 to void (i64)*
  %64 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %65 = ptrtoint %struct.il_priv* %64 to i64
  %66 = call i32 @tasklet_init(i32* %61, void (i64)* %63, i64 %65)
  ret void
}

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @il_setup_scan_deferred_work(%struct.il_priv*) #1

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
