; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, %struct.iwl_rxq }
%struct.iwl_rxq = type { i32*, i64, i32*, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Free NULL rx context\0A\00", align 1
@RX_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Free rxq->rb_stts which is NULL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_rx_free(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca %struct.iwl_rxq*, align 8
  %5 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %3, align 8
  %8 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %8, i32 0, i32 1
  store %struct.iwl_rxq* %9, %struct.iwl_rxq** %4, align 8
  %10 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %16 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %72

17:                                               ; preds = %1
  %18 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %18, i32 0, i32 0
  %20 = call i32 @cancel_work_sync(i32* %19)
  %21 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %21, i32 0, i32 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %26 = call i32 @iwl_pcie_rxq_free_rbs(%struct.iwl_trans* %25)
  %27 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %28 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %27, i32 0, i32 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %32 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %39 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @dma_free_coherent(i32 %33, i32 %37, i32* %40, i64 %43)
  %45 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %46 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %48 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %50 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %17
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %55 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %58 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @dma_free_coherent(i32 %56, i32 4, i32* %59, i64 %62)
  br label %67

64:                                               ; preds = %17
  %65 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %66 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %53
  %68 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %69 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %71 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %67, %14
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iwl_pcie_rxq_free_rbs(%struct.iwl_trans*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
