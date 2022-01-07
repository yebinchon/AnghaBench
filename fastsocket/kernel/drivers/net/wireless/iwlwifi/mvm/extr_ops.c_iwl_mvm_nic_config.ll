; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_ops.c_iwl_mvm_nic_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_ops.c_iwl_mvm_nic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.iwl_mvm = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FW_PHY_CFG_RADIO_TYPE = common dso_local global i32 0, align 4
@FW_PHY_CFG_RADIO_TYPE_POS = common dso_local global i32 0, align 4
@FW_PHY_CFG_RADIO_STEP = common dso_local global i32 0, align 4
@FW_PHY_CFG_RADIO_STEP_POS = common dso_local global i32 0, align 4
@FW_PHY_CFG_RADIO_DASH = common dso_local global i32 0, align 4
@FW_PHY_CFG_RADIO_DASH_POS = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_MAC_STEP = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_MAC_DASH = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_PHY_STEP = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_PHY_DASH = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_MAC_SI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Radio type=0x%x-0x%x-0x%x\0A\00", align 1
@APMG_PS_CTRL_REG = common dso_local global i32 0, align 4
@APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*)* @iwl_mvm_nic_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_nic_config(%struct.iwl_op_mode* %0) #0 {
  %2 = alloca %struct.iwl_op_mode*, align 8
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %2, align 8
  %8 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %2, align 8
  %9 = call %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode* %8)
  store %struct.iwl_mvm* %9, %struct.iwl_mvm** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FW_PHY_CFG_RADIO_TYPE, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @FW_PHY_CFG_RADIO_TYPE_POS, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FW_PHY_CFG_RADIO_STEP, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @FW_PHY_CFG_RADIO_STEP_POS, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FW_PHY_CFG_RADIO_DASH, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @FW_PHY_CFG_RADIO_DASH_POS, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CSR_HW_REV_STEP(i32 %41)
  %43 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_MAC_STEP, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @CSR_HW_REV_DASH(i32 %51)
  %53 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_MAC_DASH, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_PHY_STEP, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_PHY_DASH, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = call i32 @WARN_ON(i32 %77)
  %79 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %86 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH, align 4
  %87 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_MAC_SI, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @iwl_trans_set_bits_mask(%struct.TYPE_5__* %84, i32 %85, i32 %98, i32 %99)
  %101 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %103, i32 %104)
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = load i32, i32* @APMG_PS_CTRL_REG, align 4
  %110 = load i32, i32* @APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS, align 4
  %111 = load i32, i32* @APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS, align 4
  %112 = xor i32 %111, -1
  %113 = call i32 @iwl_set_bits_mask_prph(%struct.TYPE_5__* %108, i32 %109, i32 %110, i32 %112)
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode*) #1

declare dso_local i32 @CSR_HW_REV_STEP(i32) #1

declare dso_local i32 @CSR_HW_REV_DASH(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_trans_set_bits_mask(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*, i32, i32, i32) #1

declare dso_local i32 @iwl_set_bits_mask_prph(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
