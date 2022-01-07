; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_alloc_rx_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_alloc_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i32, i32 }
%struct.tg3_rx_prodring_set = type { %struct.ring_info*, %struct.TYPE_2__*, %struct.ring_info*, %struct.tg3_rx_buffer_desc* }
%struct.TYPE_2__ = type { %struct.tg3_rx_buffer_desc }
%struct.tg3_rx_buffer_desc = type { i32, i32 }
%struct.ring_info = type { i32* }

@TG3_RX_JMB_MAP_SZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, %struct.tg3_rx_prodring_set*, i32, i32)* @tg3_alloc_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_alloc_rx_data(%struct.tg3* %0, %struct.tg3_rx_prodring_set* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tg3*, align 8
  %7 = alloca %struct.tg3_rx_prodring_set*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tg3_rx_buffer_desc*, align 8
  %11 = alloca %struct.ring_info*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %6, align 8
  store %struct.tg3_rx_prodring_set* %1, %struct.tg3_rx_prodring_set** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %59 [
    i32 128, label %18
    i32 129, label %39
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.tg3*, %struct.tg3** %6, align 8
  %21 = getelementptr inbounds %struct.tg3, %struct.tg3* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  store i32 %23, i32* %16, align 4
  %24 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %7, align 8
  %25 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %24, i32 0, i32 3
  %26 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %25, align 8
  %27 = load i32, i32* %16, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %26, i64 %28
  store %struct.tg3_rx_buffer_desc* %29, %struct.tg3_rx_buffer_desc** %10, align 8
  %30 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %7, align 8
  %31 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %30, i32 0, i32 2
  %32 = load %struct.ring_info*, %struct.ring_info** %31, align 8
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %32, i64 %34
  store %struct.ring_info* %35, %struct.ring_info** %11, align 8
  %36 = load %struct.tg3*, %struct.tg3** %6, align 8
  %37 = getelementptr inbounds %struct.tg3, %struct.tg3* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %15, align 4
  br label %62

39:                                               ; preds = %4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.tg3*, %struct.tg3** %6, align 8
  %42 = getelementptr inbounds %struct.tg3, %struct.tg3* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %40, %43
  store i32 %44, i32* %16, align 4
  %45 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %7, align 8
  %46 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.tg3_rx_buffer_desc* %51, %struct.tg3_rx_buffer_desc** %10, align 8
  %52 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %7, align 8
  %53 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %52, i32 0, i32 0
  %54 = load %struct.ring_info*, %struct.ring_info** %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %54, i64 %56
  store %struct.ring_info* %57, %struct.ring_info** %11, align 8
  %58 = load i32, i32* @TG3_RX_JMB_MAP_SZ, align 4
  store i32 %58, i32* %15, align 4
  br label %62

59:                                               ; preds = %4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %119

62:                                               ; preds = %39, %18
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.tg3*, %struct.tg3** %6, align 8
  %65 = call i32 @TG3_RX_OFFSET(%struct.tg3* %64)
  %66 = add nsw i32 %63, %65
  %67 = call i32 @SKB_DATA_ALIGN(i32 %66)
  %68 = call i32 @SKB_DATA_ALIGN(i32 4)
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @GFP_ATOMIC, align 4
  %72 = call i32* @kmalloc(i32 %70, i32 %71)
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %62
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %119

78:                                               ; preds = %62
  %79 = load %struct.tg3*, %struct.tg3** %6, align 8
  %80 = getelementptr inbounds %struct.tg3, %struct.tg3* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load %struct.tg3*, %struct.tg3** %6, align 8
  %84 = call i32 @TG3_RX_OFFSET(%struct.tg3* %83)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %89 = call i64 @pci_map_single(i32 %81, i32* %86, i32 %87, i32 %88)
  store i64 %89, i64* %13, align 8
  %90 = load %struct.tg3*, %struct.tg3** %6, align 8
  %91 = getelementptr inbounds %struct.tg3, %struct.tg3* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %13, align 8
  %94 = call i64 @pci_dma_mapping_error(i32 %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %78
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @kfree(i32* %97)
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %119

101:                                              ; preds = %78
  %102 = load i32*, i32** %12, align 8
  %103 = load %struct.ring_info*, %struct.ring_info** %11, align 8
  %104 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %103, i32 0, i32 0
  store i32* %102, i32** %104, align 8
  %105 = load %struct.ring_info*, %struct.ring_info** %11, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i32 @dma_unmap_addr_set(%struct.ring_info* %105, i64 %106, i64 %107)
  %109 = load i64, i64* %13, align 8
  %110 = trunc i64 %109 to i32
  %111 = ashr i32 %110, 32
  %112 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %10, align 8
  %113 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load i64, i64* %13, align 8
  %115 = trunc i64 %114 to i32
  %116 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %10, align 8
  %117 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %101, %96, %75, %59
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @TG3_RX_OFFSET(%struct.tg3*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @pci_map_single(i32, i32*, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.ring_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
