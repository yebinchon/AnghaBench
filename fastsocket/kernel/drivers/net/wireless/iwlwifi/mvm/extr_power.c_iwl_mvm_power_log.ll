; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_power.c_iwl_mvm_power_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_power.c_iwl_mvm_power_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_powertable_cmd = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"Sending power table command for power level %d, flags = 0x%X\0A\00", align 1
@iwlmvm_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Keep alive = %u sec\0A\00", align 1
@POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Rx timeout = %u usec\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Tx timeout = %u usec\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"LP RX RSSI threshold = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_powertable_cmd*)* @iwl_mvm_power_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_power_log(%struct.iwl_mvm* %0, %struct.iwl_powertable_cmd* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_powertable_cmd*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_powertable_cmd* %1, %struct.iwl_powertable_cmd** %4, align 8
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlmvm_mod_params, i32 0, i32 0), align 4
  %7 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.iwl_powertable_cmd, %struct.iwl_powertable_cmd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le16_to_cpu(i32 %9)
  %11 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %5, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %10)
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %13 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_powertable_cmd, %struct.iwl_powertable_cmd* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.iwl_powertable_cmd, %struct.iwl_powertable_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK, align 4
  %21 = call i32 @cpu_to_le16(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %2
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %26 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_powertable_cmd, %struct.iwl_powertable_cmd* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %32 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.iwl_powertable_cmd, %struct.iwl_powertable_cmd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %38 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.iwl_powertable_cmd, %struct.iwl_powertable_cmd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %24, %2
  ret void
}

declare dso_local i32 @IWL_DEBUG_POWER(%struct.iwl_mvm*, i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
