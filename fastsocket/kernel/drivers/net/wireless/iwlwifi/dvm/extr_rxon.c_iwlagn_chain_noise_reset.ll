; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwlagn_chain_noise_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwlagn_chain_noise_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, %struct.iwl_chain_noise_data }
%struct.iwl_chain_noise_data = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.iwl_calib_chain_noise_reset_cmd = type { i32 }

@IWL_CHAIN_NOISE_CALIB_DISABLED = common dso_local global i32 0, align 4
@IWL_CHAIN_NOISE_ALIVE = common dso_local global i64 0, align 8
@REPLY_PHY_CALIBRATION_CMD = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not send REPLY_PHY_CALIBRATION_CMD\0A\00", align 1
@IWL_CHAIN_NOISE_ACCUMULATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Run chain_noise_calibrate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*)* @iwlagn_chain_noise_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_chain_noise_reset(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca %struct.iwl_chain_noise_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_calib_chain_noise_reset_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 2
  store %struct.iwl_chain_noise_data* %7, %struct.iwl_chain_noise_data** %3, align 8
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %9 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IWL_CHAIN_NOISE_CALIB_DISABLED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IWL_CHAIN_NOISE_ALIVE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %15
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %23 = call i64 @iwl_is_any_associated(%struct.iwl_priv* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %3, align 8
  %27 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %26, i32 0, i32 7
  store i64 0, i64* %27, align 8
  %28 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %3, align 8
  %31 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %3, align 8
  %35 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = call i32 @memset(%struct.iwl_calib_chain_noise_reset_cmd* %5, i32 0, i32 4)
  %41 = getelementptr inbounds %struct.iwl_calib_chain_noise_reset_cmd, %struct.iwl_calib_chain_noise_reset_cmd* %5, i32 0, i32 0
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %43 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @iwl_set_calib_hdr(i32* %41, i32 %44)
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %47 = load i32, i32* @REPLY_PHY_CALIBRATION_CMD, align 4
  %48 = load i32, i32* @CMD_SYNC, align 4
  %49 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %46, i32 %47, i32 %48, i32 4, %struct.iwl_calib_chain_noise_reset_cmd* %5)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %25
  %53 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %54 = call i32 @IWL_ERR(%struct.iwl_priv* %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %25
  %56 = load i64, i64* @IWL_CHAIN_NOISE_ACCUMULATE, align 8
  %57 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %3, align 8
  %58 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %60 = call i32 @IWL_DEBUG_CALIB(%struct.iwl_priv* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %14, %55, %21, %15
  ret void
}

declare dso_local i64 @iwl_is_any_associated(%struct.iwl_priv*) #1

declare dso_local i32 @memset(%struct.iwl_calib_chain_noise_reset_cmd*, i32, i32) #1

declare dso_local i32 @iwl_set_calib_hdr(i32*, i32) #1

declare dso_local i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, %struct.iwl_calib_chain_noise_reset_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
