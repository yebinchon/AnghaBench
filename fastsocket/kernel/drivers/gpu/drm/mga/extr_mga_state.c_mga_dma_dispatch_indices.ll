; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_dispatch_indices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_dispatch_indices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, i32 }
%struct.drm_buf = type { i64, i64, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"buf=%d start=%d end=%d\0A\00", align 1
@MGA_DMAPAD = common dso_local global i32 0, align 4
@MGA_SETUPADDRESS = common dso_local global i32 0, align 4
@MGA_SETUPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_buf*, i32, i32)* @mga_dma_dispatch_indices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_dma_dispatch_indices(%struct.drm_device* %0, %struct.drm_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_buf* %1, %struct.drm_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %9, align 8
  %17 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %18 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %17, i32 0, i32 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %10, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %11, align 8
  %23 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %24 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load i32, i32* @DMA_LOCALS, align 4
  %27 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %28 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %85

36:                                               ; preds = %4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @MGA_EMIT_STATE(%struct.TYPE_8__* %39, i32 %42)
  br label %44

44:                                               ; preds = %77, %36
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @mga_emit_clip_rect(%struct.TYPE_8__* %51, i32* %57)
  br label %59

59:                                               ; preds = %50, %44
  %60 = call i32 @BEGIN_DMA(i32 1)
  %61 = load i32, i32* @MGA_DMAPAD, align 4
  %62 = load i32, i32* @MGA_DMAPAD, align 4
  %63 = load i32, i32* @MGA_SETUPADDRESS, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %64, %65
  %67 = load i32, i32* @MGA_SETUPEND, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %68, %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %70, %73
  %75 = call i32 @DMA_BLOCK(i32 %61, i32 0, i32 %62, i32 0, i32 %63, i32 %66, i32 %67, i32 %74)
  %76 = call i32 (...) @ADVANCE_DMA()
  br label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %44, label %84

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %92 = call i32 @AGE_BUFFER(%struct.TYPE_9__* %91)
  %93 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %94 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %96 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %100 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %101 = call i32 @mga_freelist_put(%struct.drm_device* %99, %struct.drm_buf* %100)
  br label %102

102:                                              ; preds = %90, %85
  %103 = call i32 (...) @FLUSH_DMA()
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32) #1

declare dso_local i32 @MGA_EMIT_STATE(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mga_emit_clip_rect(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @BEGIN_DMA(i32) #1

declare dso_local i32 @DMA_BLOCK(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADVANCE_DMA(...) #1

declare dso_local i32 @AGE_BUFFER(%struct.TYPE_9__*) #1

declare dso_local i32 @mga_freelist_put(%struct.drm_device*, %struct.drm_buf*) #1

declare dso_local i32 @FLUSH_DMA(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
