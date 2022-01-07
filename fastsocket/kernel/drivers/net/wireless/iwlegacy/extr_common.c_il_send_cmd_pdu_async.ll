; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_send_cmd_pdu_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_send_cmd_pdu_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_device_cmd = type opaque
%struct.il_rx_pkt = type opaque
%struct.il_host_cmd = type { i8*, void (%struct.il_priv*, %struct.il_device_cmd.0*, %struct.il_rx_pkt.1*)*, i32, i32, i32 }
%struct.il_device_cmd.0 = type opaque
%struct.il_rx_pkt.1 = type opaque

@CMD_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_send_cmd_pdu_async(%struct.il_priv* %0, i32 %1, i32 %2, i8* %3, void (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)* %4) #0 {
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca void (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)*, align 8
  %11 = alloca %struct.il_host_cmd, align 8
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store void (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)* %4, void (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)** %10, align 8
  %12 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %11, i32 0, i32 0
  %13 = load i8*, i8** %9, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %11, i32 0, i32 1
  store void (%struct.il_priv*, %struct.il_device_cmd.0*, %struct.il_rx_pkt.1*)* null, void (%struct.il_priv*, %struct.il_device_cmd.0*, %struct.il_rx_pkt.1*)** %14, align 8
  %15 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %11, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %11, i32 0, i32 3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %11, i32 0, i32 4
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %18, align 8
  %20 = load i32, i32* @CMD_ASYNC, align 4
  %21 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %11, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 8
  %24 = load void (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)*, void (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)** %10, align 8
  %25 = bitcast void (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)* %24 to void (%struct.il_priv*, %struct.il_device_cmd.0*, %struct.il_rx_pkt.1*)*
  %26 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %11, i32 0, i32 1
  store void (%struct.il_priv*, %struct.il_device_cmd.0*, %struct.il_rx_pkt.1*)* %25, void (%struct.il_priv*, %struct.il_device_cmd.0*, %struct.il_rx_pkt.1*)** %26, align 8
  %27 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %28 = call i32 @il_send_cmd_async(%struct.il_priv* %27, %struct.il_host_cmd* %11)
  ret i32 %28
}

declare dso_local i32 @il_send_cmd_async(%struct.il_priv*, %struct.il_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
