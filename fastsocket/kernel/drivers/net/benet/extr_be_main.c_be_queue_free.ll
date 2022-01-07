; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_queue_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_queue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.be_queue_info = type { %struct.be_dma_mem }
%struct.be_dma_mem = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, %struct.be_queue_info*)* @be_queue_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_queue_free(%struct.be_adapter* %0, %struct.be_queue_info* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_queue_info*, align 8
  %5 = alloca %struct.be_dma_mem*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store %struct.be_queue_info* %1, %struct.be_queue_info** %4, align 8
  %6 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %7 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %6, i32 0, i32 0
  store %struct.be_dma_mem* %7, %struct.be_dma_mem** %5, align 8
  %8 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %9 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %18 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %21 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %24 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dma_free_coherent(i32* %16, i32 %19, i32* %22, i32 %25)
  %27 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %28 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
