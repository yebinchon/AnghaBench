; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_free_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_free_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }

@dma_chan = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"omap_dma: trying to free unallocated DMA channel %d\0A\00", align 1
@dma_chan_lock = common dso_local global i32 0, align 4
@IRQENABLE_L0 = common dso_local global i32 0, align 4
@OMAP2_DMA_CSR_CLEAR_MASK = common dso_local global i32 0, align 4
@IRQSTATUS_L0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_free_dma(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_chan, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %79

15:                                               ; preds = %1
  %16 = call i64 (...) @cpu_class_is_omap1()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @CICR(i32 %19)
  %21 = call i32 @dma_write(i32 0, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @CCR(i32 %22)
  %24 = call i32 @dma_write(i32 0, i32 %23)
  br label %25

25:                                               ; preds = %18, %15
  %26 = call i64 (...) @cpu_class_is_omap2()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %25
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_lock_irqsave(i32* @dma_chan_lock, i64 %29)
  %31 = load i32, i32* @IRQENABLE_L0, align 4
  %32 = call i32 @dma_read(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %2, align 4
  %34 = shl i32 1, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IRQENABLE_L0, align 4
  %40 = call i32 @dma_write(i32 %38, i32 %39)
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* @dma_chan_lock, i64 %41)
  %43 = load i32, i32* @OMAP2_DMA_CSR_CLEAR_MASK, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @CSR(i32 %44)
  %46 = call i32 @dma_write(i32 %43, i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* @IRQSTATUS_L0, align 4
  %50 = call i32 @dma_write(i32 %48, i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @CICR(i32 %51)
  %53 = call i32 @dma_write(i32 0, i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @CCR(i32 %54)
  %56 = call i32 @dma_write(i32 0, i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @omap_clear_dma(i32 %57)
  br label %59

59:                                               ; preds = %28, %25
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @spin_lock_irqsave(i32* @dma_chan_lock, i64 %60)
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_chan, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_chan, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 -1, i32* %71, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_chan, align 8
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  store i32* null, i32** %76, align 8
  %77 = load i64, i64* %3, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* @dma_chan_lock, i64 %77)
  br label %79

79:                                               ; preds = %59, %12
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i32 @dma_write(i32, i32) #1

declare dso_local i32 @CICR(i32) #1

declare dso_local i32 @CCR(i32) #1

declare dso_local i64 @cpu_class_is_omap2(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dma_read(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @CSR(i32) #1

declare dso_local i32 @omap_clear_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
