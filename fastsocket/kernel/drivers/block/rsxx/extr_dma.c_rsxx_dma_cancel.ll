; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_dma_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_dma_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_dma_ctrl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rsxx_dma = type { i32 }

@RSXX_MAX_OUTSTANDING_CMDS = common dso_local global i32 0, align 4
@DMA_CANCELLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsxx_dma_cancel(%struct.rsxx_dma_ctrl* %0) #0 {
  %2 = alloca %struct.rsxx_dma_ctrl*, align 8
  %3 = alloca %struct.rsxx_dma*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rsxx_dma_ctrl* %0, %struct.rsxx_dma_ctrl** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @RSXX_MAX_OUTSTANDING_CMDS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %12 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.rsxx_dma* @get_tracker_dma(i32 %13, i32 %14)
  store %struct.rsxx_dma* %15, %struct.rsxx_dma** %3, align 8
  %16 = load %struct.rsxx_dma*, %struct.rsxx_dma** %3, align 8
  %17 = icmp ne %struct.rsxx_dma* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %10
  %19 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %20 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @atomic_dec(i32* %21)
  %23 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %24 = load %struct.rsxx_dma*, %struct.rsxx_dma** %3, align 8
  %25 = load i32, i32* @DMA_CANCELLED, align 4
  %26 = call i32 @rsxx_complete_dma(%struct.rsxx_dma_ctrl* %23, %struct.rsxx_dma* %24, i32 %25)
  %27 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %28 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @push_tracker(i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %18, %10
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %6

38:                                               ; preds = %6
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.rsxx_dma* @get_tracker_dma(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @rsxx_complete_dma(%struct.rsxx_dma_ctrl*, %struct.rsxx_dma*, i32) #1

declare dso_local i32 @push_tracker(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
