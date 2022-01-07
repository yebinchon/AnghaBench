; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_dma-mx1-mx2.c_imx_dma_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_dma-mx1-mx2.c_imx_dma_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_dma_channel = type { i64, i32 }

@imx_dma_channels = common dso_local global %struct.imx_dma_channel* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"imxdma%d: imx_dma_disable\0A\00", align 1
@DMA_BASE = common dso_local global i64 0, align 8
@DMA_DIMR = common dso_local global i64 0, align 8
@CCR_CEN = common dso_local global i32 0, align 4
@DMA_DISR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_dma_disable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_dma_channel*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.imx_dma_channel*, %struct.imx_dma_channel** @imx_dma_channels, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.imx_dma_channel, %struct.imx_dma_channel* %5, i64 %7
  store %struct.imx_dma_channel* %8, %struct.imx_dma_channel** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.imx_dma_channel*, %struct.imx_dma_channel** %3, align 8
  %12 = call i64 @imx_dma_hw_chain(%struct.imx_dma_channel* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.imx_dma_channel*, %struct.imx_dma_channel** %3, align 8
  %16 = getelementptr inbounds %struct.imx_dma_channel, %struct.imx_dma_channel* %15, i32 0, i32 1
  %17 = call i32 @del_timer(i32* %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @local_irq_save(i64 %19)
  %21 = load i64, i64* @DMA_BASE, align 8
  %22 = load i64, i64* @DMA_DIMR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @__raw_readl(i64 %23)
  %25 = load i32, i32* %2, align 4
  %26 = shl i32 1, %25
  %27 = or i32 %24, %26
  %28 = load i64, i64* @DMA_BASE, align 8
  %29 = load i64, i64* @DMA_DIMR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @__raw_writel(i32 %27, i64 %30)
  %32 = load i64, i64* @DMA_BASE, align 8
  %33 = load i32, i32* %2, align 4
  %34 = call i64 @DMA_CCR(i32 %33)
  %35 = add nsw i64 %32, %34
  %36 = call i32 @__raw_readl(i64 %35)
  %37 = load i32, i32* @CCR_CEN, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load i64, i64* @DMA_BASE, align 8
  %41 = load i32, i32* %2, align 4
  %42 = call i64 @DMA_CCR(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @__raw_writel(i32 %39, i64 %43)
  %45 = load i32, i32* %2, align 4
  %46 = shl i32 1, %45
  %47 = load i64, i64* @DMA_BASE, align 8
  %48 = load i64, i64* @DMA_DISR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @__raw_writel(i32 %46, i64 %49)
  %51 = load %struct.imx_dma_channel*, %struct.imx_dma_channel** %3, align 8
  %52 = getelementptr inbounds %struct.imx_dma_channel, %struct.imx_dma_channel* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @local_irq_restore(i64 %53)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @imx_dma_hw_chain(%struct.imx_dma_channel*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i64 @DMA_CCR(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
