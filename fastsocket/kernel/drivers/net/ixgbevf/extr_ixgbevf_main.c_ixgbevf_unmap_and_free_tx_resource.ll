; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_unmap_and_free_tx_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_unmap_and_free_tx_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { i32 }
%struct.ixgbevf_tx_buffer = type { i64, i32*, i64, i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_ring*, %struct.ixgbevf_tx_buffer*)* @ixgbevf_unmap_and_free_tx_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_unmap_and_free_tx_resource(%struct.ixgbevf_ring* %0, %struct.ixgbevf_tx_buffer* %1) #0 {
  %3 = alloca %struct.ixgbevf_ring*, align 8
  %4 = alloca %struct.ixgbevf_tx_buffer*, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %3, align 8
  store %struct.ixgbevf_tx_buffer* %1, %struct.ixgbevf_tx_buffer** %4, align 8
  %5 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = call i32 @dma_unmap_page(i32 %17, i64 %20, i32 %23, i32 %24)
  br label %38

26:                                               ; preds = %9
  %27 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %28 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = call i32 @dma_unmap_single(i32 %29, i64 %32, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %26, %14
  %39 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %2
  %42 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %48 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @dev_kfree_skb_any(i32* %49)
  %51 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %52 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %46, %41
  %54 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  ret void
}

declare dso_local i32 @dma_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
