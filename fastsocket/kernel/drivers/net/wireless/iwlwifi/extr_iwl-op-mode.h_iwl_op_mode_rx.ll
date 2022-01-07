; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-op-mode.h_iwl_op_mode_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-op-mode.h_iwl_op_mode_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_device_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_op_mode*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)* @iwl_op_mode_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_op_mode_rx(%struct.iwl_op_mode* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca %struct.iwl_op_mode*, align 8
  %5 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %6 = alloca %struct.iwl_device_cmd*, align 8
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %4, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %5, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %6, align 8
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_op_mode, %struct.iwl_op_mode* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.iwl_op_mode*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)**
  %13 = load i32 (%struct.iwl_op_mode*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)*, i32 (%struct.iwl_op_mode*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)** %12, align 8
  %14 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %4, align 8
  %15 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %5, align 8
  %16 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %6, align 8
  %17 = call i32 %13(%struct.iwl_op_mode* %14, %struct.iwl_rx_cmd_buffer* %15, %struct.iwl_device_cmd* %16)
  ret i32 %17
}

declare dso_local i32 @might_sleep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
