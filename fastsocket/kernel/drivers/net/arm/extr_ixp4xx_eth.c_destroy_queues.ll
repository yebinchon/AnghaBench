; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ixp4xx_eth.c_destroy_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ixp4xx_eth.c_destroy_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32*, i32, i32**, %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32 }
%struct.desc = type { i64 }

@RX_DESCS = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@RX_BUFF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TX_DESCS = common dso_local global i32 0, align 4
@dma_pool = common dso_local global i32* null, align 8
@ports_open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @destroy_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_queues(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.desc*, align 8
  %7 = alloca i32*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %8 = load %struct.port*, %struct.port** %2, align 8
  %9 = getelementptr inbounds %struct.port, %struct.port* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %88

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %46, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @RX_DESCS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load %struct.port*, %struct.port** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call %struct.desc* @rx_desc_ptr(%struct.port* %18, i32 %19)
  store %struct.desc* %20, %struct.desc** %4, align 8
  %21 = load %struct.port*, %struct.port** %2, align 8
  %22 = getelementptr inbounds %struct.port, %struct.port* %21, i32 0, i32 4
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %17
  %31 = load %struct.port*, %struct.port** %2, align 8
  %32 = getelementptr inbounds %struct.port, %struct.port* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.desc*, %struct.desc** %4, align 8
  %36 = getelementptr inbounds %struct.desc, %struct.desc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NET_IP_ALIGN, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load i32, i32* @RX_BUFF_SIZE, align 4
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = call i32 @dma_unmap_single(i32* %34, i64 %39, i32 %40, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @free_buffer(i32* %43)
  br label %45

45:                                               ; preds = %30, %17
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %13

49:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %74, %49
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @TX_DESCS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load %struct.port*, %struct.port** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call %struct.desc* @tx_desc_ptr(%struct.port* %55, i32 %56)
  store %struct.desc* %57, %struct.desc** %6, align 8
  %58 = load %struct.port*, %struct.port** %2, align 8
  %59 = getelementptr inbounds %struct.port, %struct.port* %58, i32 0, i32 2
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %54
  %68 = load %struct.port*, %struct.port** %2, align 8
  %69 = load %struct.desc*, %struct.desc** %6, align 8
  %70 = call i32 @dma_unmap_tx(%struct.port* %68, %struct.desc* %69)
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @free_buffer(i32* %71)
  br label %73

73:                                               ; preds = %67, %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %50

77:                                               ; preds = %50
  %78 = load i32*, i32** @dma_pool, align 8
  %79 = load %struct.port*, %struct.port** %2, align 8
  %80 = getelementptr inbounds %struct.port, %struct.port* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.port*, %struct.port** %2, align 8
  %83 = getelementptr inbounds %struct.port, %struct.port* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dma_pool_free(i32* %78, i32* %81, i32 %84)
  %86 = load %struct.port*, %struct.port** %2, align 8
  %87 = getelementptr inbounds %struct.port, %struct.port* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  br label %88

88:                                               ; preds = %77, %1
  %89 = load i32, i32* @ports_open, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load i32*, i32** @dma_pool, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32*, i32** @dma_pool, align 8
  %96 = call i32 @dma_pool_destroy(i32* %95)
  store i32* null, i32** @dma_pool, align 8
  br label %97

97:                                               ; preds = %94, %91, %88
  ret void
}

declare dso_local %struct.desc* @rx_desc_ptr(%struct.port*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @free_buffer(i32*) #1

declare dso_local %struct.desc* @tx_desc_ptr(%struct.port*, i32) #1

declare dso_local i32 @dma_unmap_tx(%struct.port*, %struct.desc*) #1

declare dso_local i32 @dma_pool_free(i32*, i32*, i32) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
