; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_nic_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_nic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.iwl_priv = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 (%struct.iwl_priv*)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_MAC_STEP = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_MAC_DASH = common dso_local global i32 0, align 4
@EEPROM_RF_CONFIG_TYPE_MAX = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_PHY_STEP = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_PHY_DASH = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Radio type=0x%x-0x%x-0x%x\0A\00", align 1
@CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_MAC_SI = common dso_local global i32 0, align 4
@APMG_PS_CTRL_REG = common dso_local global i32 0, align 4
@APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*)* @iwl_nic_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_nic_config(%struct.iwl_op_mode* %0) #0 {
  %2 = alloca %struct.iwl_op_mode*, align 8
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %2, align 8
  %5 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %2, align 8
  %6 = call %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode* %5)
  store %struct.iwl_priv* %6, %struct.iwl_priv** %3, align 8
  %7 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %11 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH, align 4
  %12 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CSR_HW_REV_STEP(i32 %18)
  %20 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_MAC_STEP, align 4
  %21 = shl i32 %19, %20
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CSR_HW_REV_DASH(i32 %26)
  %28 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_MAC_DASH, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %21, %29
  %31 = call i32 @iwl_trans_set_bits_mask(%struct.TYPE_8__* %9, i32 %10, i32 %13, i32 %30)
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EEPROM_RF_CONFIG_TYPE_MAX, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %1
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE, align 4
  %46 = shl i32 %44, %45
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %48 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_PHY_STEP, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %46, %53
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %56 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_PHY_DASH, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %54, %61
  store i32 %62, i32* %4, align 4
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %64 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %67 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE, align 4
  %68 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @iwl_trans_set_bits_mask(%struct.TYPE_8__* %65, i32 %66, i32 %71, i32 %72)
  %74 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %75 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %76 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %81 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %86 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @IWL_INFO(%struct.iwl_priv* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %84, i32 %89)
  br label %93

91:                                               ; preds = %1
  %92 = call i32 @WARN_ON(i32 1)
  br label %93

93:                                               ; preds = %91, %39
  %94 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %95 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %98 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI, align 4
  %99 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_MAC_SI, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @iwl_set_bit(%struct.TYPE_8__* %96, i32 %97, i32 %100)
  %102 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %103 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i32, i32* @APMG_PS_CTRL_REG, align 4
  %106 = load i32, i32* @APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS, align 4
  %107 = load i32, i32* @APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS, align 4
  %108 = xor i32 %107, -1
  %109 = call i32 @iwl_set_bits_mask_prph(%struct.TYPE_8__* %104, i32 %105, i32 %106, i32 %108)
  %110 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %111 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32 (%struct.iwl_priv*)*, i32 (%struct.iwl_priv*)** %113, align 8
  %115 = icmp ne i32 (%struct.iwl_priv*)* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %93
  %117 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %118 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32 (%struct.iwl_priv*)*, i32 (%struct.iwl_priv*)** %120, align 8
  %122 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %123 = call i32 %121(%struct.iwl_priv* %122)
  br label %124

124:                                              ; preds = %116, %93
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode*) #1

declare dso_local i32 @iwl_trans_set_bits_mask(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @CSR_HW_REV_STEP(i32) #1

declare dso_local i32 @CSR_HW_REV_DASH(i32) #1

declare dso_local i32 @IWL_INFO(%struct.iwl_priv*, i8*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_set_bit(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @iwl_set_bits_mask_prph(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
