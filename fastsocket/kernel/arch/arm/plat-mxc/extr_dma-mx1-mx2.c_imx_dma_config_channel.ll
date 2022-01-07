; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_dma-mx1-mx2.c_imx_dma_config_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_dma-mx1-mx2.c_imx_dma_config_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_dma_channel = type { i32, i32, i32 }

@imx_dma_channels = common dso_local global %struct.imx_dma_channel* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@CCR_REN = common dso_local global i32 0, align 4
@DMA_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_dma_config_channel(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.imx_dma_channel*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.imx_dma_channel*, %struct.imx_dma_channel** @imx_dma_channels, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.imx_dma_channel, %struct.imx_dma_channel* %14, i64 %16
  store %struct.imx_dma_channel* %17, %struct.imx_dma_channel** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.imx_dma_channel*, %struct.imx_dma_channel** %12, align 8
  %19 = getelementptr inbounds %struct.imx_dma_channel, %struct.imx_dma_channel* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %5
  %23 = load %struct.imx_dma_channel*, %struct.imx_dma_channel** %12, align 8
  %24 = getelementptr inbounds %struct.imx_dma_channel, %struct.imx_dma_channel* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.imx_dma_channel*, %struct.imx_dma_channel** %12, align 8
  %26 = call i32 @imx_dma_hw_chain(%struct.imx_dma_channel* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %60

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %5
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @CCR_REN, align 4
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 %39, 2
  %41 = or i32 %38, %40
  %42 = load i32, i32* %13, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.imx_dma_channel*, %struct.imx_dma_channel** %12, align 8
  %45 = getelementptr inbounds %struct.imx_dma_channel, %struct.imx_dma_channel* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 2
  %49 = or i32 %46, %48
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.imx_dma_channel*, %struct.imx_dma_channel** %12, align 8
  %53 = getelementptr inbounds %struct.imx_dma_channel, %struct.imx_dma_channel* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i64, i64* @DMA_BASE, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @DMA_RSSR(i32 %56)
  %58 = add nsw i64 %55, %57
  %59 = call i32 @__raw_writel(i32 %54, i64 %58)
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %37, %28
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @imx_dma_hw_chain(%struct.imx_dma_channel*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i64 @DMA_RSSR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
