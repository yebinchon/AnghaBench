; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_grab_nic_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_grab_nic_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32 }

@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_VAL_MAC_ACCESS_EN = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP = common dso_local global i32 0, align 4
@CSR_RESET = common dso_local global i32 0, align 4
@CSR_RESET_REG_FLAG_FORCE_NMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Timeout waiting for hardware access (CSR_GP_CNTRL 0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32, i64*)* @iwl_trans_pcie_grab_nic_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_grab_nic_access(%struct.iwl_trans* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_trans_pcie*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %12 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %11)
  store %struct.iwl_trans_pcie* %12, %struct.iwl_trans_pcie** %9, align 8
  %13 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %9, align 8
  %14 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %13, i32 0, i32 0
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %14, i64 %16)
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %19 = load i32, i32* @CSR_GP_CNTRL, align 4
  %20 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ, align 4
  %21 = call i32 @__iwl_trans_pcie_set_bit(%struct.iwl_trans* %18, i32 %19, i32 %20)
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %23 = load i32, i32* @CSR_GP_CNTRL, align 4
  %24 = load i32, i32* @CSR_GP_CNTRL_REG_VAL_MAC_ACCESS_EN, align 4
  %25 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, align 4
  %26 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @iwl_poll_bit(%struct.iwl_trans* %22, i32 %23, i32 %24, i32 %27, i32 15000)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %3
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %36 = load i32, i32* @CSR_RESET, align 4
  %37 = load i32, i32* @CSR_RESET_REG_FLAG_FORCE_NMI, align 4
  %38 = call i32 @iwl_write32(%struct.iwl_trans* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %34
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %43 = load i32, i32* @CSR_GP_CNTRL, align 4
  %44 = call i32 @iwl_read32(%struct.iwl_trans* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %9, align 8
  %48 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %47, i32 0, i32 0
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %50)
  store i32 0, i32* %4, align 4
  br label %57

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %3
  %54 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %9, align 8
  %55 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %54, i32 0, i32 0
  %56 = call i32 @__release(i32* %55)
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %41
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__iwl_trans_pcie_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_poll_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
