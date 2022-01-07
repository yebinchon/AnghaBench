; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_rx_card_state_notif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_rx_card_state_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_card_state_notif = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Card state received: HW:%s SW:%s CT:%s\0A\00", align 1
@HW_CARD_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Kill\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@SW_CARD_DISABLED = common dso_local global i32 0, align 4
@CT_CARD_DISABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Reached\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Not reached\00", align 1
@CSR_UCODE_DRV_GP1_SET = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED = common dso_local global i32 0, align 4
@HBUS_TARG_MBX_C = common dso_local global i32 0, align 4
@HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED = common dso_local global i32 0, align 4
@RXON_CARD_DISABLED = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_CLR = common dso_local global i32 0, align 4
@STATUS_RF_KILL_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)* @iwlagn_rx_card_state_notif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_rx_card_state_notif(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %6 = alloca %struct.iwl_device_cmd*, align 8
  %7 = alloca %struct.iwl_rx_packet*, align 8
  %8 = alloca %struct.iwl_card_state_notif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %5, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %6, align 8
  %11 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %5, align 8
  %12 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %11)
  store %struct.iwl_rx_packet* %12, %struct.iwl_rx_packet** %7, align 8
  %13 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %14 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.iwl_card_state_notif*
  store %struct.iwl_card_state_notif* %17, %struct.iwl_card_state_notif** %8, align 8
  %18 = load %struct.iwl_card_state_notif*, %struct.iwl_card_state_notif** %8, align 8
  %19 = getelementptr inbounds %struct.iwl_card_state_notif, %struct.iwl_card_state_notif* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @HW_CARD_DISABLED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @SW_CARD_DISABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @CT_CARD_DISABLED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  %44 = call i32 @IWL_DEBUG_RF_KILL(%struct.iwl_priv* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %37, i8* %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SW_CARD_DISABLED, align 4
  %47 = load i32, i32* @HW_CARD_DISABLED, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CT_CARD_DISABLED, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %45, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %92

53:                                               ; preds = %3
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %55 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CSR_UCODE_DRV_GP1_SET, align 4
  %58 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED, align 4
  %59 = call i32 @iwl_write32(i32 %56, i32 %57, i32 %58)
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @HBUS_TARG_MBX_C, align 4
  %64 = load i32, i32* @HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED, align 4
  %65 = call i32 @iwl_write_direct32(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @RXON_CARD_DISABLED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %53
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %72 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %75 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED, align 4
  %76 = call i32 @iwl_write32(i32 %73, i32 %74, i32 %75)
  %77 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %78 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @HBUS_TARG_MBX_C, align 4
  %81 = load i32, i32* @HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED, align 4
  %82 = call i32 @iwl_write_direct32(i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %70, %53
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @CT_CARD_DISABLED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %90 = call i32 @iwl_tt_enter_ct_kill(%struct.iwl_priv* %89)
  br label %91

91:                                               ; preds = %88, %83
  br label %92

92:                                               ; preds = %91, %3
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @CT_CARD_DISABLED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %99 = call i32 @iwl_tt_exit_ct_kill(%struct.iwl_priv* %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @HW_CARD_DISABLED, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %107 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %108 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %107, i32 0, i32 0
  %109 = call i32 @set_bit(i32 %106, i64* %108)
  br label %115

110:                                              ; preds = %100
  %111 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %112 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %113 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %112, i32 0, i32 0
  %114 = call i32 @clear_bit(i32 %111, i64* %113)
  br label %115

115:                                              ; preds = %110, %105
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @RXON_CARD_DISABLED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %122 = call i32 @iwl_scan_cancel(%struct.iwl_priv* %121)
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %125 = call i64 @test_bit(i32 %124, i64* %10)
  %126 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %127 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %128 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %127, i32 0, i32 0
  %129 = call i64 @test_bit(i32 %126, i64* %128)
  %130 = icmp ne i64 %125, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %123
  %132 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %133 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %138 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %139 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %138, i32 0, i32 0
  %140 = call i64 @test_bit(i32 %137, i64* %139)
  %141 = call i32 @wiphy_rfkill_set_hw_state(i32 %136, i64 %140)
  br label %142

142:                                              ; preds = %131, %123
  ret i32 0
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_RF_KILL(%struct.iwl_priv*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @iwl_write32(i32, i32, i32) #1

declare dso_local i32 @iwl_write_direct32(i32, i32, i32) #1

declare dso_local i32 @iwl_tt_enter_ct_kill(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_tt_exit_ct_kill(%struct.iwl_priv*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @iwl_scan_cancel(%struct.iwl_priv*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @wiphy_rfkill_set_hw_state(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
