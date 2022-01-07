; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_recycle_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_recycle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, %struct.TYPE_5__*, i32, %struct.ring_info*, %struct.dma_desc* }
%struct.TYPE_5__ = type { i32 }
%struct.ring_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.dma_desc = type { i32, i32 }
%struct.rx_header = type { i64, i64 }

@B44_RX_RING_SIZE = common dso_local global i32 0, align 4
@B44_FLAG_RX_RING_HACK = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DESC_CTRL_EOT = common dso_local global i32 0, align 4
@RX_PKT_BUF_SZ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*, i32, i32)* @b44_recycle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_recycle_rx(%struct.b44* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b44*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_desc*, align 8
  %8 = alloca %struct.dma_desc*, align 8
  %9 = alloca %struct.ring_info*, align 8
  %10 = alloca %struct.ring_info*, align 8
  %11 = alloca %struct.rx_header*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @B44_RX_RING_SIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %14, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.b44*, %struct.b44** %4, align 8
  %19 = getelementptr inbounds %struct.b44, %struct.b44* %18, i32 0, i32 4
  %20 = load %struct.dma_desc*, %struct.dma_desc** %19, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %20, i64 %22
  store %struct.dma_desc* %23, %struct.dma_desc** %8, align 8
  %24 = load %struct.b44*, %struct.b44** %4, align 8
  %25 = getelementptr inbounds %struct.b44, %struct.b44* %24, i32 0, i32 3
  %26 = load %struct.ring_info*, %struct.ring_info** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %26, i64 %28
  store %struct.ring_info* %29, %struct.ring_info** %10, align 8
  %30 = load %struct.b44*, %struct.b44** %4, align 8
  %31 = getelementptr inbounds %struct.b44, %struct.b44* %30, i32 0, i32 4
  %32 = load %struct.dma_desc*, %struct.dma_desc** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %32, i64 %34
  store %struct.dma_desc* %35, %struct.dma_desc** %7, align 8
  %36 = load %struct.b44*, %struct.b44** %4, align 8
  %37 = getelementptr inbounds %struct.b44, %struct.b44* %36, i32 0, i32 3
  %38 = load %struct.ring_info*, %struct.ring_info** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %38, i64 %40
  store %struct.ring_info* %41, %struct.ring_info** %9, align 8
  %42 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %43 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %46 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %45, i32 0, i32 1
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %46, align 8
  %47 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %48 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.rx_header*
  store %struct.rx_header* %52, %struct.rx_header** %11, align 8
  %53 = load %struct.rx_header*, %struct.rx_header** %11, align 8
  %54 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.rx_header*, %struct.rx_header** %11, align 8
  %56 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %58 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %61 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.b44*, %struct.b44** %4, align 8
  %63 = getelementptr inbounds %struct.b44, %struct.b44* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @B44_FLAG_RX_RING_HACK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %3
  %69 = load %struct.b44*, %struct.b44** %4, align 8
  %70 = getelementptr inbounds %struct.b44, %struct.b44* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load %struct.b44*, %struct.b44** %4, align 8
  %73 = getelementptr inbounds %struct.b44, %struct.b44* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 8
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %80 = call i32 @b44_sync_dma_desc_for_cpu(%struct.TYPE_5__* %71, i32 %74, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %68, %3
  %82 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %83 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @B44_RX_RING_SIZE, align 4
  %87 = sub nsw i32 %86, 1
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load i32, i32* @DESC_CTRL_EOT, align 4
  %91 = call i32 @cpu_to_le32(i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %13, align 4
  br label %100

94:                                               ; preds = %81
  %95 = load i32, i32* @DESC_CTRL_EOT, align 4
  %96 = xor i32 %95, -1
  %97 = call i32 @cpu_to_le32(i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %94, %89
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.dma_desc*, %struct.dma_desc** %8, align 8
  %103 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %105 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dma_desc*, %struct.dma_desc** %8, align 8
  %108 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %110 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %109, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %110, align 8
  %111 = load %struct.b44*, %struct.b44** %4, align 8
  %112 = getelementptr inbounds %struct.b44, %struct.b44* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @B44_FLAG_RX_RING_HACK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %100
  %118 = load %struct.b44*, %struct.b44** %4, align 8
  %119 = getelementptr inbounds %struct.b44, %struct.b44* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load %struct.b44*, %struct.b44** %4, align 8
  %122 = getelementptr inbounds %struct.b44, %struct.b44* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %129 = call i32 @b44_sync_dma_desc_for_device(%struct.TYPE_5__* %120, i32 %123, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %117, %100
  %131 = load %struct.b44*, %struct.b44** %4, align 8
  %132 = getelementptr inbounds %struct.b44, %struct.b44* %131, i32 0, i32 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %137 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %140 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %141 = call i32 @dma_sync_single_for_device(i32 %135, i32 %138, i32 %139, i32 %140)
  ret void
}

declare dso_local i32 @b44_sync_dma_desc_for_cpu(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @b44_sync_dma_desc_for_device(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
