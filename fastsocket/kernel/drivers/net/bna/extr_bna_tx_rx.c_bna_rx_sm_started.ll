; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_sm_started.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_sm_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { %struct.TYPE_2__*, i32 (i32, %struct.bna_rx*)*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@bna_rx_sm_rxf_stop_wait = common dso_local global i32 0, align 4
@bna_rx_sm_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rx*, i32)* @bna_rx_sm_started to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rx_sm_started(%struct.bna_rx* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_rx*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_rx* %0, %struct.bna_rx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %42 [
    i32 128, label %6
    i32 129, label %18
  ]

6:                                                ; preds = %2
  %7 = load %struct.bna_rx*, %struct.bna_rx** %3, align 8
  %8 = load i32, i32* @bna_rx_sm_rxf_stop_wait, align 4
  %9 = call i32 @bfa_fsm_set_state(%struct.bna_rx* %7, i32 %8)
  %10 = load %struct.bna_rx*, %struct.bna_rx** %3, align 8
  %11 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @bna_ethport_cb_rx_stopped(i32* %13)
  %15 = load %struct.bna_rx*, %struct.bna_rx** %3, align 8
  %16 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %15, i32 0, i32 2
  %17 = call i32 @bna_rxf_stop(i32* %16)
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.bna_rx*, %struct.bna_rx** %3, align 8
  %20 = load i32, i32* @bna_rx_sm_failed, align 4
  %21 = call i32 @bfa_fsm_set_state(%struct.bna_rx* %19, i32 %20)
  %22 = load %struct.bna_rx*, %struct.bna_rx** %3, align 8
  %23 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i32 @bna_ethport_cb_rx_stopped(i32* %25)
  %27 = load %struct.bna_rx*, %struct.bna_rx** %3, align 8
  %28 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %27, i32 0, i32 2
  %29 = call i32 @bna_rxf_fail(i32* %28)
  %30 = load %struct.bna_rx*, %struct.bna_rx** %3, align 8
  %31 = call i32 @call_rx_stall_cbfn(%struct.bna_rx* %30)
  %32 = load %struct.bna_rx*, %struct.bna_rx** %3, align 8
  %33 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %32, i32 0, i32 1
  %34 = load i32 (i32, %struct.bna_rx*)*, i32 (i32, %struct.bna_rx*)** %33, align 8
  %35 = load %struct.bna_rx*, %struct.bna_rx** %3, align 8
  %36 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bna_rx*, %struct.bna_rx** %3, align 8
  %41 = call i32 %34(i32 %39, %struct.bna_rx* %40)
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @bfa_sm_fault(i32 %43)
  br label %45

45:                                               ; preds = %42, %18, %6
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_rx*, i32) #1

declare dso_local i32 @bna_ethport_cb_rx_stopped(i32*) #1

declare dso_local i32 @bna_rxf_stop(i32*) #1

declare dso_local i32 @bna_rxf_fail(i32*) #1

declare dso_local i32 @call_rx_stall_cbfn(%struct.bna_rx*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
