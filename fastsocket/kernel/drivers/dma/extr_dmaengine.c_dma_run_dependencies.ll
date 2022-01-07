; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmaengine.c_dma_run_dependencies.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmaengine.c_dma_run_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, i32, %struct.dma_async_tx_descriptor*, %struct.dma_chan*, i32* }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dma_chan*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_run_dependencies(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca %struct.dma_async_tx_descriptor*, align 8
  %3 = alloca %struct.dma_async_tx_descriptor*, align 8
  %4 = alloca %struct.dma_async_tx_descriptor*, align 8
  %5 = alloca %struct.dma_chan*, align 8
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %2, align 8
  %6 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %7 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %6, i32 0, i32 2
  %8 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  store %struct.dma_async_tx_descriptor* %8, %struct.dma_async_tx_descriptor** %3, align 8
  %9 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %10 = icmp ne %struct.dma_async_tx_descriptor* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %61

12:                                               ; preds = %1
  %13 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %14 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %13, i32 0, i32 2
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %14, align 8
  %15 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %16 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %15, i32 0, i32 3
  %17 = load %struct.dma_chan*, %struct.dma_chan** %16, align 8
  store %struct.dma_chan* %17, %struct.dma_chan** %5, align 8
  br label %18

18:                                               ; preds = %51, %12
  %19 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %20 = icmp ne %struct.dma_async_tx_descriptor* %19, null
  br i1 %20, label %21, label %53

21:                                               ; preds = %18
  %22 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %23 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %26 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %25, i32 0, i32 4
  store i32* null, i32** %26, align 8
  %27 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %28 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %27, i32 0, i32 2
  %29 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %28, align 8
  store %struct.dma_async_tx_descriptor* %29, %struct.dma_async_tx_descriptor** %4, align 8
  %30 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %31 = icmp ne %struct.dma_async_tx_descriptor* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %34 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %33, i32 0, i32 3
  %35 = load %struct.dma_chan*, %struct.dma_chan** %34, align 8
  %36 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %37 = icmp eq %struct.dma_chan* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %40 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %39, i32 0, i32 2
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %40, align 8
  br label %42

41:                                               ; preds = %32, %21
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %42

42:                                               ; preds = %41, %38
  %43 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %44 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock_bh(i32* %44)
  %46 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %47 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %46, i32 0, i32 0
  %48 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %47, align 8
  %49 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %50 = call i32 %48(%struct.dma_async_tx_descriptor* %49)
  br label %51

51:                                               ; preds = %42
  %52 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  store %struct.dma_async_tx_descriptor* %52, %struct.dma_async_tx_descriptor** %3, align 8
  br label %18

53:                                               ; preds = %18
  %54 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %55 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.dma_chan*)*, i32 (%struct.dma_chan*)** %57, align 8
  %59 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %60 = call i32 %58(%struct.dma_chan* %59)
  br label %61

61:                                               ; preds = %53, %11
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
