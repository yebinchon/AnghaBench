; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mcbsp.c_omap_mcbsp_tx_dma_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mcbsp.c_omap_mcbsp_tx_dma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"TX DMA callback : 0x%x\0A\00", align 1
@SPCR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @omap_mcbsp_tx_dma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcbsp_tx_dma_callback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.omap_mcbsp*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.omap_mcbsp*
  store %struct.omap_mcbsp* %9, %struct.omap_mcbsp** %7, align 8
  %10 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %7, align 8
  %11 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %7, align 8
  %14 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SPCR2, align 4
  %17 = call i32 @OMAP_MCBSP_READ(i32 %15, i32 %16)
  %18 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %7, align 8
  %20 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @omap_free_dma(i32 %21)
  %23 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %7, align 8
  %24 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 4
  %25 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %7, align 8
  %26 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %25, i32 0, i32 1
  %27 = call i32 @complete(i32* %26)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @OMAP_MCBSP_READ(i32, i32) #1

declare dso_local i32 @omap_free_dma(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
