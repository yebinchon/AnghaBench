; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_pf_tx_q_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_pf_tx_q_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_fastpath = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2x_txq_setup_params = type { i32, i64, i32, i32, i32 }

@HC_INDEX_ETH_FIRST_TX_CQ_CONS = common dso_local global i64 0, align 8
@LLFC_TRAFFIC_TYPE_NW = common dso_local global i32 0, align 4
@cl_id = common dso_local global i32 0, align 4
@HC_SP_INDEX_ETH_FCOE_TX_CQ_CONS = common dso_local global i64 0, align 8
@LLFC_TRAFFIC_TYPE_FCOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_fastpath*, %struct.bnx2x_txq_setup_params*, i64)* @bnx2x_pf_tx_q_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_pf_tx_q_prep(%struct.bnx2x* %0, %struct.bnx2x_fastpath* %1, %struct.bnx2x_txq_setup_params* %2, i64 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_fastpath*, align 8
  %7 = alloca %struct.bnx2x_txq_setup_params*, align 8
  %8 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_fastpath* %1, %struct.bnx2x_fastpath** %6, align 8
  store %struct.bnx2x_txq_setup_params* %2, %struct.bnx2x_txq_setup_params** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %10 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %7, align 8
  %18 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load i64, i64* @HC_INDEX_ETH_FIRST_TX_CQ_CONS, align 8
  %20 = load i64, i64* %8, align 8
  %21 = add i64 %19, %20
  %22 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %7, align 8
  %23 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* @LLFC_TRAFFIC_TYPE_NW, align 4
  %25 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %7, align 8
  %26 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %28 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %7, align 8
  %31 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %33 = load i32, i32* @cl_id, align 4
  %34 = call i32 @bnx2x_fp(%struct.bnx2x* %32, i32 0, i32 %33)
  %35 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %7, align 8
  %36 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %38 = call i64 @IS_FCOE_FP(%struct.bnx2x_fastpath* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %4
  %41 = load i64, i64* @HC_SP_INDEX_ETH_FCOE_TX_CQ_CONS, align 8
  %42 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %7, align 8
  %43 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @LLFC_TRAFFIC_TYPE_FCOE, align 4
  %45 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %7, align 8
  %46 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %40, %4
  ret void
}

declare dso_local i32 @bnx2x_fp(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @IS_FCOE_FP(%struct.bnx2x_fastpath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
