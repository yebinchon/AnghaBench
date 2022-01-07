; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_sm_started.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_sm_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32 }

@bna_rxf_sm_stopped = common dso_local global i32 0, align 4
@bna_rxf_sm_cfg_wait = common dso_local global i32 0, align 4
@BNA_RXF_F_PAUSED = common dso_local global i32 0, align 4
@bna_rxf_sm_paused = common dso_local global i32 0, align 4
@bna_rxf_sm_fltr_clr_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*, i32)* @bna_rxf_sm_started to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rxf_sm_started(%struct.bna_rxf* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_rxf*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %34 [
    i32 128, label %6
    i32 130, label %6
    i32 131, label %12
    i32 129, label %16
  ]

6:                                                ; preds = %2, %2
  %7 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %8 = call i32 @bna_rxf_cfg_reset(%struct.bna_rxf* %7)
  %9 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %10 = load i32, i32* @bna_rxf_sm_stopped, align 4
  %11 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %9, i32 %10)
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %14 = load i32, i32* @bna_rxf_sm_cfg_wait, align 4
  %15 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %13, i32 %14)
  br label %37

16:                                               ; preds = %2
  %17 = load i32, i32* @BNA_RXF_F_PAUSED, align 4
  %18 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %19 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %23 = call i32 @bna_rxf_fltr_clear(%struct.bna_rxf* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %16
  %26 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %27 = load i32, i32* @bna_rxf_sm_paused, align 4
  %28 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %26, i32 %27)
  br label %33

29:                                               ; preds = %16
  %30 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %31 = load i32, i32* @bna_rxf_sm_fltr_clr_wait, align 4
  %32 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @bfa_sm_fault(i32 %35)
  br label %37

37:                                               ; preds = %34, %33, %12, %6
  ret void
}

declare dso_local i32 @bna_rxf_cfg_reset(%struct.bna_rxf*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_rxf*, i32) #1

declare dso_local i32 @bna_rxf_fltr_clear(%struct.bna_rxf*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
