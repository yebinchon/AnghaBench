; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmaengine.c_dma_chan_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmaengine.c_dma_chan_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dma_chan*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @dma_chan_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_chan_put(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %3 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %4 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %14 = call i32 @dma_chan_to_owner(%struct.dma_chan* %13)
  %15 = call i32 @module_put(i32 %14)
  %16 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %17 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %8
  %21 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %22 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.dma_chan*)*, i32 (%struct.dma_chan*)** %24, align 8
  %26 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %27 = call i32 %25(%struct.dma_chan* %26)
  br label %28

28:                                               ; preds = %7, %20, %8
  ret void
}

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @dma_chan_to_owner(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
