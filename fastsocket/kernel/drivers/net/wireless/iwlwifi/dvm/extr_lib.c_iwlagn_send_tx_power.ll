; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_lib.c_iwlagn_send_tx_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_lib.c_iwlagn_send_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.iwlagn_tx_power_dbm_cmd = type { i64, i32, i32 }

@STATUS_SCAN_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"TX Power requested while scanning!\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@IWLAGN_TX_POWER_NO_CLOSED = common dso_local global i32 0, align 4
@IWLAGN_TX_POWER_AUTO = common dso_local global i32 0, align 4
@REPLY_TX_POWER_DBM_CMD_V1 = common dso_local global i32 0, align 4
@REPLY_TX_POWER_DBM_CMD = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_send_tx_power(%struct.iwl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwlagn_tx_power_dbm_cmd, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  %6 = load i32, i32* @STATUS_SCAN_HW, align 4
  %7 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %7, i32 0, i32 3
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  %10 = call i64 @WARN_ONCE(i32 %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 2, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.iwlagn_tx_power_dbm_cmd, %struct.iwlagn_tx_power_dbm_cmd* %4, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = getelementptr inbounds %struct.iwlagn_tx_power_dbm_cmd, %struct.iwlagn_tx_power_dbm_cmd* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %23, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %15
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.iwlagn_tx_power_dbm_cmd, %struct.iwlagn_tx_power_dbm_cmd* %4, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %15
  %38 = load i32, i32* @IWLAGN_TX_POWER_NO_CLOSED, align 4
  %39 = getelementptr inbounds %struct.iwlagn_tx_power_dbm_cmd, %struct.iwlagn_tx_power_dbm_cmd* %4, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @IWLAGN_TX_POWER_AUTO, align 4
  %41 = getelementptr inbounds %struct.iwlagn_tx_power_dbm_cmd, %struct.iwlagn_tx_power_dbm_cmd* %4, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %43 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @IWL_UCODE_API(i32 %46)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @REPLY_TX_POWER_DBM_CMD_V1, align 4
  store i32 %50, i32* %5, align 4
  br label %53

51:                                               ; preds = %37
  %52 = load i32, i32* @REPLY_TX_POWER_DBM_CMD, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @CMD_SYNC, align 4
  %57 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %54, i32 %55, i32 %56, i32 16, %struct.iwlagn_tx_power_dbm_cmd* %4)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_UCODE_API(i32) #1

declare dso_local i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, %struct.iwlagn_tx_power_dbm_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
