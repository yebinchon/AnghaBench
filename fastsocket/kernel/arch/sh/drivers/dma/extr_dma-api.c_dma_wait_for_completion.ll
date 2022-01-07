; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-api.c_dma_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-api.c_dma_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dma_channel*)* }
%struct.dma_channel = type { i32, i32 }

@DMA_TEI_CAPABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_wait_for_completion(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_info*, align 8
  %4 = alloca %struct.dma_channel*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.dma_info* @get_dma_info(i32 %5)
  store %struct.dma_info* %6, %struct.dma_info** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.dma_channel* @get_dma_channel(i32 %7)
  store %struct.dma_channel* %8, %struct.dma_channel** %4, align 8
  %9 = load %struct.dma_channel*, %struct.dma_channel** %4, align 8
  %10 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DMA_TEI_CAPABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.dma_channel*, %struct.dma_channel** %4, align 8
  %17 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %20 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64 (%struct.dma_channel*)*, i64 (%struct.dma_channel*)** %22, align 8
  %24 = load %struct.dma_channel*, %struct.dma_channel** %4, align 8
  %25 = call i64 %23(%struct.dma_channel* %24)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @wait_event(i32 %18, i32 %27)
  br label %41

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %39, %29
  %31 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %32 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64 (%struct.dma_channel*)*, i64 (%struct.dma_channel*)** %34, align 8
  %36 = load %struct.dma_channel*, %struct.dma_channel** %4, align 8
  %37 = call i64 %35(%struct.dma_channel* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = call i32 (...) @cpu_relax()
  br label %30

41:                                               ; preds = %15, %30
  ret void
}

declare dso_local %struct.dma_info* @get_dma_info(i32) #1

declare dso_local %struct.dma_channel* @get_dma_channel(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
