; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_bfin_dma_5xx.c_free_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_bfin_dma_5xx.c_free_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"freedma() : BEGIN \0A\00", align 1
@MAX_DMA_CHANNELS = common dso_local global i32 0, align 4
@dma_ch = common dso_local global %struct.TYPE_2__* null, align 8
@DMA_CHANNEL_FREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"freedma() : END \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_dma(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MAX_DMA_CHANNELS, align 4
  %6 = icmp uge i32 %4, %5
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_ch, align 8
  %9 = load i32, i32* %2, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DMA_CHANNEL_FREE, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %7, %1
  %17 = phi i1 [ true, %1 ], [ %15, %7 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @disable_dma(i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @clear_dma_buffer(i32 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_ch, align 8
  %25 = load i32, i32* %2, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %16
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_ch, align 8
  %33 = load i32, i32* %2, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_ch, align 8
  %39 = load i32, i32* %2, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @free_irq(i64 %37, i32 %43)
  br label %45

45:                                               ; preds = %31, %16
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_ch, align 8
  %47 = load i32, i32* %2, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load i64, i64* @DMA_CHANNEL_FREE, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_ch, align 8
  %54 = load i32, i32* %2, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i64 %52, i64* %57, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_ch, align 8
  %59 = load i32, i32* %2, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_buffer(i32) #1

declare dso_local i32 @free_irq(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
