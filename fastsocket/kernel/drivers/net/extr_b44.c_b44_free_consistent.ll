; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_free_consistent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_free_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i32*, i32, %struct.TYPE_2__*, i32*, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@B44_FLAG_RX_RING_HACK = common dso_local global i32 0, align 4
@DMA_TABLE_BYTES = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@B44_FLAG_TX_RING_HACK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @b44_free_consistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_free_consistent(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  store %struct.b44* %0, %struct.b44** %2, align 8
  %3 = load %struct.b44*, %struct.b44** %2, align 8
  %4 = getelementptr inbounds %struct.b44, %struct.b44* %3, i32 0, i32 7
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @kfree(i32* %5)
  %7 = load %struct.b44*, %struct.b44** %2, align 8
  %8 = getelementptr inbounds %struct.b44, %struct.b44* %7, i32 0, i32 7
  store i32* null, i32** %8, align 8
  %9 = load %struct.b44*, %struct.b44** %2, align 8
  %10 = getelementptr inbounds %struct.b44, %struct.b44* %9, i32 0, i32 6
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @kfree(i32* %11)
  %13 = load %struct.b44*, %struct.b44** %2, align 8
  %14 = getelementptr inbounds %struct.b44, %struct.b44* %13, i32 0, i32 6
  store i32* null, i32** %14, align 8
  %15 = load %struct.b44*, %struct.b44** %2, align 8
  %16 = getelementptr inbounds %struct.b44, %struct.b44* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %65

19:                                               ; preds = %1
  %20 = load %struct.b44*, %struct.b44** %2, align 8
  %21 = getelementptr inbounds %struct.b44, %struct.b44* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @B44_FLAG_RX_RING_HACK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load %struct.b44*, %struct.b44** %2, align 8
  %28 = getelementptr inbounds %struct.b44, %struct.b44* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.b44*, %struct.b44** %2, align 8
  %33 = getelementptr inbounds %struct.b44, %struct.b44* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DMA_TABLE_BYTES, align 4
  %36 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %37 = call i32 @dma_unmap_single(i32 %31, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.b44*, %struct.b44** %2, align 8
  %39 = getelementptr inbounds %struct.b44, %struct.b44* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kfree(i32* %40)
  br label %56

42:                                               ; preds = %19
  %43 = load %struct.b44*, %struct.b44** %2, align 8
  %44 = getelementptr inbounds %struct.b44, %struct.b44* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DMA_TABLE_BYTES, align 4
  %49 = load %struct.b44*, %struct.b44** %2, align 8
  %50 = getelementptr inbounds %struct.b44, %struct.b44* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.b44*, %struct.b44** %2, align 8
  %53 = getelementptr inbounds %struct.b44, %struct.b44* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dma_free_coherent(i32 %47, i32 %48, i32* %51, i32 %54)
  br label %56

56:                                               ; preds = %42, %26
  %57 = load %struct.b44*, %struct.b44** %2, align 8
  %58 = getelementptr inbounds %struct.b44, %struct.b44* %57, i32 0, i32 4
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* @B44_FLAG_RX_RING_HACK, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.b44*, %struct.b44** %2, align 8
  %62 = getelementptr inbounds %struct.b44, %struct.b44* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %56, %1
  %66 = load %struct.b44*, %struct.b44** %2, align 8
  %67 = getelementptr inbounds %struct.b44, %struct.b44* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %116

70:                                               ; preds = %65
  %71 = load %struct.b44*, %struct.b44** %2, align 8
  %72 = getelementptr inbounds %struct.b44, %struct.b44* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @B44_FLAG_TX_RING_HACK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %70
  %78 = load %struct.b44*, %struct.b44** %2, align 8
  %79 = getelementptr inbounds %struct.b44, %struct.b44* %78, i32 0, i32 3
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.b44*, %struct.b44** %2, align 8
  %84 = getelementptr inbounds %struct.b44, %struct.b44* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @DMA_TABLE_BYTES, align 4
  %87 = load i32, i32* @DMA_TO_DEVICE, align 4
  %88 = call i32 @dma_unmap_single(i32 %82, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.b44*, %struct.b44** %2, align 8
  %90 = getelementptr inbounds %struct.b44, %struct.b44* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @kfree(i32* %91)
  br label %107

93:                                               ; preds = %70
  %94 = load %struct.b44*, %struct.b44** %2, align 8
  %95 = getelementptr inbounds %struct.b44, %struct.b44* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DMA_TABLE_BYTES, align 4
  %100 = load %struct.b44*, %struct.b44** %2, align 8
  %101 = getelementptr inbounds %struct.b44, %struct.b44* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.b44*, %struct.b44** %2, align 8
  %104 = getelementptr inbounds %struct.b44, %struct.b44* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dma_free_coherent(i32 %98, i32 %99, i32* %102, i32 %105)
  br label %107

107:                                              ; preds = %93, %77
  %108 = load %struct.b44*, %struct.b44** %2, align 8
  %109 = getelementptr inbounds %struct.b44, %struct.b44* %108, i32 0, i32 1
  store i32* null, i32** %109, align 8
  %110 = load i32, i32* @B44_FLAG_TX_RING_HACK, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.b44*, %struct.b44** %2, align 8
  %113 = getelementptr inbounds %struct.b44, %struct.b44* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %107, %65
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
