; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp37xx_circ_advance_cooked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp37xx_circ_advance_cooked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp37xx_circ_dma_chain = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmp37xx_circ_advance_cooked(%struct.stmp37xx_circ_dma_chain* %0) #0 {
  %2 = alloca %struct.stmp37xx_circ_dma_chain*, align 8
  %3 = alloca i32, align 4
  store %struct.stmp37xx_circ_dma_chain* %0, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %4 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %5 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %8 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %11 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @STMP3XXX_DMA(i32 %9, i32 %12)
  %14 = call i32 @stmp3xxx_dma_read_semaphore(i32 %13)
  %15 = sub i32 %6, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %18 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %23 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %27 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %30 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = urem i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %2, align 8
  %35 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @stmp3xxx_dma_read_semaphore(i32) #1

declare dso_local i32 @STMP3XXX_DMA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
