; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_setup_handlers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_setup_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32* }

@il3945_hdl_alive = common dso_local global i32 0, align 4
@N_ALIVE = common dso_local global i64 0, align 8
@il3945_hdl_add_sta = common dso_local global i32 0, align 4
@C_ADD_STA = common dso_local global i64 0, align 8
@il_hdl_error = common dso_local global i32 0, align 4
@N_ERROR = common dso_local global i64 0, align 8
@il_hdl_csa = common dso_local global i32 0, align 4
@N_CHANNEL_SWITCH = common dso_local global i64 0, align 8
@il_hdl_spectrum_measurement = common dso_local global i32 0, align 4
@N_SPECTRUM_MEASUREMENT = common dso_local global i64 0, align 8
@il_hdl_pm_sleep = common dso_local global i32 0, align 4
@N_PM_SLEEP = common dso_local global i64 0, align 8
@il_hdl_pm_debug_stats = common dso_local global i32 0, align 4
@N_PM_DEBUG_STATS = common dso_local global i64 0, align 8
@il3945_hdl_beacon = common dso_local global i32 0, align 4
@N_BEACON = common dso_local global i64 0, align 8
@il3945_hdl_c_stats = common dso_local global i32 0, align 4
@C_STATS = common dso_local global i64 0, align 8
@il3945_hdl_stats = common dso_local global i32 0, align 4
@N_STATS = common dso_local global i64 0, align 8
@il3945_hdl_card_state = common dso_local global i32 0, align 4
@N_CARD_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il3945_setup_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_setup_handlers(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %3 = load i32, i32* @il3945_hdl_alive, align 4
  %4 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %5 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @N_ALIVE, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @il3945_hdl_add_sta, align 4
  %10 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @C_ADD_STA, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %9, i32* %14, align 4
  %15 = load i32, i32* @il_hdl_error, align 4
  %16 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @N_ERROR, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  %21 = load i32, i32* @il_hdl_csa, align 4
  %22 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @N_CHANNEL_SWITCH, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %21, i32* %26, align 4
  %27 = load i32, i32* @il_hdl_spectrum_measurement, align 4
  %28 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %29 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @N_SPECTRUM_MEASUREMENT, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* @il_hdl_pm_sleep, align 4
  %34 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @N_PM_SLEEP, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = load i32, i32* @il_hdl_pm_debug_stats, align 4
  %40 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @N_PM_DEBUG_STATS, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* @il3945_hdl_beacon, align 4
  %46 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @N_BEACON, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load i32, i32* @il3945_hdl_c_stats, align 4
  %52 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %53 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @C_STATS, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* @il3945_hdl_stats, align 4
  %58 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %59 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @N_STATS, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %64 = call i32 @il_setup_rx_scan_handlers(%struct.il_priv* %63)
  %65 = load i32, i32* @il3945_hdl_card_state, align 4
  %66 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %67 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @N_CARD_STATE, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %72 = call i32 @il3945_hw_handler_setup(%struct.il_priv* %71)
  ret void
}

declare dso_local i32 @il_setup_rx_scan_handlers(%struct.il_priv*) #1

declare dso_local i32 @il3945_hw_handler_setup(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
