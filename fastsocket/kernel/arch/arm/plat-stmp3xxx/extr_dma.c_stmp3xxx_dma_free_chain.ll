; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp3xxx_dma_free_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp3xxx_dma_free_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp37xx_circ_dma_chain = type { i32, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stmp3xxx_dma_free_chain(%struct.stmp37xx_circ_dma_chain* %0) #0 {
  %2 = alloca %struct.stmp37xx_circ_dma_chain*, align 8
  %3 = alloca i32, align 4
  store %struct.stmp37xx_circ_dma_chain* %0, %struct.stmp37xx_circ_dma_chain** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %7 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %12 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %15 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @STMP3XXX_DMA(i32 %13, i32 %16)
  %18 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %19 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @stmp3xxx_dma_free_command(i32 %17, i32* %23)
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %4

28:                                               ; preds = %4
  ret void
}

declare dso_local i32 @stmp3xxx_dma_free_command(i32, i32*) #1

declare dso_local i32 @STMP3XXX_DMA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
