; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_free_rx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_free_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, %struct.TYPE_2__*, %struct.jme_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.jme_ring = type { i32, i64, i32*, i64, i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_free_rx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_free_rx_resources(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.jme_ring*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %5 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %5, i32 0, i32 2
  %7 = load %struct.jme_ring*, %struct.jme_ring** %6, align 8
  %8 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %7, i64 0
  store %struct.jme_ring* %8, %struct.jme_ring** %4, align 8
  %9 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %10 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %9, i32 0, i32 6
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %63

13:                                               ; preds = %1
  %14 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %15 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %29, %18
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @jme_free_rx_buf(%struct.jme_adapter* %26, i32 %27)
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %19

32:                                               ; preds = %19
  %33 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %34 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @kfree(i32* %35)
  br label %37

37:                                               ; preds = %32, %13
  %38 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @RX_RING_ALLOC_SIZE(i32 %44)
  %46 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %47 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %50 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @dma_free_coherent(i32* %41, i32 %45, i32* %48, i64 %51)
  %53 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %54 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %53, i32 0, i32 6
  store i32* null, i32** %54, align 8
  %55 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %56 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %55, i32 0, i32 5
  store i32* null, i32** %56, align 8
  %57 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %58 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %60 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %62 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %37, %1
  %64 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %65 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %67 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %66, i32 0, i32 0
  %68 = call i32 @atomic_set(i32* %67, i32 0)
  ret void
}

declare dso_local i32 @jme_free_rx_buf(%struct.jme_adapter*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

declare dso_local i32 @RX_RING_ALLOC_SIZE(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
