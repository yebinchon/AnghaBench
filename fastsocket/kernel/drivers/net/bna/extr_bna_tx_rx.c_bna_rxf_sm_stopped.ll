; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_sm_stopped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_sm_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32 }

@BNA_RXF_F_PAUSED = common dso_local global i32 0, align 4
@bna_rxf_sm_paused = common dso_local global i32 0, align 4
@bna_rxf_sm_cfg_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*, i32)* @bna_rxf_sm_stopped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rxf_sm_stopped(%struct.bna_rxf* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_rxf*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %48 [
    i32 129, label %6
    i32 128, label %24
    i32 132, label %27
    i32 133, label %28
    i32 131, label %31
    i32 130, label %39
  ]

6:                                                ; preds = %2
  %7 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %8 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BNA_RXF_F_PAUSED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %15 = load i32, i32* @bna_rxf_sm_paused, align 4
  %16 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %14, i32 %15)
  %17 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %18 = call i32 @call_rxf_start_cbfn(%struct.bna_rxf* %17)
  br label %23

19:                                               ; preds = %6
  %20 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %21 = load i32, i32* @bna_rxf_sm_cfg_wait, align 4
  %22 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %13
  br label %51

24:                                               ; preds = %2
  %25 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %26 = call i32 @call_rxf_stop_cbfn(%struct.bna_rxf* %25)
  br label %51

27:                                               ; preds = %2
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %30 = call i32 @call_rxf_cam_fltr_cbfn(%struct.bna_rxf* %29)
  br label %51

31:                                               ; preds = %2
  %32 = load i32, i32* @BNA_RXF_F_PAUSED, align 4
  %33 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %34 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %38 = call i32 @call_rxf_pause_cbfn(%struct.bna_rxf* %37)
  br label %51

39:                                               ; preds = %2
  %40 = load i32, i32* @BNA_RXF_F_PAUSED, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %43 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %47 = call i32 @call_rxf_resume_cbfn(%struct.bna_rxf* %46)
  br label %51

48:                                               ; preds = %2
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @bfa_sm_fault(i32 %49)
  br label %51

51:                                               ; preds = %48, %39, %31, %28, %27, %24, %23
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_rxf*, i32) #1

declare dso_local i32 @call_rxf_start_cbfn(%struct.bna_rxf*) #1

declare dso_local i32 @call_rxf_stop_cbfn(%struct.bna_rxf*) #1

declare dso_local i32 @call_rxf_cam_fltr_cbfn(%struct.bna_rxf*) #1

declare dso_local i32 @call_rxf_pause_cbfn(%struct.bna_rxf*) #1

declare dso_local i32 @call_rxf_resume_cbfn(%struct.bna_rxf*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
