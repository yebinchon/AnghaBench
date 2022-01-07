; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp37xx_circ_clear_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp37xx_circ_clear_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp37xx_circ_dma_chain = type { i64, i64, i32, i32, i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stmp37xx_circ_clear_chain(%struct.stmp37xx_circ_dma_chain* %0) #0 {
  %2 = alloca %struct.stmp37xx_circ_dma_chain*, align 8
  store %struct.stmp37xx_circ_dma_chain* %0, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %3 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %4 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %7 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @STMP3XXX_DMA(i32 %5, i32 %8)
  %10 = call i32 @stmp3xxx_dma_running(i32 %9)
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %13 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %12, i32 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %15 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %17 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %19 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %22 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %24 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %26 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @stmp3xxx_dma_running(i32) #1

declare dso_local i32 @STMP3XXX_DMA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
