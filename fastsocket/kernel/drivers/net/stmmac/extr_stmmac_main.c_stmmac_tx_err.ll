; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_stmmac_tx_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_stmmac_tx_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.TYPE_9__*, i64, i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @stmmac_tx_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_tx_err(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %3 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %4 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %3, i32 0, i32 0
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %6 = call i32 @netif_stop_queue(%struct.TYPE_9__* %5)
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @stmmac_dma_stop_tx(i32 %11)
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %14 = call i32 @dma_free_tx_skbufs(%struct.stmmac_priv* %13)
  %15 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %16 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %15, i32 0, i32 5
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %23 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %26 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %21(i32 %24, i32 %27)
  %29 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %30 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %32 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %34 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @stmmac_dma_start_tx(i32 %37)
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %40 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %47 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = call i32 @netif_wake_queue(%struct.TYPE_9__* %48)
  ret void
}

declare dso_local i32 @netif_stop_queue(%struct.TYPE_9__*) #1

declare dso_local i32 @stmmac_dma_stop_tx(i32) #1

declare dso_local i32 @dma_free_tx_skbufs(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_dma_start_tx(i32) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
