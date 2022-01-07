; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tt.c_iwl_rx_ant_restriction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tt.c_iwl_rx_ant_restriction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.iwl_tt_mgmt }
%struct.iwl_tt_mgmt = type { i32, %struct.iwl_tt_restriction*, i32 }
%struct.iwl_tt_restriction = type { i32 }

@IWL_ANT_OK_MULTI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_rx_ant_restriction(%struct.iwl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_tt_mgmt*, align 8
  %5 = alloca %struct.iwl_tt_restriction*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 0
  store %struct.iwl_tt_mgmt* %7, %struct.iwl_tt_mgmt** %4, align 8
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @IWL_ANT_OK_MULTI, align 4
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %16, i32 0, i32 1
  %18 = load %struct.iwl_tt_restriction*, %struct.iwl_tt_restriction** %17, align 8
  %19 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %4, align 8
  %20 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.iwl_tt_restriction, %struct.iwl_tt_restriction* %18, i64 %22
  store %struct.iwl_tt_restriction* %23, %struct.iwl_tt_restriction** %5, align 8
  %24 = load %struct.iwl_tt_restriction*, %struct.iwl_tt_restriction** %5, align 8
  %25 = getelementptr inbounds %struct.iwl_tt_restriction, %struct.iwl_tt_restriction* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %15, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
