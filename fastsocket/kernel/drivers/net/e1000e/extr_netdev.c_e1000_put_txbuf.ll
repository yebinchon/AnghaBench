; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_put_txbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_put_txbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { %struct.e1000_adapter* }
%struct.e1000_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_buffer = type { i64, i32*, i32, i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_ring*, %struct.e1000_buffer*)* @e1000_put_txbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_put_txbuf(%struct.e1000_ring* %0, %struct.e1000_buffer* %1) #0 {
  %3 = alloca %struct.e1000_ring*, align 8
  %4 = alloca %struct.e1000_buffer*, align 8
  %5 = alloca %struct.e1000_adapter*, align 8
  store %struct.e1000_ring* %0, %struct.e1000_ring** %3, align 8
  store %struct.e1000_buffer* %1, %struct.e1000_buffer** %4, align 8
  %6 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %6, i32 0, i32 0
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  store %struct.e1000_adapter* %8, %struct.e1000_adapter** %5, align 8
  %9 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %2
  %14 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @dma_unmap_page(i32* %22, i32 %25, i32 %28, i32 %29)
  br label %44

31:                                               ; preds = %13
  %32 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = call i32 @dma_unmap_single(i32* %35, i32 %38, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %31, %18
  %45 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %45, i32 0, i32 2
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %2
  %48 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %49 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @dev_kfree_skb_any(i32* %55)
  %57 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %58 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  ret void
}

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
