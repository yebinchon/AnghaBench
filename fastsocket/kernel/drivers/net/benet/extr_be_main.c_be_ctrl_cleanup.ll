; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_ctrl_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_ctrl_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__*, %struct.be_dma_mem, %struct.be_dma_mem }
%struct.TYPE_2__ = type { i32 }
%struct.be_dma_mem = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*)* @be_ctrl_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_ctrl_cleanup(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.be_dma_mem*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %4 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %4, i32 0, i32 2
  store %struct.be_dma_mem* %5, %struct.be_dma_mem** %3, align 8
  %6 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %7 = call i32 @be_unmap_pci_bars(%struct.be_adapter* %6)
  %8 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %9 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %18 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %21 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %24 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dma_free_coherent(i32* %16, i32 %19, i64 %22, i32 %25)
  br label %27

27:                                               ; preds = %12, %1
  %28 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %28, i32 0, i32 1
  store %struct.be_dma_mem* %29, %struct.be_dma_mem** %3, align 8
  %30 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %31 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %27
  %35 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %40 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %43 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %46 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dma_free_coherent(i32* %38, i32 %41, i64 %44, i32 %47)
  br label %49

49:                                               ; preds = %34, %27
  ret void
}

declare dso_local i32 @be_unmap_pci_bars(%struct.be_adapter*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
