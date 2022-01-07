; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ixp4xx_eth.c_init_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ixp4xx_eth.c_init_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { %struct.TYPE_8__**, %struct.TYPE_9__*, %struct.TYPE_8__**, %struct.TYPE_8__**, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8* }
%struct.desc = type { i32, i32 }

@ports_open = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@POOL_ALLOC_SIZE = common dso_local global i32 0, align 4
@dma_pool = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RX_DESCS = common dso_local global i32 0, align 4
@RX_BUFF_SIZE = common dso_local global i32 0, align 4
@MAX_MRU = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port*)* @init_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_queues(%struct.port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.desc*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  store %struct.port* %0, %struct.port** %3, align 8
  %8 = load i32, i32* @ports_open, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @DRV_NAME, align 4
  %12 = load i32, i32* @POOL_ALLOC_SIZE, align 4
  %13 = call i32 @dma_pool_create(i32 %11, i32* null, i32 %12, i32 32, i32 0)
  store i32 %13, i32* @dma_pool, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %107

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* @dma_pool, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load %struct.port*, %struct.port** %3, align 8
  %23 = getelementptr inbounds %struct.port, %struct.port* %22, i32 0, i32 4
  %24 = call %struct.TYPE_8__** @dma_pool_alloc(i32 %20, i32 %21, i32* %23)
  %25 = load %struct.port*, %struct.port** %3, align 8
  %26 = getelementptr inbounds %struct.port, %struct.port* %25, i32 0, i32 3
  store %struct.TYPE_8__** %24, %struct.TYPE_8__*** %26, align 8
  %27 = icmp ne %struct.TYPE_8__** %24, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %107

31:                                               ; preds = %19
  %32 = load %struct.port*, %struct.port** %3, align 8
  %33 = getelementptr inbounds %struct.port, %struct.port* %32, i32 0, i32 3
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %33, align 8
  %35 = load i32, i32* @POOL_ALLOC_SIZE, align 4
  %36 = call i32 @memset(%struct.TYPE_8__** %34, i32 0, i32 %35)
  %37 = load %struct.port*, %struct.port** %3, align 8
  %38 = getelementptr inbounds %struct.port, %struct.port* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %38, align 8
  %40 = call i32 @memset(%struct.TYPE_8__** %39, i32 0, i32 8)
  %41 = load %struct.port*, %struct.port** %3, align 8
  %42 = getelementptr inbounds %struct.port, %struct.port* %41, i32 0, i32 2
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %42, align 8
  %44 = call i32 @memset(%struct.TYPE_8__** %43, i32 0, i32 8)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %103, %31
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @RX_DESCS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %106

49:                                               ; preds = %45
  %50 = load %struct.port*, %struct.port** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call %struct.desc* @rx_desc_ptr(%struct.port* %50, i32 %51)
  store %struct.desc* %52, %struct.desc** %5, align 8
  %53 = load i32, i32* @RX_BUFF_SIZE, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.TYPE_8__* @kmalloc(i32 %53, i32 %54)
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %6, align 8
  %56 = icmp ne %struct.TYPE_8__* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %107

60:                                               ; preds = %49
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = bitcast %struct.TYPE_8__* %61 to i8*
  store i8* %62, i8** %7, align 8
  %63 = load i32, i32* @MAX_MRU, align 4
  %64 = load %struct.desc*, %struct.desc** %5, align 8
  %65 = getelementptr inbounds %struct.desc, %struct.desc* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.port*, %struct.port** %3, align 8
  %67 = getelementptr inbounds %struct.port, %struct.port* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* @RX_BUFF_SIZE, align 4
  %72 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %73 = call i32 @dma_map_single(i32* %69, i8* %70, i32 %71, i32 %72)
  %74 = load %struct.desc*, %struct.desc** %5, align 8
  %75 = getelementptr inbounds %struct.desc, %struct.desc* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.port*, %struct.port** %3, align 8
  %77 = getelementptr inbounds %struct.port, %struct.port* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.desc*, %struct.desc** %5, align 8
  %81 = getelementptr inbounds %struct.desc, %struct.desc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @dma_mapping_error(i32* %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %60
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = call i32 @free_buffer(%struct.TYPE_8__* %86)
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %107

90:                                               ; preds = %60
  %91 = load i32, i32* @NET_IP_ALIGN, align 4
  %92 = load %struct.desc*, %struct.desc** %5, align 8
  %93 = getelementptr inbounds %struct.desc, %struct.desc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %97 = load %struct.port*, %struct.port** %3, align 8
  %98 = getelementptr inbounds %struct.port, %struct.port* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %99, i64 %101
  store %struct.TYPE_8__* %96, %struct.TYPE_8__** %102, align 8
  br label %103

103:                                              ; preds = %90
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %45

106:                                              ; preds = %45
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %85, %57, %28, %15
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @dma_pool_create(i32, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__** @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_8__**, i32, i32) #1

declare dso_local %struct.desc* @rx_desc_ptr(%struct.port*, i32) #1

declare dso_local %struct.TYPE_8__* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @free_buffer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
