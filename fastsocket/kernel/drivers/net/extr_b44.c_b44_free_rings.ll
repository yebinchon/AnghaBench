; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_free_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_free_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { %struct.TYPE_3__*, %struct.ring_info*, %struct.ring_info* }
%struct.TYPE_3__ = type { i32 }
%struct.ring_info = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@B44_RX_RING_SIZE = common dso_local global i32 0, align 4
@RX_PKT_BUF_SZ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@B44_TX_RING_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @b44_free_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_free_rings(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  %3 = alloca %struct.ring_info*, align 8
  %4 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %39, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @B44_RX_RING_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  %10 = load %struct.b44*, %struct.b44** %2, align 8
  %11 = getelementptr inbounds %struct.b44, %struct.b44* %10, i32 0, i32 2
  %12 = load %struct.ring_info*, %struct.ring_info** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %12, i64 %14
  store %struct.ring_info* %15, %struct.ring_info** %3, align 8
  %16 = load %struct.ring_info*, %struct.ring_info** %3, align 8
  %17 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %39

21:                                               ; preds = %9
  %22 = load %struct.b44*, %struct.b44** %2, align 8
  %23 = getelementptr inbounds %struct.b44, %struct.b44* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ring_info*, %struct.ring_info** %3, align 8
  %28 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %31 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %32 = call i32 @dma_unmap_single(i32 %26, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.ring_info*, %struct.ring_info** %3, align 8
  %34 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @dev_kfree_skb_any(%struct.TYPE_4__* %35)
  %37 = load %struct.ring_info*, %struct.ring_info** %3, align 8
  %38 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %37, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %38, align 8
  br label %39

39:                                               ; preds = %21, %20
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %5

42:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %81, %42
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @B44_TX_RING_SIZE, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %84

47:                                               ; preds = %43
  %48 = load %struct.b44*, %struct.b44** %2, align 8
  %49 = getelementptr inbounds %struct.b44, %struct.b44* %48, i32 0, i32 1
  %50 = load %struct.ring_info*, %struct.ring_info** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %50, i64 %52
  store %struct.ring_info* %53, %struct.ring_info** %3, align 8
  %54 = load %struct.ring_info*, %struct.ring_info** %3, align 8
  %55 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp eq %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %81

59:                                               ; preds = %47
  %60 = load %struct.b44*, %struct.b44** %2, align 8
  %61 = getelementptr inbounds %struct.b44, %struct.b44* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ring_info*, %struct.ring_info** %3, align 8
  %66 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ring_info*, %struct.ring_info** %3, align 8
  %69 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DMA_TO_DEVICE, align 4
  %74 = call i32 @dma_unmap_single(i32 %64, i32 %67, i32 %72, i32 %73)
  %75 = load %struct.ring_info*, %struct.ring_info** %3, align 8
  %76 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i32 @dev_kfree_skb_any(%struct.TYPE_4__* %77)
  %79 = load %struct.ring_info*, %struct.ring_info** %3, align 8
  %80 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %79, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %80, align 8
  br label %81

81:                                               ; preds = %59, %58
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %43

84:                                               ; preds = %43
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
