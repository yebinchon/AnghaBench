; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_tx_sm_start_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_tx_sm_start_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_tx = type { i32 }

@BNA_TX_F_PRIO_CHANGED = common dso_local global i32 0, align 4
@BNA_TX_F_BW_UPDATED = common dso_local global i32 0, align 4
@bna_tx_sm_stop_wait = common dso_local global i32 0, align 4
@bna_tx_sm_stopped = common dso_local global i32 0, align 4
@bna_tx_sm_prio_stop_wait = common dso_local global i32 0, align 4
@bna_tx_sm_started = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_tx*, i32)* @bna_tx_sm_start_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_tx_sm_start_wait(%struct.bna_tx* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_tx*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_tx* %0, %struct.bna_tx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %68 [
    i32 128, label %6
    i32 131, label %18
    i32 129, label %30
    i32 130, label %56
    i32 132, label %62
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @BNA_TX_F_PRIO_CHANGED, align 4
  %8 = load i32, i32* @BNA_TX_F_BW_UPDATED, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %12 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %16 = load i32, i32* @bna_tx_sm_stop_wait, align 4
  %17 = call i32 @bfa_fsm_set_state(%struct.bna_tx* %15, i32 %16)
  br label %71

18:                                               ; preds = %2
  %19 = load i32, i32* @BNA_TX_F_PRIO_CHANGED, align 4
  %20 = load i32, i32* @BNA_TX_F_BW_UPDATED, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %24 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %28 = load i32, i32* @bna_tx_sm_stopped, align 4
  %29 = call i32 @bfa_fsm_set_state(%struct.bna_tx* %27, i32 %28)
  br label %71

30:                                               ; preds = %2
  %31 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %32 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BNA_TX_F_PRIO_CHANGED, align 4
  %35 = load i32, i32* @BNA_TX_F_BW_UPDATED, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %30
  %40 = load i32, i32* @BNA_TX_F_PRIO_CHANGED, align 4
  %41 = load i32, i32* @BNA_TX_F_BW_UPDATED, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %45 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %49 = load i32, i32* @bna_tx_sm_prio_stop_wait, align 4
  %50 = call i32 @bfa_fsm_set_state(%struct.bna_tx* %48, i32 %49)
  br label %55

51:                                               ; preds = %30
  %52 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %53 = load i32, i32* @bna_tx_sm_started, align 4
  %54 = call i32 @bfa_fsm_set_state(%struct.bna_tx* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %39
  br label %71

56:                                               ; preds = %2
  %57 = load i32, i32* @BNA_TX_F_PRIO_CHANGED, align 4
  %58 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %59 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %71

62:                                               ; preds = %2
  %63 = load i32, i32* @BNA_TX_F_BW_UPDATED, align 4
  %64 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %65 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %71

68:                                               ; preds = %2
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @bfa_sm_fault(i32 %69)
  br label %71

71:                                               ; preds = %68, %62, %56, %55, %18, %6
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_tx*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
