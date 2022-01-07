; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_sdma_set_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_sdma_set_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mpsc_rx_desc = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"mpsc_sdma_set_rx_ring[%d]: rxre_p: 0x%x\0A\00", align 1
@SDMA_SCRDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*, %struct.mpsc_rx_desc*)* @mpsc_sdma_set_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_sdma_set_rx_ring(%struct.mpsc_port_info* %0, %struct.mpsc_rx_desc* %1) #0 {
  %3 = alloca %struct.mpsc_port_info*, align 8
  %4 = alloca %struct.mpsc_rx_desc*, align 8
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %3, align 8
  store %struct.mpsc_rx_desc* %1, %struct.mpsc_rx_desc** %4, align 8
  %5 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %6 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.mpsc_rx_desc*, %struct.mpsc_rx_desc** %4, align 8
  %10 = ptrtoint %struct.mpsc_rx_desc* %9 to i32
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %10)
  %12 = load %struct.mpsc_rx_desc*, %struct.mpsc_rx_desc** %4, align 8
  %13 = ptrtoint %struct.mpsc_rx_desc* %12 to i32
  %14 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %15 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SDMA_SCRDP, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
