; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_setup_tx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_setup_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, %struct.TYPE_2__*, %struct.jme_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.jme_ring = type { i64, i32*, i64, i32*, i32*, i32, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@RING_DESC_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*)* @jme_setup_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_setup_tx_resources(%struct.jme_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca %struct.jme_ring*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %3, align 8
  %5 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %5, i32 0, i32 2
  %7 = load %struct.jme_ring*, %struct.jme_ring** %6, align 8
  %8 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %7, i64 0
  store %struct.jme_ring* %8, %struct.jme_ring** %4, align 8
  %9 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @TX_RING_ALLOC_SIZE(i32 %15)
  %17 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %18 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call i32* @dma_alloc_coherent(i32* %12, i32 %16, i64* %18, i32 %19)
  %21 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %22 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %21, i32 0, i32 4
  store i32* %20, i32** %22, align 8
  %23 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %24 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %111

28:                                               ; preds = %1
  %29 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %30 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = ptrtoint i32* %31 to i64
  %33 = load i32, i32* @RING_DESC_ALIGN, align 4
  %34 = call i64 @ALIGN(i64 %32, i32 %33)
  %35 = inttoptr i64 %34 to i8*
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %38 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %40 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @RING_DESC_ALIGN, align 4
  %43 = call i64 @ALIGN(i64 %41, i32 %42)
  %44 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %45 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %47 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %49 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %48, i32 0, i32 6
  %50 = call i32 @atomic_set(i32* %49, i32 0)
  %51 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %52 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %51, i32 0, i32 5
  %53 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @atomic_set(i32* %52, i32 %55)
  %57 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = mul i64 4, %60
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call i32* @kmalloc(i32 %62, i32 %63)
  %65 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %66 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %68 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %28
  br label %95

76:                                               ; preds = %28
  %77 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %78 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @TX_RING_ALLOC_SIZE(i32 %82)
  %84 = call i32 @memset(i32* %79, i32 0, i32 %83)
  %85 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %86 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = mul i64 4, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memset(i32* %87, i32 0, i32 %93)
  store i32 0, i32* %2, align 4
  br label %122

95:                                               ; preds = %75
  %96 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @TX_RING_ALLOC_SIZE(i32 %102)
  %104 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %105 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %108 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @dma_free_coherent(i32* %99, i32 %103, i32* %106, i64 %109)
  br label %111

111:                                              ; preds = %95, %27
  %112 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %113 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %112, i32 0, i32 3
  store i32* null, i32** %113, align 8
  %114 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %115 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  %116 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %117 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  %118 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %119 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %118, i32 0, i32 1
  store i32* null, i32** %119, align 8
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %111, %76
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @TX_RING_ALLOC_SIZE(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
