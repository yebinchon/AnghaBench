; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_dma_free_tx_skbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_dma_free_tx_skbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i32**, %struct.TYPE_4__*, i32, %struct.dma_desc* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dma_desc*)* }
%struct.dma_desc = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @dma_free_tx_skbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_free_tx_skbufs(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_desc*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %65, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %68

11:                                               ; preds = %5
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %64

20:                                               ; preds = %11
  %21 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %22 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %21, i32 0, i32 4
  %23 = load %struct.dma_desc*, %struct.dma_desc** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %23, i64 %25
  store %struct.dma_desc* %26, %struct.dma_desc** %4, align 8
  %27 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %28 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %20
  %32 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %33 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %36 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %39 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dma_desc*)*, i32 (%struct.dma_desc*)** %43, align 8
  %45 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %46 = call i32 %44(%struct.dma_desc* %45)
  %47 = load i32, i32* @DMA_TO_DEVICE, align 4
  %48 = call i32 @dma_unmap_single(i32 %34, i64 %37, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %31, %20
  %50 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %51 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @dev_kfree_skb_any(i32* %56)
  %58 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %59 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %58, i32 0, i32 1
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %49, %11
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %5

68:                                               ; preds = %5
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
