; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_setup_deferred_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_setup_deferred_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@il3945_bg_restart = common dso_local global i32 0, align 4
@il3945_bg_rx_replenish = common dso_local global i32 0, align 4
@il3945_bg_init_alive_start = common dso_local global i32 0, align 4
@il3945_bg_alive_start = common dso_local global i32 0, align 4
@il3945_rfkill_poll = common dso_local global i32 0, align 4
@il_bg_watchdog = common dso_local global i32 0, align 4
@il3945_irq_tasklet = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il3945_setup_deferred_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_setup_deferred_work(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %3 = load i32, i32* @DRV_NAME, align 4
  %4 = call i32 @create_singlethread_workqueue(i32 %3)
  %5 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %6 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %5, i32 0, i32 8
  store i32 %4, i32* %6, align 8
  %7 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 7
  %9 = call i32 @init_waitqueue_head(i32* %8)
  %10 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 6
  %12 = load i32, i32* @il3945_bg_restart, align 4
  %13 = call i32 @INIT_WORK(i32* %11, i32 %12)
  %14 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 5
  %16 = load i32, i32* @il3945_bg_rx_replenish, align 4
  %17 = call i32 @INIT_WORK(i32* %15, i32 %16)
  %18 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 4
  %20 = load i32, i32* @il3945_bg_init_alive_start, align 4
  %21 = call i32 @INIT_DELAYED_WORK(i32* %19, i32 %20)
  %22 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 3
  %24 = load i32, i32* @il3945_bg_alive_start, align 4
  %25 = call i32 @INIT_DELAYED_WORK(i32* %23, i32 %24)
  %26 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* @il3945_rfkill_poll, align 4
  %30 = call i32 @INIT_DELAYED_WORK(i32* %28, i32 %29)
  %31 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %32 = call i32 @il_setup_scan_deferred_work(%struct.il_priv* %31)
  %33 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %34 = call i32 @il3945_hw_setup_deferred_work(%struct.il_priv* %33)
  %35 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %36 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %35, i32 0, i32 1
  %37 = call i32 @init_timer(%struct.TYPE_4__* %36)
  %38 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %39 = ptrtoint %struct.il_priv* %38 to i64
  %40 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load i32, i32* @il_bg_watchdog, align 4
  %44 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %45 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  %47 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 0
  %49 = load i64, i64* @il3945_irq_tasklet, align 8
  %50 = inttoptr i64 %49 to void (i64)*
  %51 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %52 = ptrtoint %struct.il_priv* %51 to i64
  %53 = call i32 @tasklet_init(i32* %48, void (i64)* %50, i64 %52)
  ret void
}

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @il_setup_scan_deferred_work(%struct.il_priv*) #1

declare dso_local i32 @il3945_hw_setup_deferred_work(%struct.il_priv*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
