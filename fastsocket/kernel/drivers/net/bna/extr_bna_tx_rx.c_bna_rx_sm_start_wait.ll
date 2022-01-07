; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_sm_start_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_sm_start_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { i32 }

@bna_rx_sm_start_stop_wait = common dso_local global i32 0, align 4
@bna_rx_sm_stopped = common dso_local global i32 0, align 4
@bna_rx_sm_rxf_start_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rx*, i32)* @bna_rx_sm_start_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rx_sm_start_wait(%struct.bna_rx* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_rx*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_rx* %0, %struct.bna_rx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %18 [
    i32 128, label %6
    i32 130, label %10
    i32 129, label %14
  ]

6:                                                ; preds = %2
  %7 = load %struct.bna_rx*, %struct.bna_rx** %3, align 8
  %8 = load i32, i32* @bna_rx_sm_start_stop_wait, align 4
  %9 = call i32 @bfa_fsm_set_state(%struct.bna_rx* %7, i32 %8)
  br label %21

10:                                               ; preds = %2
  %11 = load %struct.bna_rx*, %struct.bna_rx** %3, align 8
  %12 = load i32, i32* @bna_rx_sm_stopped, align 4
  %13 = call i32 @bfa_fsm_set_state(%struct.bna_rx* %11, i32 %12)
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.bna_rx*, %struct.bna_rx** %3, align 8
  %16 = load i32, i32* @bna_rx_sm_rxf_start_wait, align 4
  %17 = call i32 @bfa_fsm_set_state(%struct.bna_rx* %15, i32 %16)
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @bfa_sm_fault(i32 %19)
  br label %21

21:                                               ; preds = %18, %14, %10, %6
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_rx*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
