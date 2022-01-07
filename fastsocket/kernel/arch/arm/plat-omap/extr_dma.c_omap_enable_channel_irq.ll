; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_enable_channel_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_enable_channel_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@OMAP2_DMA_CSR_CLEAR_MASK = common dso_local global i32 0, align 4
@dma_chan = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @omap_enable_channel_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_enable_channel_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i64 (...) @cpu_class_is_omap1()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @CSR(i32 %7)
  %9 = call i32 @dma_read(i32 %8)
  store i32 %9, i32* %3, align 4
  br label %19

10:                                               ; preds = %1
  %11 = call i64 (...) @cpu_class_is_omap2()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @OMAP2_DMA_CSR_CLEAR_MASK, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @CSR(i32 %15)
  %17 = call i32 @dma_write(i32 %14, i32 %16)
  br label %18

18:                                               ; preds = %13, %10
  br label %19

19:                                               ; preds = %18, %6
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_chan, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @CICR(i32 %26)
  %28 = call i32 @dma_write(i32 %25, i32 %27)
  ret void
}

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i32 @dma_read(i32) #1

declare dso_local i32 @CSR(i32) #1

declare dso_local i64 @cpu_class_is_omap2(...) #1

declare dso_local i32 @dma_write(i32, i32) #1

declare dso_local i32 @CICR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
