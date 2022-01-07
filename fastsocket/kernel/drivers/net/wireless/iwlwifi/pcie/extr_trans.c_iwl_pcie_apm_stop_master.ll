; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_pcie_apm_stop_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_pcie_apm_stop_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

@CSR_RESET = common dso_local global i32 0, align 4
@CSR_RESET_REG_FLAG_STOP_MASTER = common dso_local global i32 0, align 4
@CSR_RESET_REG_FLAG_MASTER_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Master Disable Timed Out, 100 usec\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"stop master\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_pcie_apm_stop_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_apm_stop_master(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = load i32, i32* @CSR_RESET, align 4
  %6 = load i32, i32* @CSR_RESET_REG_FLAG_STOP_MASTER, align 4
  %7 = call i32 @iwl_set_bit(%struct.iwl_trans* %4, i32 %5, i32 %6)
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %9 = load i32, i32* @CSR_RESET, align 4
  %10 = load i32, i32* @CSR_RESET_REG_FLAG_MASTER_DISABLED, align 4
  %11 = load i32, i32* @CSR_RESET_REG_FLAG_MASTER_DISABLED, align 4
  %12 = call i32 @iwl_poll_bit(%struct.iwl_trans* %8, i32 %9, i32 %10, i32 %11, i32 100)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %17 = call i32 @IWL_WARN(%struct.iwl_trans* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %20 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_poll_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
