; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_alloc_mapped_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_alloc_mapped_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.igb_rx_buffer = type { i64, %struct.page*, i32 }
%struct.page = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_COLD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_ring*, %struct.igb_rx_buffer*)* @igb_alloc_mapped_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_alloc_mapped_page(%struct.igb_ring* %0, %struct.igb_rx_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igb_ring*, align 8
  %5 = alloca %struct.igb_rx_buffer*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.igb_ring* %0, %struct.igb_ring** %4, align 8
  store %struct.igb_rx_buffer* %1, %struct.igb_rx_buffer** %5, align 8
  %8 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %8, i32 0, i32 1
  %10 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %10, %struct.page** %6, align 8
  %11 = load %struct.page*, %struct.page** %6, align 8
  %12 = call i64 @likely(%struct.page* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %63

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = load i32, i32* @__GFP_COLD, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.page* @alloc_page(i32 %18)
  store %struct.page* %19, %struct.page** %6, align 8
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = icmp ne %struct.page* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %28 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %63

32:                                               ; preds = %15
  %33 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %34 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.page*, %struct.page** %6, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = call i32 @dma_map_page(i32 %35, %struct.page* %36, i32 0, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %41 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @dma_mapping_error(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %32
  %47 = load %struct.page*, %struct.page** %6, align 8
  %48 = call i32 @__free_page(%struct.page* %47)
  %49 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %50 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %63

54:                                               ; preds = %32
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.page*, %struct.page** %6, align 8
  %59 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %59, i32 0, i32 1
  store %struct.page* %58, %struct.page** %60, align 8
  %61 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %5, align 8
  %62 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %46, %26, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @likely(%struct.page*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
