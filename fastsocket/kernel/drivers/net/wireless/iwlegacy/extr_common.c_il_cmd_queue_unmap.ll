; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_cmd_queue_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_cmd_queue_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i32, %struct.il_tx_queue* }
%struct.il_tx_queue = type { %struct.TYPE_3__*, %struct.il_queue }
%struct.TYPE_3__ = type { i32 }
%struct.il_queue = type { i64, i64, i64, i32 }

@CMD_MAPPED = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_cmd_queue_unmap(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca %struct.il_tx_queue*, align 8
  %4 = alloca %struct.il_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %6 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %7 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %6, i32 0, i32 2
  %8 = load %struct.il_tx_queue*, %struct.il_tx_queue** %7, align 8
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %8, i64 %11
  store %struct.il_tx_queue* %12, %struct.il_tx_queue** %3, align 8
  %13 = load %struct.il_tx_queue*, %struct.il_tx_queue** %3, align 8
  %14 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %13, i32 0, i32 1
  store %struct.il_queue* %14, %struct.il_queue** %4, align 8
  %15 = load %struct.il_queue*, %struct.il_queue** %4, align 8
  %16 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %129

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %75, %20
  %22 = load %struct.il_queue*, %struct.il_queue** %4, align 8
  %23 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.il_queue*, %struct.il_queue** %4, align 8
  %26 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %21
  %30 = load %struct.il_queue*, %struct.il_queue** %4, align 8
  %31 = load %struct.il_queue*, %struct.il_queue** %4, align 8
  %32 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @il_get_cmd_idx(%struct.il_queue* %30, i64 %33, i32 0)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.il_tx_queue*, %struct.il_tx_queue** %3, align 8
  %36 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CMD_MAPPED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %29
  %47 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.il_tx_queue*, %struct.il_tx_queue** %3, align 8
  %51 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = load i32, i32* @mapping, align 4
  %57 = call i32 @dma_unmap_addr(%struct.TYPE_3__* %55, i32 %56)
  %58 = load %struct.il_tx_queue*, %struct.il_tx_queue** %3, align 8
  %59 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = load i32, i32* @len, align 4
  %65 = call i32 @dma_unmap_len(%struct.TYPE_3__* %63, i32 %64)
  %66 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %67 = call i32 @pci_unmap_single(i32 %49, i32 %57, i32 %65, i32 %66)
  %68 = load %struct.il_tx_queue*, %struct.il_tx_queue** %3, align 8
  %69 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %46, %29
  %76 = load %struct.il_queue*, %struct.il_queue** %4, align 8
  %77 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.il_queue*, %struct.il_queue** %4, align 8
  %80 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @il_queue_inc_wrap(i64 %78, i64 %81)
  %83 = load %struct.il_queue*, %struct.il_queue** %4, align 8
  %84 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %21

85:                                               ; preds = %21
  %86 = load %struct.il_queue*, %struct.il_queue** %4, align 8
  %87 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %5, align 4
  %89 = load %struct.il_tx_queue*, %struct.il_tx_queue** %3, align 8
  %90 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @CMD_MAPPED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %85
  %101 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %102 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.il_tx_queue*, %struct.il_tx_queue** %3, align 8
  %105 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = load i32, i32* @mapping, align 4
  %111 = call i32 @dma_unmap_addr(%struct.TYPE_3__* %109, i32 %110)
  %112 = load %struct.il_tx_queue*, %struct.il_tx_queue** %3, align 8
  %113 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = load i32, i32* @len, align 4
  %119 = call i32 @dma_unmap_len(%struct.TYPE_3__* %117, i32 %118)
  %120 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %121 = call i32 @pci_unmap_single(i32 %103, i32 %111, i32 %119, i32 %120)
  %122 = load %struct.il_tx_queue*, %struct.il_tx_queue** %3, align 8
  %123 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %19, %100, %85
  ret void
}

declare dso_local i32 @il_get_cmd_idx(%struct.il_queue*, i64, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @il_queue_inc_wrap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
