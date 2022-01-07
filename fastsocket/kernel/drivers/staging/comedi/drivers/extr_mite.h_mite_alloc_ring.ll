; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.h_mite_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.h_mite_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_dma_descriptor_ring = type { i64, i32*, i64, i32* }
%struct.mite_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mite_dma_descriptor_ring* (%struct.mite_struct*)* @mite_alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mite_dma_descriptor_ring* @mite_alloc_ring(%struct.mite_struct* %0) #0 {
  %2 = alloca %struct.mite_dma_descriptor_ring*, align 8
  %3 = alloca %struct.mite_struct*, align 8
  %4 = alloca %struct.mite_dma_descriptor_ring*, align 8
  store %struct.mite_struct* %0, %struct.mite_struct** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mite_dma_descriptor_ring* @kmalloc(i32 32, i32 %5)
  store %struct.mite_dma_descriptor_ring* %6, %struct.mite_dma_descriptor_ring** %4, align 8
  %7 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %8 = icmp eq %struct.mite_dma_descriptor_ring* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  store %struct.mite_dma_descriptor_ring* %10, %struct.mite_dma_descriptor_ring** %2, align 8
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.mite_struct*, %struct.mite_struct** %3, align 8
  %13 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32* @get_device(i32* %15)
  %17 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %18 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %17, i32 0, i32 3
  store i32* %16, i32** %18, align 8
  %19 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %20 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %25 = call i32 @kfree(%struct.mite_dma_descriptor_ring* %24)
  store %struct.mite_dma_descriptor_ring* null, %struct.mite_dma_descriptor_ring** %2, align 8
  br label %34

26:                                               ; preds = %11
  %27 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %28 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %30 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %32 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  store %struct.mite_dma_descriptor_ring* %33, %struct.mite_dma_descriptor_ring** %2, align 8
  br label %34

34:                                               ; preds = %26, %23, %9
  %35 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %2, align 8
  ret %struct.mite_dma_descriptor_ring* %35
}

declare dso_local %struct.mite_dma_descriptor_ring* @kmalloc(i32, i32) #1

declare dso_local i32* @get_device(i32*) #1

declare dso_local i32 @kfree(%struct.mite_dma_descriptor_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
