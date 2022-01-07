; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_ixp4xx_hss.c_destroy_hdlc_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_ixp4xx_hss.c_destroy_hdlc_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32*, i32, i32**, %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32 }
%struct.desc = type { i32 }

@RX_DESCS = common dso_local global i32 0, align 4
@RX_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TX_DESCS = common dso_local global i32 0, align 4
@dma_pool = common dso_local global i32* null, align 8
@ports_open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @destroy_hdlc_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_hdlc_queues(%struct.port* %0) #0 {
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
  br i1 %11, label %12, label %86

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %44, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @RX_DESCS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %47

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
  br i1 %29, label %30, label %43

30:                                               ; preds = %17
  %31 = load %struct.port*, %struct.port** %2, align 8
  %32 = getelementptr inbounds %struct.port, %struct.port* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.desc*, %struct.desc** %4, align 8
  %36 = getelementptr inbounds %struct.desc, %struct.desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RX_SIZE, align 4
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %40 = call i32 @dma_unmap_single(i32* %34, i32 %37, i32 %38, i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @free_buffer(i32* %41)
  br label %43

43:                                               ; preds = %30, %17
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %13

47:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %72, %47
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @TX_DESCS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load %struct.port*, %struct.port** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call %struct.desc* @tx_desc_ptr(%struct.port* %53, i32 %54)
  store %struct.desc* %55, %struct.desc** %6, align 8
  %56 = load %struct.port*, %struct.port** %2, align 8
  %57 = getelementptr inbounds %struct.port, %struct.port* %56, i32 0, i32 2
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %52
  %66 = load %struct.port*, %struct.port** %2, align 8
  %67 = load %struct.desc*, %struct.desc** %6, align 8
  %68 = call i32 @dma_unmap_tx(%struct.port* %66, %struct.desc* %67)
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @free_buffer(i32* %69)
  br label %71

71:                                               ; preds = %65, %52
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %48

75:                                               ; preds = %48
  %76 = load i32*, i32** @dma_pool, align 8
  %77 = load %struct.port*, %struct.port** %2, align 8
  %78 = getelementptr inbounds %struct.port, %struct.port* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.port*, %struct.port** %2, align 8
  %81 = getelementptr inbounds %struct.port, %struct.port* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dma_pool_free(i32* %76, i32* %79, i32 %82)
  %84 = load %struct.port*, %struct.port** %2, align 8
  %85 = getelementptr inbounds %struct.port, %struct.port* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %75, %1
  %87 = load i32, i32* @ports_open, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** @dma_pool, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32*, i32** @dma_pool, align 8
  %94 = call i32 @dma_pool_destroy(i32* %93)
  store i32* null, i32** @dma_pool, align 8
  br label %95

95:                                               ; preds = %92, %89, %86
  ret void
}

declare dso_local %struct.desc* @rx_desc_ptr(%struct.port*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

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
