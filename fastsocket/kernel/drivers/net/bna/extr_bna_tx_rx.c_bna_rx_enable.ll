; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { i64, i32 }

@bna_rx_sm_stopped = common dso_local global i64 0, align 8
@BNA_RX_F_ENABLED = common dso_local global i32 0, align 4
@BNA_RX_F_ENET_STARTED = common dso_local global i32 0, align 4
@RX_E_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_rx_enable(%struct.bna_rx* %0) #0 {
  %2 = alloca %struct.bna_rx*, align 8
  store %struct.bna_rx* %0, %struct.bna_rx** %2, align 8
  %3 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %4 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @bna_rx_sm_stopped, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = load i32, i32* @BNA_RX_F_ENABLED, align 4
  %11 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %12 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %16 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BNA_RX_F_ENET_STARTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %9
  %22 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %23 = load i32, i32* @RX_E_START, align 4
  %24 = call i32 @bfa_fsm_send_event(%struct.bna_rx* %22, i32 %23)
  br label %25

25:                                               ; preds = %8, %21, %9
  ret void
}

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_rx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
