; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_add_sta_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_add_sta_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_device_cmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.il_rx_pkt = type { i32 }
%struct.il_addsta_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)* @il_add_sta_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il_add_sta_callback(%struct.il_priv* %0, %struct.il_device_cmd* %1, %struct.il_rx_pkt* %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.il_device_cmd*, align 8
  %6 = alloca %struct.il_rx_pkt*, align 8
  %7 = alloca %struct.il_addsta_cmd*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.il_device_cmd* %1, %struct.il_device_cmd** %5, align 8
  store %struct.il_rx_pkt* %2, %struct.il_rx_pkt** %6, align 8
  %8 = load %struct.il_device_cmd*, %struct.il_device_cmd** %5, align 8
  %9 = getelementptr inbounds %struct.il_device_cmd, %struct.il_device_cmd* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.il_addsta_cmd*
  store %struct.il_addsta_cmd* %12, %struct.il_addsta_cmd** %7, align 8
  %13 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %14 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %7, align 8
  %15 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %6, align 8
  %16 = call i32 @il_process_add_sta_resp(%struct.il_priv* %13, %struct.il_addsta_cmd* %14, %struct.il_rx_pkt* %15, i32 0)
  ret void
}

declare dso_local i32 @il_process_add_sta_resp(%struct.il_priv*, %struct.il_addsta_cmd*, %struct.il_rx_pkt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
