; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_sm_fltr_clr_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_sm_fltr_clr_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32 }

@bna_rxf_sm_stopped = common dso_local global i32 0, align 4
@bna_rxf_sm_paused = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*, i32)* @bna_rxf_sm_fltr_clr_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rxf_sm_fltr_clr_wait(%struct.bna_rxf* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_rxf*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %23 [
    i32 129, label %6
    i32 128, label %14
  ]

6:                                                ; preds = %2
  %7 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %8 = call i32 @bna_rxf_cfg_reset(%struct.bna_rxf* %7)
  %9 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %10 = call i32 @call_rxf_pause_cbfn(%struct.bna_rxf* %9)
  %11 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %12 = load i32, i32* @bna_rxf_sm_stopped, align 4
  %13 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %11, i32 %12)
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %16 = call i32 @bna_rxf_fltr_clear(%struct.bna_rxf* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %20 = load i32, i32* @bna_rxf_sm_paused, align 4
  %21 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @bfa_sm_fault(i32 %24)
  br label %26

26:                                               ; preds = %23, %22, %6
  ret void
}

declare dso_local i32 @bna_rxf_cfg_reset(%struct.bna_rxf*) #1

declare dso_local i32 @call_rxf_pause_cbfn(%struct.bna_rxf*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_rxf*, i32) #1

declare dso_local i32 @bna_rxf_fltr_clear(%struct.bna_rxf*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
