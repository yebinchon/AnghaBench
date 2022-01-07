; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_irq_handle_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_irq_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_trans_pcie = type { i32, i32 }

@APMG_CLK_CTRL_REG = common dso_local global i32 0, align 4
@APMS_CLK_VAL_MRB_FUNC_MODE = common dso_local global i32 0, align 4
@APMG_PS_CTRL_REG = common dso_local global i32 0, align 4
@APMG_PS_CTRL_VAL_RESET_REQ = common dso_local global i32 0, align 4
@STATUS_HCMD_ACTIVE = common dso_local global i32 0, align 4
@STATUS_FW_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_pcie_irq_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_irq_handle_error(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %4)
  store %struct.iwl_trans_pcie* %5, %struct.iwl_trans_pcie** %3, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %1
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %14 = load i32, i32* @APMG_CLK_CTRL_REG, align 4
  %15 = call i32 @iwl_read_prph(%struct.iwl_trans* %13, i32 %14)
  %16 = load i32, i32* @APMS_CLK_VAL_MRB_FUNC_MODE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %21 = load i32, i32* @APMG_PS_CTRL_REG, align 4
  %22 = call i32 @iwl_read_prph(%struct.iwl_trans* %20, i32 %21)
  %23 = load i32, i32* @APMG_PS_CTRL_VAL_RESET_REQ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %19, %12
  %27 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %28 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %28, i32 0, i32 1
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %32 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @iwl_op_mode_wimax_active(i32 %33)
  %35 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %35, i32 0, i32 0
  %37 = call i32 @wake_up(i32* %36)
  br label %60

38:                                               ; preds = %19, %1
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %40 = call i32 @iwl_pcie_dump_csr(%struct.iwl_trans* %39)
  %41 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %42 = call i32 @iwl_pcie_dump_fh(%struct.iwl_trans* %41, i32* null)
  %43 = load i32, i32* @STATUS_FW_ERROR, align 4
  %44 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %45 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %44, i32 0, i32 1
  %46 = call i32 @set_bit(i32 %43, i32* %45)
  %47 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %48 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %49 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %48, i32 0, i32 1
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  %51 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %52 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %51, i32 0, i32 0
  %53 = call i32 @wake_up(i32* %52)
  %54 = call i32 (...) @local_bh_disable()
  %55 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %56 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @iwl_op_mode_nic_error(i32 %57)
  %59 = call i32 (...) @local_bh_enable()
  br label %60

60:                                               ; preds = %38, %26
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_read_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_op_mode_wimax_active(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @iwl_pcie_dump_csr(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_dump_fh(%struct.iwl_trans*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @iwl_op_mode_nic_error(i32) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
