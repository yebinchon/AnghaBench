; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_enable_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_enable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i64, i32 }

@dma_base_addr = common dso_local global i64* null, align 8
@CHCR = common dso_local global i64 0, align 8
@CHCR_DE = common dso_local global i32 0, align 4
@DMA_TEI_CAPABLE = common dso_local global i32 0, align 4
@CHCR_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_channel*)* @sh_dmac_enable_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_dmac_enable_dma(%struct.dma_channel* %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dma_channel* %0, %struct.dma_channel** %2, align 8
  %5 = load i64*, i64** @dma_base_addr, align 8
  %6 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %7 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i64, i64* %5, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHCR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @ctrl_inl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @CHCR_DE, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %18 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DMA_TEI_CAPABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @CHCR_IE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %1
  %28 = load i32, i32* %4, align 4
  %29 = load i64*, i64** @dma_base_addr, align 8
  %30 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %31 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CHCR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @ctrl_outl(i32 %28, i64 %36)
  %38 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %39 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DMA_TEI_CAPABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %27
  %45 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %46 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @get_dmte_irq(i64 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @enable_irq(i32 %49)
  br label %51

51:                                               ; preds = %44, %27
  ret void
}

declare dso_local i32 @ctrl_inl(i64) #1

declare dso_local i32 @ctrl_outl(i32, i64) #1

declare dso_local i32 @get_dmte_irq(i64) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
