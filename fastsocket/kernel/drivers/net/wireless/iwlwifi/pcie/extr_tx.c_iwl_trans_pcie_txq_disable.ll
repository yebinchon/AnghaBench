; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_txq_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_txq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i64 }

@iwl_trans_pcie_txq_disable.zero_val = internal constant [4 x i64] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c"queue %d not used\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Deactivate queue %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_trans_pcie_txq_disable(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %8 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %7)
  store %struct.iwl_trans_pcie* %8, %struct.iwl_trans_pcie** %5, align 8
  %9 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @SCD_TX_STTS_QUEUE_OFFSET(i32 %12)
  %14 = add nsw i64 %11, %13
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @test_and_clear_bit(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @iwl_pcie_txq_set_inactive(%struct.iwl_trans* %25, i32 %26)
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([4 x i64], [4 x i64]* @iwl_trans_pcie_txq_disable.zero_val, i64 0, i64 0))
  %31 = call i32 @iwl_trans_write_mem(%struct.iwl_trans* %28, i64 %29, i8* bitcast ([4 x i64]* @iwl_trans_pcie_txq_disable.zero_val to i8*), i32 %30)
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @iwl_pcie_txq_unmap(%struct.iwl_trans* %32, i32 %33)
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %24, %21
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @SCD_TX_STTS_QUEUE_OFFSET(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @iwl_pcie_txq_set_inactive(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_trans_write_mem(%struct.iwl_trans*, i64, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @iwl_pcie_txq_unmap(%struct.iwl_trans*, i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
