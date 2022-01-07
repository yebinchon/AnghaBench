; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_send_tx_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_send_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }
%struct.ipw_tx_power = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Invalid args\0A\00", align 1
@IPW_CMD_TX_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, %struct.ipw_tx_power*)* @ipw_send_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_send_tx_power(%struct.ipw_priv* %0, %struct.ipw_tx_power* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca %struct.ipw_tx_power*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store %struct.ipw_tx_power* %1, %struct.ipw_tx_power** %5, align 8
  %6 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %7 = icmp ne %struct.ipw_priv* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.ipw_tx_power*, %struct.ipw_tx_power** %5, align 8
  %10 = icmp ne %struct.ipw_tx_power* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8, %2
  %12 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %18

13:                                               ; preds = %8
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %15 = load i32, i32* @IPW_CMD_TX_POWER, align 4
  %16 = load %struct.ipw_tx_power*, %struct.ipw_tx_power** %5, align 8
  %17 = call i32 @ipw_send_cmd_pdu(%struct.ipw_priv* %14, i32 %15, i32 4, %struct.ipw_tx_power* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %13, %11
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @IPW_ERROR(i8*) #1

declare dso_local i32 @ipw_send_cmd_pdu(%struct.ipw_priv*, i32, i32, %struct.ipw_tx_power*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
