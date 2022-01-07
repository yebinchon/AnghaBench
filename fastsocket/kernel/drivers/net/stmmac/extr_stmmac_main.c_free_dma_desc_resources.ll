; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_free_dma_desc_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_free_dma_desc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @free_dma_desc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_dma_desc_resources(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %3 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %4 = call i32 @dma_free_rx_skbufs(%struct.stmmac_priv* %3)
  %5 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %6 = call i32 @dma_free_tx_skbufs(%struct.stmmac_priv* %5)
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %11 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %17 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %20 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dma_free_coherent(i32 %9, i32 %15, i32 %18, i32 %21)
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %24 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %27 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %33 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %36 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dma_free_coherent(i32 %25, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %40 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kfree(i32 %41)
  %43 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %44 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @kfree(i32 %45)
  %47 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %48 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kfree(i32 %49)
  ret void
}

declare dso_local i32 @dma_free_rx_skbufs(%struct.stmmac_priv*) #1

declare dso_local i32 @dma_free_tx_skbufs(%struct.stmmac_priv*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
