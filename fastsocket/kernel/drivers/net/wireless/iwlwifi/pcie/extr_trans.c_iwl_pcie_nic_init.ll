; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_pcie_nic_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_pcie_nic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_trans_pcie = type { i32 }

@CSR_INT_COALESCING = common dso_local global i32 0, align 4
@IWL_HOST_INT_CALIB_TIMEOUT_DEF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSR_MAC_SHADOW_REG_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Enabling shadow registers in device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_pcie_nic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_nic_init(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  %5 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %4, align 8
  %8 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %8, i32 0, i32 0
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %13 = call i32 @iwl_pcie_apm_init(%struct.iwl_trans* %12)
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %15 = load i32, i32* @CSR_INT_COALESCING, align 4
  %16 = load i32, i32* @IWL_HOST_INT_CALIB_TIMEOUT_DEF, align 4
  %17 = call i32 @iwl_write8(%struct.iwl_trans* %14, i32 %15, i32 %16)
  %18 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %19 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %23 = call i32 @iwl_pcie_set_pwr(%struct.iwl_trans* %22, i32 0)
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %25 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @iwl_op_mode_nic_config(i32 %26)
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %29 = call i32 @iwl_pcie_rx_init(%struct.iwl_trans* %28)
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %31 = call i64 @iwl_pcie_tx_init(%struct.iwl_trans* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %52

36:                                               ; preds = %1
  %37 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %38 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %47 = load i32, i32* @CSR_MAC_SHADOW_REG_CTRL, align 4
  %48 = call i32 @iwl_set_bit(%struct.iwl_trans* %46, i32 %47, i32 -2146435073)
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %50 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %45, %36
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iwl_pcie_apm_init(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write8(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iwl_pcie_set_pwr(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_op_mode_nic_config(i32) #1

declare dso_local i32 @iwl_pcie_rx_init(%struct.iwl_trans*) #1

declare dso_local i64 @iwl_pcie_tx_init(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
