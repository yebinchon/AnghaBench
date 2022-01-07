; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_transfer_fifo_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_transfer_fifo_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@R592_LFIFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"doing dma transfer\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"problem in dma_map_sg\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"DMA timeout\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r592_device*)* @r592_transfer_fifo_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r592_transfer_fifo_dma(%struct.r592_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r592_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.r592_device* %0, %struct.r592_device** %3, align 8
  %7 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %8 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %13 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %122

21:                                               ; preds = %11
  %22 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %23 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %29 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WRITE, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @R592_LFIFO_SIZE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %122

42:                                               ; preds = %21
  %43 = call i32 @dbg_verbose(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %45 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %47 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @INIT_COMPLETION(i32 %48)
  %50 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %51 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %55 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %42
  %61 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %64

62:                                               ; preds = %42
  %63 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = call i32 @dma_map_sg(i32* %53, %struct.TYPE_8__* %57, i32 1, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %82, label %69

69:                                               ; preds = %64
  %70 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %71 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = call i32 @sg_dma_len(%struct.TYPE_8__* %73)
  %75 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %76 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %74, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %69, %64
  %83 = call i32 @message(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %122

86:                                               ; preds = %69
  %87 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @r592_start_dma(%struct.r592_device* %87, i32 %88)
  %90 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %91 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %90, i32 0, i32 3
  %92 = call i32 @msecs_to_jiffies(i32 1000)
  %93 = call i32 @wait_for_completion_timeout(i32* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %86
  %96 = call i32 @message(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %98 = load i32, i32* @ETIMEDOUT, align 4
  %99 = sub nsw i32 0, %98
  %100 = call i32 @r592_stop_dma(%struct.r592_device* %97, i32 %99)
  br label %101

101:                                              ; preds = %95, %86
  %102 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %103 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %107 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %116

114:                                              ; preds = %101
  %115 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  %118 = call i32 @dma_unmap_sg(i32* %105, %struct.TYPE_8__* %109, i32 1, i32 %117)
  %119 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %120 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %116, %82, %39, %18
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @dbg_verbose(i8*) #1

declare dso_local i32 @INIT_COMPLETION(i32) #1

declare dso_local i32 @dma_map_sg(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @sg_dma_len(%struct.TYPE_8__*) #1

declare dso_local i32 @message(i8*) #1

declare dso_local i32 @r592_start_dma(%struct.r592_device*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @r592_stop_dma(%struct.r592_device*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
