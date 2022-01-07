; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hdl_card_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hdl_card_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.il_rx_buf = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

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
@S_RFKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_rx_buf*)* @il4965_hdl_card_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_hdl_card_state(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca %struct.il_rx_pkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  %8 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %9 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %8)
  store %struct.il_rx_pkt* %9, %struct.il_rx_pkt** %5, align 8
  %10 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %11 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @HW_CARD_DISABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SW_CARD_DISABLED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @CT_CARD_DISABLED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  %37 = call i32 @D_RF_KILL(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %30, i8* %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SW_CARD_DISABLED, align 4
  %40 = load i32, i32* @HW_CARD_DISABLED, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CT_CARD_DISABLED, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %38, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %2
  %47 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %48 = load i32, i32* @CSR_UCODE_DRV_GP1_SET, align 4
  %49 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED, align 4
  %50 = call i32 @_il_wr(%struct.il_priv* %47, i32 %48, i32 %49)
  %51 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %52 = load i32, i32* @HBUS_TARG_MBX_C, align 4
  %53 = load i32, i32* @HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED, align 4
  %54 = call i32 @il_wr(%struct.il_priv* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @RXON_CARD_DISABLED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %46
  %60 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %61 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %62 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED, align 4
  %63 = call i32 @_il_wr(%struct.il_priv* %60, i32 %61, i32 %62)
  %64 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %65 = load i32, i32* @HBUS_TARG_MBX_C, align 4
  %66 = load i32, i32* @HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED, align 4
  %67 = call i32 @il_wr(%struct.il_priv* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %46
  br label %69

69:                                               ; preds = %68, %2
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @CT_CARD_DISABLED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %76 = call i32 @il4965_perform_ct_kill_task(%struct.il_priv* %75)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @HW_CARD_DISABLED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* @S_RFKILL, align 4
  %84 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %85 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %84, i32 0, i32 0
  %86 = call i32 @set_bit(i32 %83, i64* %85)
  br label %92

87:                                               ; preds = %77
  %88 = load i32, i32* @S_RFKILL, align 4
  %89 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %90 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %89, i32 0, i32 0
  %91 = call i32 @clear_bit(i32 %88, i64* %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @RXON_CARD_DISABLED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %99 = call i32 @il_scan_cancel(%struct.il_priv* %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i32, i32* @S_RFKILL, align 4
  %102 = call i64 @test_bit(i32 %101, i64* %7)
  %103 = load i32, i32* @S_RFKILL, align 4
  %104 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %105 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %104, i32 0, i32 0
  %106 = call i64 @test_bit(i32 %103, i64* %105)
  %107 = icmp ne i64 %102, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %100
  %109 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %110 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %109, i32 0, i32 2
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @S_RFKILL, align 4
  %115 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %116 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %115, i32 0, i32 0
  %117 = call i64 @test_bit(i32 %114, i64* %116)
  %118 = call i32 @wiphy_rfkill_set_hw_state(i32 %113, i64 %117)
  br label %123

119:                                              ; preds = %100
  %120 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %121 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %120, i32 0, i32 1
  %122 = call i32 @wake_up(i32* %121)
  br label %123

123:                                              ; preds = %119, %108
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @D_RF_KILL(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il4965_perform_ct_kill_task(%struct.il_priv*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @il_scan_cancel(%struct.il_priv*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @wiphy_rfkill_set_hw_state(i32, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
