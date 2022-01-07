; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_alloc_mapped_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_alloc_mapped_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_rx_buffer = type { i32, i64, %struct.page* }
%struct.page = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_COLD = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*)* @ixgbe_alloc_mapped_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_alloc_mapped_page(%struct.ixgbe_ring* %0, %struct.ixgbe_rx_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_rx_buffer*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %4, align 8
  store %struct.ixgbe_rx_buffer* %1, %struct.ixgbe_rx_buffer** %5, align 8
  %8 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %8, i32 0, i32 2
  %10 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %10, %struct.page** %6, align 8
  %11 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %83

18:                                               ; preds = %2
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = icmp ne %struct.page* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %18
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = load i32, i32* @__GFP_COLD, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @__GFP_COMP, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %32 = call i32 @ixgbe_rx_pg_order(%struct.ixgbe_ring* %31)
  %33 = call %struct.page* @alloc_pages(i32 %30, i32 %32)
  store %struct.page* %33, %struct.page** %6, align 8
  %34 = load %struct.page*, %struct.page** %6, align 8
  %35 = icmp ne %struct.page* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %25
  %41 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %83

46:                                               ; preds = %25
  %47 = load %struct.page*, %struct.page** %6, align 8
  %48 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %49 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %48, i32 0, i32 2
  store %struct.page* %47, %struct.page** %49, align 8
  br label %50

50:                                               ; preds = %46, %18
  %51 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %52 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.page*, %struct.page** %6, align 8
  %55 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %56 = call i32 @ixgbe_rx_pg_size(%struct.ixgbe_ring* %55)
  %57 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %58 = call i32 @dma_map_page(i32 %53, %struct.page* %54, i32 0, i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %60 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @dma_mapping_error(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %50
  %66 = load %struct.page*, %struct.page** %6, align 8
  %67 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %68 = call i32 @ixgbe_rx_pg_order(%struct.ixgbe_ring* %67)
  %69 = call i32 @__free_pages(%struct.page* %66, i32 %68)
  %70 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %71 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %70, i32 0, i32 2
  store %struct.page* null, %struct.page** %71, align 8
  %72 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %73 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  store i32 0, i32* %3, align 4
  br label %83

77:                                               ; preds = %50
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %80 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %82 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %77, %65, %40, %17
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @ixgbe_rx_pg_order(%struct.ixgbe_ring*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @ixgbe_rx_pg_size(%struct.ixgbe_ring*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
