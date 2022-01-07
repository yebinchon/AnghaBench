; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { %struct.iwl_txq* }
%struct.iwl_txq = type { i32, i32, %struct.iwl_queue }
%struct.iwl_queue = type { i64, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Q %d Free %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, i32)* @iwl_pcie_txq_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_txq_unmap(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca %struct.iwl_txq*, align 8
  %7 = alloca %struct.iwl_queue*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %9 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %8)
  store %struct.iwl_trans_pcie* %9, %struct.iwl_trans_pcie** %5, align 8
  %10 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %10, i32 0, i32 0
  %12 = load %struct.iwl_txq*, %struct.iwl_txq** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %12, i64 %14
  store %struct.iwl_txq* %15, %struct.iwl_txq** %6, align 8
  %16 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %16, i32 0, i32 2
  store %struct.iwl_queue* %17, %struct.iwl_queue** %7, align 8
  %18 = load %struct.iwl_queue*, %struct.iwl_queue** %7, align 8
  %19 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %63

23:                                               ; preds = %2
  %24 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %25 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_bh(i32* %25)
  br label %27

27:                                               ; preds = %35, %23
  %28 = load %struct.iwl_queue*, %struct.iwl_queue** %7, align 8
  %29 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.iwl_queue*, %struct.iwl_queue** %7, align 8
  %32 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %27
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.iwl_queue*, %struct.iwl_queue** %7, align 8
  %39 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @IWL_DEBUG_TX_REPLY(%struct.iwl_trans* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %40)
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %43 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %44 = call i32 @iwl_pcie_txq_free_tfd(%struct.iwl_trans* %42, %struct.iwl_txq* %43)
  %45 = load %struct.iwl_queue*, %struct.iwl_queue** %7, align 8
  %46 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.iwl_queue*, %struct.iwl_queue** %7, align 8
  %49 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @iwl_queue_inc_wrap(i64 %47, i32 %50)
  %52 = load %struct.iwl_queue*, %struct.iwl_queue** %7, align 8
  %53 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %27

54:                                               ; preds = %27
  %55 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %56 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %58 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock_bh(i32* %58)
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %61 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %62 = call i32 @iwl_wake_queue(%struct.iwl_trans* %60, %struct.iwl_txq* %61)
  br label %63

63:                                               ; preds = %54, %22
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @IWL_DEBUG_TX_REPLY(%struct.iwl_trans*, i8*, i32, i64) #1

declare dso_local i32 @iwl_pcie_txq_free_tfd(%struct.iwl_trans*, %struct.iwl_txq*) #1

declare dso_local i64 @iwl_queue_inc_wrap(i64, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iwl_wake_queue(%struct.iwl_trans*, %struct.iwl_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
