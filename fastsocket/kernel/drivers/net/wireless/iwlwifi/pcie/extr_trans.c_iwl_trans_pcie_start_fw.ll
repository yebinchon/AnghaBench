; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_start_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_start_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.fw_img = type { i32 }
%struct.iwl_trans_pcie = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Exit HW not ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@STATUS_FW_ERROR = common dso_local global i32 0, align 4
@STATUS_RFKILL = common dso_local global i32 0, align 4
@ERFKILL = common dso_local global i32 0, align 4
@CSR_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unable to init nic\0A\00", align 1
@CSR_UCODE_DRV_GP1_CLR = common dso_local global i32 0, align 4
@CSR_UCODE_SW_BIT_RFKILL = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.fw_img*, i32)* @iwl_trans_pcie_start_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_start_fw(%struct.iwl_trans* %0, %struct.fw_img* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca %struct.fw_img*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_trans_pcie*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store %struct.fw_img* %1, %struct.fw_img** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %12 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %11)
  store %struct.iwl_trans_pcie* %12, %struct.iwl_trans_pcie** %8, align 8
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %14 = call i64 @iwl_pcie_prepare_card_hw(%struct.iwl_trans* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %18 = call i32 @IWL_WARN(%struct.iwl_trans* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %93

21:                                               ; preds = %3
  %22 = load i32, i32* @STATUS_FW_ERROR, align 4
  %23 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %24 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %23, i32 0, i32 0
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %27 = call i32 @iwl_enable_rfkill_int(%struct.iwl_trans* %26)
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %29 = call i32 @iwl_is_rfkill_set(%struct.iwl_trans* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load i32, i32* @STATUS_RFKILL, align 4
  %34 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %35 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %34, i32 0, i32 0
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  br label %42

37:                                               ; preds = %21
  %38 = load i32, i32* @STATUS_RFKILL, align 4
  %39 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %40 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %39, i32 0, i32 0
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @iwl_op_mode_hw_rf_kill(i32 %45, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @ERFKILL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %93

56:                                               ; preds = %50, %42
  %57 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %58 = load i32, i32* @CSR_INT, align 4
  %59 = call i32 @iwl_write32(%struct.iwl_trans* %57, i32 %58, i32 -1)
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %61 = call i32 @iwl_pcie_nic_init(%struct.iwl_trans* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %66 = call i32 @IWL_ERR(%struct.iwl_trans* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %93

68:                                               ; preds = %56
  %69 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %70 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %71 = load i32, i32* @CSR_UCODE_SW_BIT_RFKILL, align 4
  %72 = call i32 @iwl_write32(%struct.iwl_trans* %69, i32 %70, i32 %71)
  %73 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %74 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %75 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED, align 4
  %76 = call i32 @iwl_write32(%struct.iwl_trans* %73, i32 %74, i32 %75)
  %77 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %78 = load i32, i32* @CSR_INT, align 4
  %79 = call i32 @iwl_write32(%struct.iwl_trans* %77, i32 %78, i32 -1)
  %80 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %81 = call i32 @iwl_enable_interrupts(%struct.iwl_trans* %80)
  %82 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %83 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %84 = load i32, i32* @CSR_UCODE_SW_BIT_RFKILL, align 4
  %85 = call i32 @iwl_write32(%struct.iwl_trans* %82, i32 %83, i32 %84)
  %86 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %87 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %88 = load i32, i32* @CSR_UCODE_SW_BIT_RFKILL, align 4
  %89 = call i32 @iwl_write32(%struct.iwl_trans* %86, i32 %87, i32 %88)
  %90 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %91 = load %struct.fw_img*, %struct.fw_img** %6, align 8
  %92 = call i32 @iwl_pcie_load_given_ucode(%struct.iwl_trans* %90, %struct.fw_img* %91)
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %68, %64, %53, %16
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @iwl_pcie_prepare_card_hw(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_enable_rfkill_int(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_is_rfkill_set(%struct.iwl_trans*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @iwl_op_mode_hw_rf_kill(i32, i32) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_pcie_nic_init(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_enable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_load_given_ucode(%struct.iwl_trans*, %struct.fw_img*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
