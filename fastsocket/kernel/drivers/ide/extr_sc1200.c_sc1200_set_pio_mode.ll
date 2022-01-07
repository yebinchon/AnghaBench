; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sc1200.c_sc1200_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sc1200.c_sc1200_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*, i32)* }

@XFER_UDMA_0 = common dso_local global i32 0, align 4
@XFER_UDMA_1 = common dso_local global i32 0, align 4
@XFER_UDMA_2 = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@XFER_MW_DMA_1 = common dso_local global i32 0, align 4
@XFER_MW_DMA_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SC1200: %s: changing (U)DMA mode\0A\00", align 1
@IDE_DFLAG_USING_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @sc1200_set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc1200_set_pio_mode(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %5, align 8
  store i32 -1, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %23 [
    i32 200, label %11
    i32 201, label %13
    i32 202, label %15
    i32 100, label %17
    i32 101, label %19
    i32 102, label %21
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @XFER_UDMA_0, align 4
  store i32 %12, i32* %6, align 4
  br label %23

13:                                               ; preds = %2
  %14 = load i32, i32* @XFER_UDMA_1, align 4
  store i32 %14, i32* %6, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @XFER_UDMA_2, align 4
  store i32 %16, i32* %6, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @XFER_MW_DMA_0, align 4
  store i32 %18, i32* %6, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @XFER_MW_DMA_1, align 4
  store i32 %20, i32* %6, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @XFER_MW_DMA_2, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %2, %21, %19, %17, %15, %13, %11
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %53

26:                                               ; preds = %23
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = call i32 @ide_dma_off_quietly(%struct.TYPE_11__* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @ide_set_dma_mode(%struct.TYPE_11__* %33, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %26
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IDE_DFLAG_USING_DMA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = call i32 %49(%struct.TYPE_11__* %50, i32 1)
  br label %52

52:                                               ; preds = %44, %37, %26
  br label %57

53:                                               ; preds = %23
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @sc1200_tunepio(%struct.TYPE_11__* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %52
  ret void
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @ide_dma_off_quietly(%struct.TYPE_11__*) #1

declare dso_local i64 @ide_set_dma_mode(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sc1200_tunepio(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
