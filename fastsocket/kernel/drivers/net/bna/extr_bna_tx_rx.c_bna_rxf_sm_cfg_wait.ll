; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_sm_cfg_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_sm_cfg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32 }

@bna_rxf_sm_last_resp_wait = common dso_local global i32 0, align 4
@bna_rxf_sm_stopped = common dso_local global i32 0, align 4
@BNA_RXF_F_PAUSED = common dso_local global i32 0, align 4
@bna_rxf_sm_fltr_clr_wait = common dso_local global i32 0, align 4
@bna_rxf_sm_started = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*, i32)* @bna_rxf_sm_cfg_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rxf_sm_cfg_wait(%struct.bna_rxf* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_rxf*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %43 [
    i32 128, label %6
    i32 131, label %10
    i32 132, label %22
    i32 129, label %23
    i32 130, label %34
  ]

6:                                                ; preds = %2
  %7 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %8 = load i32, i32* @bna_rxf_sm_last_resp_wait, align 4
  %9 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %7, i32 %8)
  br label %46

10:                                               ; preds = %2
  %11 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %12 = call i32 @bna_rxf_cfg_reset(%struct.bna_rxf* %11)
  %13 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %14 = call i32 @call_rxf_start_cbfn(%struct.bna_rxf* %13)
  %15 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %16 = call i32 @call_rxf_cam_fltr_cbfn(%struct.bna_rxf* %15)
  %17 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %18 = call i32 @call_rxf_resume_cbfn(%struct.bna_rxf* %17)
  %19 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %20 = load i32, i32* @bna_rxf_sm_stopped, align 4
  %21 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %19, i32 %20)
  br label %46

22:                                               ; preds = %2
  br label %46

23:                                               ; preds = %2
  %24 = load i32, i32* @BNA_RXF_F_PAUSED, align 4
  %25 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %26 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %30 = call i32 @call_rxf_start_cbfn(%struct.bna_rxf* %29)
  %31 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %32 = load i32, i32* @bna_rxf_sm_fltr_clr_wait, align 4
  %33 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %31, i32 %32)
  br label %46

34:                                               ; preds = %2
  %35 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %36 = call i32 @bna_rxf_cfg_apply(%struct.bna_rxf* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %40 = load i32, i32* @bna_rxf_sm_started, align 4
  %41 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  br label %46

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @bfa_sm_fault(i32 %44)
  br label %46

46:                                               ; preds = %43, %42, %23, %22, %10, %6
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_rxf*, i32) #1

declare dso_local i32 @bna_rxf_cfg_reset(%struct.bna_rxf*) #1

declare dso_local i32 @call_rxf_start_cbfn(%struct.bna_rxf*) #1

declare dso_local i32 @call_rxf_cam_fltr_cbfn(%struct.bna_rxf*) #1

declare dso_local i32 @call_rxf_resume_cbfn(%struct.bna_rxf*) #1

declare dso_local i32 @bna_rxf_cfg_apply(%struct.bna_rxf*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
