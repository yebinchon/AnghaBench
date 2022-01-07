; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hw_txq_free_tfd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hw_txq_free_tfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.il_tx_queue = type { %struct.TYPE_2__, %struct.sk_buff**, i32*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.il_tfd = type { i32 }

@IL_NUM_OF_TBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Too many chunks: %i\0A\00", align 1
@mapping = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_hw_txq_free_tfd(%struct.il_priv* %0, %struct.il_tx_queue* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_tx_queue*, align 8
  %5 = alloca %struct.il_tfd*, align 8
  %6 = alloca %struct.il_tfd*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_tx_queue* %1, %struct.il_tx_queue** %4, align 8
  %12 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %13 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.il_tfd*
  store %struct.il_tfd* %15, %struct.il_tfd** %5, align 8
  %16 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %7, align 8
  %19 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %20 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.il_tfd*, %struct.il_tfd** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.il_tfd, %struct.il_tfd* %23, i64 %25
  store %struct.il_tfd* %26, %struct.il_tfd** %6, align 8
  %27 = load %struct.il_tfd*, %struct.il_tfd** %6, align 8
  %28 = call i32 @il4965_tfd_get_num_tbs(%struct.il_tfd* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @IL_NUM_OF_TBS, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @IL_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %107

35:                                               ; preds = %2
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %40 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %41 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* @mapping, align 4
  %47 = call i32 @dma_unmap_addr(i32* %45, i32 %46)
  %48 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %49 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* @len, align 4
  %55 = call i32 @dma_unmap_len(i32* %53, i32 %54)
  %56 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %57 = call i32 @pci_unmap_single(%struct.pci_dev* %39, i32 %47, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %38, %35
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %65 = load %struct.il_tfd*, %struct.il_tfd** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @il4965_tfd_tb_get_addr(%struct.il_tfd* %65, i32 %66)
  %68 = load %struct.il_tfd*, %struct.il_tfd** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @il4965_tfd_tb_get_len(%struct.il_tfd* %68, i32 %69)
  %71 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %72 = call i32 @pci_unmap_single(%struct.pci_dev* %64, i32 %67, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %59

76:                                               ; preds = %59
  %77 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %78 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %77, i32 0, i32 1
  %79 = load %struct.sk_buff**, %struct.sk_buff*** %78, align 8
  %80 = icmp ne %struct.sk_buff** %79, null
  br i1 %80, label %81, label %107

81:                                               ; preds = %76
  %82 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %83 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %82, i32 0, i32 1
  %84 = load %struct.sk_buff**, %struct.sk_buff*** %83, align 8
  %85 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %86 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %84, i64 %89
  %91 = load %struct.sk_buff*, %struct.sk_buff** %90, align 8
  store %struct.sk_buff* %91, %struct.sk_buff** %11, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %93 = icmp ne %struct.sk_buff* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %81
  %95 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %96 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %95)
  %97 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %98 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %97, i32 0, i32 1
  %99 = load %struct.sk_buff**, %struct.sk_buff*** %98, align 8
  %100 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %101 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %99, i64 %104
  store %struct.sk_buff* null, %struct.sk_buff** %105, align 8
  br label %106

106:                                              ; preds = %94, %81
  br label %107

107:                                              ; preds = %32, %106, %76
  ret void
}

declare dso_local i32 @il4965_tfd_get_num_tbs(%struct.il_tfd*) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(i32*, i32) #1

declare dso_local i32 @dma_unmap_len(i32*, i32) #1

declare dso_local i32 @il4965_tfd_tb_get_addr(%struct.il_tfd*, i32) #1

declare dso_local i32 @il4965_tfd_tb_get_len(%struct.il_tfd*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
