; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_lib.c_iwlagn_bt_traffic_is_sco.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_lib.c_iwlagn_bt_traffic_is_sco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_bt_uart_msg = type { i32 }

@BT_UART_MSG_FRAME3SCOESCO_MSK = common dso_local global i32 0, align 4
@BT_UART_MSG_FRAME3SCOESCO_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_bt_uart_msg*)* @iwlagn_bt_traffic_is_sco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_bt_traffic_is_sco(%struct.iwl_bt_uart_msg* %0) #0 {
  %2 = alloca %struct.iwl_bt_uart_msg*, align 8
  store %struct.iwl_bt_uart_msg* %0, %struct.iwl_bt_uart_msg** %2, align 8
  %3 = load i32, i32* @BT_UART_MSG_FRAME3SCOESCO_MSK, align 4
  %4 = load %struct.iwl_bt_uart_msg*, %struct.iwl_bt_uart_msg** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_bt_uart_msg, %struct.iwl_bt_uart_msg* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @BT_UART_MSG_FRAME3SCOESCO_POS, align 4
  %8 = ashr i32 %6, %7
  %9 = and i32 %3, %8
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
