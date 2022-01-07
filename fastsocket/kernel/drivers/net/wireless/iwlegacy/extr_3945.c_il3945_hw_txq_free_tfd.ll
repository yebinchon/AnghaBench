; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hw_txq_free_tfd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hw_txq_free_tfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.il_tx_queue = type { %struct.TYPE_4__, %struct.sk_buff**, i32*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.il3945_tfd = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@NUM_TFD_CHUNKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Too many chunks: %i\0A\00", align 1
@mapping = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il3945_hw_txq_free_tfd(%struct.il_priv* %0, %struct.il_tx_queue* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_tx_queue*, align 8
  %5 = alloca %struct.il3945_tfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.il3945_tfd*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_tx_queue* %1, %struct.il_tx_queue** %4, align 8
  %12 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %13 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.il3945_tfd*
  store %struct.il3945_tfd* %15, %struct.il3945_tfd** %5, align 8
  %16 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %17 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.il3945_tfd*, %struct.il3945_tfd** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.il3945_tfd, %struct.il3945_tfd* %20, i64 %22
  store %struct.il3945_tfd* %23, %struct.il3945_tfd** %7, align 8
  %24 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 0
  %26 = load %struct.pci_dev*, %struct.pci_dev** %25, align 8
  store %struct.pci_dev* %26, %struct.pci_dev** %8, align 8
  %27 = load %struct.il3945_tfd*, %struct.il3945_tfd** %7, align 8
  %28 = getelementptr inbounds %struct.il3945_tfd, %struct.il3945_tfd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = call i32 @TFD_CTL_COUNT_GET(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @NUM_TFD_CHUNKS, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @IL_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %122

38:                                               ; preds = %2
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %43 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %44 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* @mapping, align 4
  %50 = call i32 @dma_unmap_addr(i32* %48, i32 %49)
  %51 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %52 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* @len, align 4
  %58 = call i32 @dma_unmap_len(i32* %56, i32 %57)
  %59 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %60 = call i32 @pci_unmap_single(%struct.pci_dev* %42, i32 %50, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %41, %38
  store i32 1, i32* %9, align 4
  br label %62

62:                                               ; preds = %88, %61
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %62
  %67 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %68 = load %struct.il3945_tfd*, %struct.il3945_tfd** %7, align 8
  %69 = getelementptr inbounds %struct.il3945_tfd, %struct.il3945_tfd* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le32_to_cpu(i32 %75)
  %77 = load %struct.il3945_tfd*, %struct.il3945_tfd** %7, align 8
  %78 = getelementptr inbounds %struct.il3945_tfd, %struct.il3945_tfd* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32_to_cpu(i32 %84)
  %86 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %87 = call i32 @pci_unmap_single(%struct.pci_dev* %67, i32 %76, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %66
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %62

91:                                               ; preds = %62
  %92 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %93 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %92, i32 0, i32 1
  %94 = load %struct.sk_buff**, %struct.sk_buff*** %93, align 8
  %95 = icmp ne %struct.sk_buff** %94, null
  br i1 %95, label %96, label %122

96:                                               ; preds = %91
  %97 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %98 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %97, i32 0, i32 1
  %99 = load %struct.sk_buff**, %struct.sk_buff*** %98, align 8
  %100 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %101 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %99, i64 %104
  %106 = load %struct.sk_buff*, %struct.sk_buff** %105, align 8
  store %struct.sk_buff* %106, %struct.sk_buff** %11, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %108 = icmp ne %struct.sk_buff* %107, null
  br i1 %108, label %109, label %121

109:                                              ; preds = %96
  %110 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %111 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %110)
  %112 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %113 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %112, i32 0, i32 1
  %114 = load %struct.sk_buff**, %struct.sk_buff*** %113, align 8
  %115 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %116 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %114, i64 %119
  store %struct.sk_buff* null, %struct.sk_buff** %120, align 8
  br label %121

121:                                              ; preds = %109, %96
  br label %122

122:                                              ; preds = %35, %121, %91
  ret void
}

declare dso_local i32 @TFD_CTL_COUNT_GET(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(i32*, i32) #1

declare dso_local i32 @dma_unmap_len(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
