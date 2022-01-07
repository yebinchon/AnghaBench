; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_disable_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_disable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32, i64 }

@DMA_TEI_CAPABLE = common dso_local global i32 0, align 4
@dma_base_addr = common dso_local global i64* null, align 8
@CHCR = common dso_local global i64 0, align 8
@CHCR_DE = common dso_local global i32 0, align 4
@CHCR_TE = common dso_local global i32 0, align 4
@CHCR_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_channel*)* @sh_dmac_disable_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_dmac_disable_dma(%struct.dma_channel* %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dma_channel* %0, %struct.dma_channel** %2, align 8
  %5 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %6 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @DMA_TEI_CAPABLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %13 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @get_dmte_irq(i64 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @disable_irq(i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load i64*, i64** @dma_base_addr, align 8
  %20 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %21 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHCR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @ctrl_inl(i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @CHCR_DE, align 4
  %29 = load i32, i32* @CHCR_TE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CHCR_IE, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i64*, i64** @dma_base_addr, align 8
  %38 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %39 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CHCR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @ctrl_outl(i32 %36, i64 %44)
  ret void
}

declare dso_local i32 @get_dmte_irq(i64) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @ctrl_inl(i64) #1

declare dso_local i32 @ctrl_outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
