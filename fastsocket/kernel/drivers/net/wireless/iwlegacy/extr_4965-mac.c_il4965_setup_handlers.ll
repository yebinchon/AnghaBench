; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_setup_handlers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_setup_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i8** }

@il4965_hdl_alive = common dso_local global i8* null, align 8
@N_ALIVE = common dso_local global i64 0, align 8
@il_hdl_error = common dso_local global i8* null, align 8
@N_ERROR = common dso_local global i64 0, align 8
@il_hdl_csa = common dso_local global i8* null, align 8
@N_CHANNEL_SWITCH = common dso_local global i64 0, align 8
@il_hdl_spectrum_measurement = common dso_local global i8* null, align 8
@N_SPECTRUM_MEASUREMENT = common dso_local global i64 0, align 8
@il_hdl_pm_sleep = common dso_local global i8* null, align 8
@N_PM_SLEEP = common dso_local global i64 0, align 8
@il_hdl_pm_debug_stats = common dso_local global i8* null, align 8
@N_PM_DEBUG_STATS = common dso_local global i64 0, align 8
@il4965_hdl_beacon = common dso_local global i8* null, align 8
@N_BEACON = common dso_local global i64 0, align 8
@il4965_hdl_c_stats = common dso_local global i8* null, align 8
@C_STATS = common dso_local global i64 0, align 8
@il4965_hdl_stats = common dso_local global i8* null, align 8
@N_STATS = common dso_local global i64 0, align 8
@il4965_hdl_card_state = common dso_local global i8* null, align 8
@N_CARD_STATE = common dso_local global i64 0, align 8
@il4965_hdl_missed_beacon = common dso_local global i8* null, align 8
@N_MISSED_BEACONS = common dso_local global i64 0, align 8
@il4965_hdl_rx_phy = common dso_local global i8* null, align 8
@N_RX_PHY = common dso_local global i64 0, align 8
@il4965_hdl_rx = common dso_local global i8* null, align 8
@N_RX_MPDU = common dso_local global i64 0, align 8
@N_RX = common dso_local global i64 0, align 8
@il4965_hdl_compressed_ba = common dso_local global i8* null, align 8
@N_COMPRESSED_BA = common dso_local global i64 0, align 8
@il4965_hdl_tx = common dso_local global i8* null, align 8
@C_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il4965_setup_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_setup_handlers(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %3 = load i8*, i8** @il4965_hdl_alive, align 8
  %4 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %5 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %4, i32 0, i32 0
  %6 = load i8**, i8*** %5, align 8
  %7 = load i64, i64* @N_ALIVE, align 8
  %8 = getelementptr inbounds i8*, i8** %6, i64 %7
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** @il_hdl_error, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  %13 = load i64, i64* @N_ERROR, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  store i8* %9, i8** %14, align 8
  %15 = load i8*, i8** @il_hdl_csa, align 8
  %16 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = load i64, i64* @N_CHANNEL_SWITCH, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  store i8* %15, i8** %20, align 8
  %21 = load i8*, i8** @il_hdl_spectrum_measurement, align 8
  %22 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = load i64, i64* @N_SPECTRUM_MEASUREMENT, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  store i8* %21, i8** %26, align 8
  %27 = load i8*, i8** @il_hdl_pm_sleep, align 8
  %28 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %29 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = load i64, i64* @N_PM_SLEEP, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  store i8* %27, i8** %32, align 8
  %33 = load i8*, i8** @il_hdl_pm_debug_stats, align 8
  %34 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = load i64, i64* @N_PM_DEBUG_STATS, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  store i8* %33, i8** %38, align 8
  %39 = load i8*, i8** @il4965_hdl_beacon, align 8
  %40 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i64, i64* @N_BEACON, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  store i8* %39, i8** %44, align 8
  %45 = load i8*, i8** @il4965_hdl_c_stats, align 8
  %46 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i64, i64* @C_STATS, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  store i8* %45, i8** %50, align 8
  %51 = load i8*, i8** @il4965_hdl_stats, align 8
  %52 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %53 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = load i64, i64* @N_STATS, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  store i8* %51, i8** %56, align 8
  %57 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %58 = call i32 @il_setup_rx_scan_handlers(%struct.il_priv* %57)
  %59 = load i8*, i8** @il4965_hdl_card_state, align 8
  %60 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %61 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = load i64, i64* @N_CARD_STATE, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  store i8* %59, i8** %64, align 8
  %65 = load i8*, i8** @il4965_hdl_missed_beacon, align 8
  %66 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %67 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = load i64, i64* @N_MISSED_BEACONS, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  store i8* %65, i8** %70, align 8
  %71 = load i8*, i8** @il4965_hdl_rx_phy, align 8
  %72 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %73 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = load i64, i64* @N_RX_PHY, align 8
  %76 = getelementptr inbounds i8*, i8** %74, i64 %75
  store i8* %71, i8** %76, align 8
  %77 = load i8*, i8** @il4965_hdl_rx, align 8
  %78 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %79 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %78, i32 0, i32 0
  %80 = load i8**, i8*** %79, align 8
  %81 = load i64, i64* @N_RX_MPDU, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  store i8* %77, i8** %82, align 8
  %83 = load i8*, i8** @il4965_hdl_rx, align 8
  %84 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %85 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %84, i32 0, i32 0
  %86 = load i8**, i8*** %85, align 8
  %87 = load i64, i64* @N_RX, align 8
  %88 = getelementptr inbounds i8*, i8** %86, i64 %87
  store i8* %83, i8** %88, align 8
  %89 = load i8*, i8** @il4965_hdl_compressed_ba, align 8
  %90 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %91 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %90, i32 0, i32 0
  %92 = load i8**, i8*** %91, align 8
  %93 = load i64, i64* @N_COMPRESSED_BA, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  store i8* %89, i8** %94, align 8
  %95 = load i8*, i8** @il4965_hdl_tx, align 8
  %96 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %97 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %96, i32 0, i32 0
  %98 = load i8**, i8*** %97, align 8
  %99 = load i64, i64* @C_TX, align 8
  %100 = getelementptr inbounds i8*, i8** %98, i64 %99
  store i8* %95, i8** %100, align 8
  ret void
}

declare dso_local i32 @il_setup_rx_scan_handlers(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
