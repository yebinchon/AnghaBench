; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_rxq_free_rbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_rxq_free_rbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, %struct.iwl_rxq }
%struct.iwl_rxq = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@RX_FREE_BUFFERS = common dso_local global i32 0, align 4
@RX_QUEUE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_pcie_rxq_free_rbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_rxq_free_rbs(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca %struct.iwl_rxq*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %3, align 8
  %8 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %8, i32 0, i32 1
  store %struct.iwl_rxq* %9, %struct.iwl_rxq** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %75, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @RX_FREE_BUFFERS, align 4
  %13 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %14 = add nsw i32 %12, %13
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %78

16:                                               ; preds = %10
  %17 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %18 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %64

26:                                               ; preds = %16
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %28 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %40 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 %38, %41
  %43 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %44 = call i32 @dma_unmap_page(i32 %29, i32 %37, i32 %42, i32 %43)
  %45 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %46 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %54 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @__free_pages(i32* %52, i32 %55)
  %57 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %58 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %26, %16
  %65 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %66 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %73 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %72, i32 0, i32 0
  %74 = call i32 @list_add_tail(i32* %71, i32* %73)
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %10

78:                                               ; preds = %10
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_pages(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
