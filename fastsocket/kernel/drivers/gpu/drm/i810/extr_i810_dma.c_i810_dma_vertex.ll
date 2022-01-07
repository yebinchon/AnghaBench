; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_vertex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32*, i64, %struct.drm_device_dma* }
%struct.drm_device_dma = type { i64, i32* }
%struct.drm_file = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"idx %d used %d discard %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@_DRM_STAT_SECONDARY = common dso_local global i64 0, align 8
@_DRM_STAT_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @i810_dma_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810_dma_vertex(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device_dma*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 2
  %15 = load %struct.drm_device_dma*, %struct.drm_device_dma** %14, align 8
  store %struct.drm_device_dma* %15, %struct.drm_device_dma** %8, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %9, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %10, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %11, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %12, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %31 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %29, %struct.drm_file* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %37, i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %51 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46, %3
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %101

57:                                               ; preds = %46
  %58 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %59 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %60 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @i810_dma_dispatch_vertex(%struct.drm_device* %58, i32 %66, i32 %69, i32 %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %78 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @_DRM_STAT_SECONDARY, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = call i32 @atomic_add(i32 %76, i32* %81)
  %83 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %84 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @_DRM_STAT_DMA, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = call i32 @atomic_inc(i32* %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %91, 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load i64*, i64** %10, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 5
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %57, %54
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i32, i32) #1

declare dso_local i32 @i810_dma_dispatch_vertex(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
