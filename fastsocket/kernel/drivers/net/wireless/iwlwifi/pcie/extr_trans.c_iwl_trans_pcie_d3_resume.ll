; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_d3_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_d3_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

@CSR_RESET = common dso_local global i32 0, align 4
@CSR_RESET_REG_FLAG_NEVO_RESET = common dso_local global i32 0, align 4
@IWL_D3_STATUS_RESET = common dso_local global i32 0, align 4
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_INIT_DONE = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to resume the device (mac ready)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to resume the device (RX reset)\0A\00", align 1
@CSR_UCODE_DRV_GP1_CLR = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_BIT_D3_CFG_COMPLETE = common dso_local global i32 0, align 4
@IWL_D3_STATUS_ALIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32*)* @iwl_trans_pcie_d3_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_d3_resume(%struct.iwl_trans* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %9 = call i32 @iwl_pcie_set_pwr(%struct.iwl_trans* %8, i32 0)
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %11 = load i32, i32* @CSR_RESET, align 4
  %12 = call i32 @iwl_read32(%struct.iwl_trans* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @CSR_RESET_REG_FLAG_NEVO_RESET, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @IWL_D3_STATUS_RESET, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %22 = call i32 @iwl_pcie_reset_ict(%struct.iwl_trans* %21)
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %24 = load i32, i32* @CSR_GP_CNTRL, align 4
  %25 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ, align 4
  %26 = call i32 @iwl_set_bit(%struct.iwl_trans* %23, i32 %24, i32 %25)
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %28 = load i32, i32* @CSR_GP_CNTRL, align 4
  %29 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_INIT_DONE, align 4
  %30 = call i32 @iwl_set_bit(%struct.iwl_trans* %27, i32 %28, i32 %29)
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %32 = load i32, i32* @CSR_GP_CNTRL, align 4
  %33 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, align 4
  %34 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, align 4
  %35 = call i32 @iwl_poll_bit(%struct.iwl_trans* %31, i32 %32, i32 %33, i32 %34, i32 25000)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %20
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %40 = call i32 @IWL_ERR(%struct.iwl_trans* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %60

42:                                               ; preds = %20
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %44 = call i32 @iwl_trans_pcie_tx_reset(%struct.iwl_trans* %43)
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %46 = call i32 @iwl_pcie_rx_init(%struct.iwl_trans* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %51 = call i32 @IWL_ERR(%struct.iwl_trans* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %60

53:                                               ; preds = %42
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %55 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %56 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_D3_CFG_COMPLETE, align 4
  %57 = call i32 @iwl_write32(%struct.iwl_trans* %54, i32 %55, i32 %56)
  %58 = load i32, i32* @IWL_D3_STATUS_ALIVE, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %49, %38, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @iwl_pcie_set_pwr(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_pcie_reset_ict(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_poll_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_trans_pcie_tx_reset(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_rx_init(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
