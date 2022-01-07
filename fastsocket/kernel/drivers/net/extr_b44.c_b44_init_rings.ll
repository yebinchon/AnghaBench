; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_init_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@B44_RX_RING_BYTES = common dso_local global i32 0, align 4
@B44_TX_RING_BYTES = common dso_local global i32 0, align 4
@B44_FLAG_RX_RING_HACK = common dso_local global i32 0, align 4
@DMA_TABLE_BYTES = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@B44_FLAG_TX_RING_HACK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @b44_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_init_rings(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  %3 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %2, align 8
  %4 = load %struct.b44*, %struct.b44** %2, align 8
  %5 = call i32 @b44_free_rings(%struct.b44* %4)
  %6 = load %struct.b44*, %struct.b44** %2, align 8
  %7 = getelementptr inbounds %struct.b44, %struct.b44* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @B44_RX_RING_BYTES, align 4
  %10 = call i32 @memset(i32 %8, i32 0, i32 %9)
  %11 = load %struct.b44*, %struct.b44** %2, align 8
  %12 = getelementptr inbounds %struct.b44, %struct.b44* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @B44_TX_RING_BYTES, align 4
  %15 = call i32 @memset(i32 %13, i32 0, i32 %14)
  %16 = load %struct.b44*, %struct.b44** %2, align 8
  %17 = getelementptr inbounds %struct.b44, %struct.b44* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @B44_FLAG_RX_RING_HACK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load %struct.b44*, %struct.b44** %2, align 8
  %24 = getelementptr inbounds %struct.b44, %struct.b44* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.b44*, %struct.b44** %2, align 8
  %29 = getelementptr inbounds %struct.b44, %struct.b44* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DMA_TABLE_BYTES, align 4
  %32 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %33 = call i32 @dma_sync_single_for_device(i32 %27, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %22, %1
  %35 = load %struct.b44*, %struct.b44** %2, align 8
  %36 = getelementptr inbounds %struct.b44, %struct.b44* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @B44_FLAG_TX_RING_HACK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.b44*, %struct.b44** %2, align 8
  %43 = getelementptr inbounds %struct.b44, %struct.b44* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.b44*, %struct.b44** %2, align 8
  %48 = getelementptr inbounds %struct.b44, %struct.b44* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DMA_TABLE_BYTES, align 4
  %51 = load i32, i32* @DMA_TO_DEVICE, align 4
  %52 = call i32 @dma_sync_single_for_device(i32 %46, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %41, %34
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.b44*, %struct.b44** %2, align 8
  %57 = getelementptr inbounds %struct.b44, %struct.b44* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.b44*, %struct.b44** %2, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @b44_alloc_rx_skb(%struct.b44* %61, i32 -1, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %70

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %54

70:                                               ; preds = %65, %54
  ret void
}

declare dso_local i32 @b44_free_rings(%struct.b44*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i64 @b44_alloc_rx_skb(%struct.b44*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
