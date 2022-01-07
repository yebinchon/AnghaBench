; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_stats_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__*, %struct.be_dma_mem }
%struct.TYPE_2__ = type { i32 }
%struct.be_dma_mem = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_stats_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_stats_init(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_dma_mem*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %5 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %5, i32 0, i32 1
  store %struct.be_dma_mem* %6, %struct.be_dma_mem** %4, align 8
  %7 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %8 = call i64 @lancer_chip(%struct.be_adapter* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %12 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 0
  store i32 4, i32* %12, align 8
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %15 = call i64 @BE2_chip(%struct.be_adapter* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %19 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %18, i32 0, i32 0
  store i32 4, i32* %19, align 8
  br label %23

20:                                               ; preds = %13
  %21 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %22 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %21, i32 0, i32 0
  store i32 4, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %17
  br label %24

24:                                               ; preds = %23, %10
  %25 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %30 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %33 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %32, i32 0, i32 2
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load i32, i32* @__GFP_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = call i32* @dma_alloc_coherent(i32* %28, i32 %31, i32* %33, i32 %36)
  %38 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %39 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %41 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %46

45:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i64 @BE2_chip(%struct.be_adapter*) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
