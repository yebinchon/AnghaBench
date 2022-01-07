; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_internal.h_iwl_stop_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_internal.h_iwl_stop_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_txq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_trans_pcie = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Stop hwq %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"hwq %d already stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_txq*)* @iwl_stop_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_stop_queue(%struct.iwl_trans* %0, %struct.iwl_txq* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_txq*, align 8
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %4, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %5, align 8
  %8 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @test_and_set_bit(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %2
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @iwl_op_mode_queue_full(i32 %20, i32 %24)
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %27 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %28 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %39

32:                                               ; preds = %2
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %34 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %35 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %32, %17
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @iwl_op_mode_queue_full(i32, i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
