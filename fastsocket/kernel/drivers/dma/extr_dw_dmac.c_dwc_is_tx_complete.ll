; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dwc_is_tx_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dwc_is_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, i32 }
%struct.dw_dma_chan = type { i32 }

@DMA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, i32*, i32*)* @dwc_is_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_is_tx_complete(%struct.dma_chan* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dw_dma_chan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %14 = call %struct.dw_dma_chan* @to_dw_dma_chan(%struct.dma_chan* %13)
  store %struct.dw_dma_chan* %14, %struct.dw_dma_chan** %9, align 8
  %15 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %9, align 8
  %16 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %19 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @dma_async_is_complete(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @DMA_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %4
  %29 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %30 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @to_dw_dma(i32 %31)
  %33 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %9, align 8
  %34 = call i32 @dwc_scan_descriptors(i32 %32, %struct.dw_dma_chan* %33)
  %35 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %9, align 8
  %36 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %39 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dma_async_is_complete(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %28, %4
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %12, align 4
  ret i32 %58
}

declare dso_local %struct.dw_dma_chan* @to_dw_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_async_is_complete(i32, i32, i32) #1

declare dso_local i32 @dwc_scan_descriptors(i32, %struct.dw_dma_chan*) #1

declare dso_local i32 @to_dw_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
