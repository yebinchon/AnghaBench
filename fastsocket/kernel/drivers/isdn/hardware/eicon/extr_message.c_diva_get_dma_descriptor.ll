; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_diva_get_dma_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_diva_get_dma_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 (%struct.TYPE_14__*)* }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i64 }
%struct.TYPE_10__ = type { i32, i64, i32, i32* }

@diva_xdi_extended_features = common dso_local global i32 0, align 4
@DIVA_CAPI_XDI_PROVIDES_RX_DMA = common dso_local global i32 0, align 4
@IDI_SYNC_REQ_DMA_DESCRIPTOR_OPERATION = common dso_local global i32 0, align 4
@IDI_SYNC_REQ_DMA_DESCRIPTOR_ALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dma_alloc, a:%d (%d-%08x)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"dma_alloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64*)* @diva_get_dma_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diva_get_dma_descriptor(%struct.TYPE_12__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = bitcast %struct.TYPE_14__* %6 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %7, align 8
  %9 = load i32, i32* @diva_xdi_extended_features, align 4
  %10 = load i32, i32* @DIVA_CAPI_XDI_PROVIDES_RX_DMA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %105

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @IDI_SYNC_REQ_DMA_DESCRIPTOR_OPERATION, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @IDI_SYNC_REQ_DMA_DESCRIPTOR_ALLOC, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 1
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = bitcast %struct.TYPE_13__* %53 to %struct.TYPE_14__*
  %55 = call i32 %52(%struct.TYPE_14__* %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %102, label %62

62:                                               ; preds = %14
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %62
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %69
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %5, align 8
  store i64 %81, i64* %82, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i64*, i64** %5, align 8
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %87, i32 %92, i64 %94)
  %96 = call i32 @dbug(i32 3, i32 %95)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %3, align 4
  br label %105

102:                                              ; preds = %69, %62, %14
  %103 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %104 = call i32 @dbug(i32 1, i32 %103)
  store i32 -1, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %76, %13
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
