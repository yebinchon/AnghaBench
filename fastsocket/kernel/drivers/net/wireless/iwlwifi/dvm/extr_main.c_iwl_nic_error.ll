; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_nic_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_nic_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.iwl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Loaded firmware version: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*)* @iwl_nic_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_nic_error(%struct.iwl_op_mode* %0) #0 {
  %2 = alloca %struct.iwl_op_mode*, align 8
  %3 = alloca %struct.iwl_priv*, align 8
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %2, align 8
  %4 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %2, align 8
  %5 = call %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode* %4)
  store %struct.iwl_priv* %5, %struct.iwl_priv** %3, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %7 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @IWL_ERR(%struct.iwl_priv* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %14 = call i32 @iwl_dump_nic_error_log(%struct.iwl_priv* %13)
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %16 = call i32 @iwl_dump_nic_event_log(%struct.iwl_priv* %15, i32 0, i32* null)
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %18 = call i32 @iwlagn_fw_error(%struct.iwl_priv* %17, i32 0)
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @iwl_dump_nic_error_log(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_dump_nic_event_log(%struct.iwl_priv*, i32, i32*) #1

declare dso_local i32 @iwlagn_fw_error(%struct.iwl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
