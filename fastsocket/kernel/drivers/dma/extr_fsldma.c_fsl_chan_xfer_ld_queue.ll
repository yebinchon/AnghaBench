; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_fsl_chan_xfer_ld_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_fsl_chan_xfer_ld_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dma_chan = type { i32, i32, %struct.list_head, %struct.TYPE_4__, i32 }
%struct.list_head = type { %struct.list_head* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@DMA_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"xfer LDs staring from 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dma_chan*)* @fsl_chan_xfer_ld_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_chan_xfer_ld_queue(%struct.fsl_dma_chan* %0) #0 {
  %2 = alloca %struct.fsl_dma_chan*, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.fsl_dma_chan* %0, %struct.fsl_dma_chan** %2, align 8
  %6 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %11 = call i32 @dma_is_idle(%struct.fsl_dma_chan* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %76

14:                                               ; preds = %1
  %15 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %16 = call i32 @dma_halt(%struct.fsl_dma_chan* %15)
  %17 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %18 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.list_head, %struct.list_head* %18, i32 0, i32 0
  %20 = load %struct.list_head*, %struct.list_head** %19, align 8
  store %struct.list_head* %20, %struct.list_head** %3, align 8
  br label %21

21:                                               ; preds = %45, %14
  %22 = load %struct.list_head*, %struct.list_head** %3, align 8
  %23 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %24 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %23, i32 0, i32 2
  %25 = icmp ne %struct.list_head* %22, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.list_head*, %struct.list_head** %3, align 8
  %28 = call %struct.TYPE_6__* @to_fsl_desc(%struct.list_head* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %33 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %36 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @dma_async_is_complete(i32 %31, i32 %34, i32 %38)
  %40 = load i64, i64* @DMA_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %26, %21
  %43 = phi i1 [ false, %21 ], [ %41, %26 ]
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.list_head*, %struct.list_head** %3, align 8
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %46, i32 0, i32 0
  %48 = load %struct.list_head*, %struct.list_head** %47, align 8
  store %struct.list_head* %48, %struct.list_head** %3, align 8
  br label %21

49:                                               ; preds = %42
  %50 = load %struct.list_head*, %struct.list_head** %3, align 8
  %51 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %52 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %51, i32 0, i32 2
  %53 = icmp ne %struct.list_head* %50, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load %struct.list_head*, %struct.list_head** %3, align 8
  %56 = call %struct.TYPE_6__* @to_fsl_desc(%struct.list_head* %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %4, align 8
  %60 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %61 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @set_cdar(%struct.fsl_dma_chan* %65, i64 %66)
  %68 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %69 = call i32 @dma_start(%struct.fsl_dma_chan* %68)
  br label %75

70:                                               ; preds = %49
  %71 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %72 = call i32 @set_cdar(%struct.fsl_dma_chan* %71, i64 0)
  %73 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %74 = call i32 @set_ndar(%struct.fsl_dma_chan* %73, i32 0)
  br label %75

75:                                               ; preds = %70, %54
  br label %76

76:                                               ; preds = %75, %13
  %77 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %78 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %77, i32 0, i32 0
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dma_is_idle(%struct.fsl_dma_chan*) #1

declare dso_local i32 @dma_halt(%struct.fsl_dma_chan*) #1

declare dso_local i64 @dma_async_is_complete(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @to_fsl_desc(%struct.list_head*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @set_cdar(%struct.fsl_dma_chan*, i64) #1

declare dso_local i32 @dma_start(%struct.fsl_dma_chan*) #1

declare dso_local i32 @set_ndar(%struct.fsl_dma_chan*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
