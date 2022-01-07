; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_rf_kill_ct_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_rf_kill_ct_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.iwl_ct_kill_config = type { i8*, i8*, i8* }
%struct.iwl_ct_kill_throttling_config = type { i8*, i8*, i8* }

@CSR_UCODE_DRV_GP1_CLR = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT = common dso_local global i32 0, align 4
@REPLY_CT_KILL_CONFIG_CMD = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"REPLY_CT_KILL_CONFIG_CMD failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"REPLY_CT_KILL_CONFIG_CMD succeeded, critical temperature enter is %d,exit is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"REPLY_CT_KILL_CONFIG_CMD succeeded, critical temperature is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*)* @iwl_rf_kill_ct_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_rf_kill_ct_config(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca %struct.iwl_ct_kill_config, align 8
  %4 = alloca %struct.iwl_ct_kill_throttling_config, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %10 = load i32, i32* @CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT, align 4
  %11 = call i32 @iwl_write32(i32 %8, i32 %9, i32 %10)
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %1
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %25 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds %struct.iwl_ct_kill_throttling_config, %struct.iwl_ct_kill_throttling_config* %4, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %31 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = getelementptr inbounds %struct.iwl_ct_kill_throttling_config, %struct.iwl_ct_kill_throttling_config* %4, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %37 = load i32, i32* @REPLY_CT_KILL_CONFIG_CMD, align 4
  %38 = load i32, i32* @CMD_SYNC, align 4
  %39 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %36, i32 %37, i32 %38, i32 24, %struct.iwl_ct_kill_throttling_config* %4)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %44 = call i32 @IWL_ERR(%struct.iwl_priv* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %56

45:                                               ; preds = %23
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %48 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %52 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_INFO(%struct.iwl_priv* %46, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %45, %42
  br label %82

57:                                               ; preds = %1
  %58 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %59 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = getelementptr inbounds %struct.iwl_ct_kill_config, %struct.iwl_ct_kill_config* %3, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %65 = load i32, i32* @REPLY_CT_KILL_CONFIG_CMD, align 4
  %66 = load i32, i32* @CMD_SYNC, align 4
  %67 = bitcast %struct.iwl_ct_kill_config* %3 to %struct.iwl_ct_kill_throttling_config*
  %68 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %64, i32 %65, i32 %66, i32 24, %struct.iwl_ct_kill_throttling_config* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %57
  %72 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %73 = call i32 @IWL_ERR(%struct.iwl_priv* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %81

74:                                               ; preds = %57
  %75 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %76 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %77 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_INFO(%struct.iwl_priv* %75, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %74, %71
  br label %82

82:                                               ; preds = %81, %56
  ret void
}

declare dso_local i32 @iwl_write32(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, %struct.iwl_ct_kill_throttling_config*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
