; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_setup_rx_scan_handlers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_setup_rx_scan_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32* }

@iwl_rx_reply_scan = common dso_local global i32 0, align 4
@REPLY_SCAN_CMD = common dso_local global i64 0, align 8
@iwl_rx_scan_start_notif = common dso_local global i32 0, align 4
@SCAN_START_NOTIFICATION = common dso_local global i64 0, align 8
@iwl_rx_scan_results_notif = common dso_local global i32 0, align 4
@SCAN_RESULTS_NOTIFICATION = common dso_local global i64 0, align 8
@iwl_rx_scan_complete_notif = common dso_local global i32 0, align 4
@SCAN_COMPLETE_NOTIFICATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_setup_rx_scan_handlers(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %3 = load i32, i32* @iwl_rx_reply_scan, align 4
  %4 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @REPLY_SCAN_CMD, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @iwl_rx_scan_start_notif, align 4
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %11 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @SCAN_START_NOTIFICATION, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %9, i32* %14, align 4
  %15 = load i32, i32* @iwl_rx_scan_results_notif, align 4
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @SCAN_RESULTS_NOTIFICATION, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  %21 = load i32, i32* @iwl_rx_scan_complete_notif, align 4
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @SCAN_COMPLETE_NOTIFICATION, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %21, i32* %26, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
