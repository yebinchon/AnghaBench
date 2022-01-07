; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_dispatch_iload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_dispatch_iload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.drm_buf = type { i32, i64, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@MGA_SRCMAP_SYSMEM = common dso_local global i32 0, align 4
@DMA_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"buf=%d used=%d\0A\00", align 1
@MGA_DMAPAD = common dso_local global i64 0, align 8
@MGA_DWGSYNC = common dso_local global i64 0, align 8
@MGA_DSTORG = common dso_local global i64 0, align 8
@MGA_MACCESS = common dso_local global i64 0, align 8
@MGA_SRCORG = common dso_local global i64 0, align 8
@MGA_AR5 = common dso_local global i64 0, align 8
@MGA_PITCH = common dso_local global i64 0, align 8
@MGA_PLNWT = common dso_local global i64 0, align 8
@MGA_DWGCTL = common dso_local global i64 0, align 8
@MGA_DWGCTL_COPY = common dso_local global i32 0, align 4
@MGA_AR0 = common dso_local global i64 0, align 8
@MGA_AR3 = common dso_local global i64 0, align 8
@MGA_FXBNDRY = common dso_local global i64 0, align 8
@MGA_YDSTLEN = common dso_local global i64 0, align 8
@MGA_EXEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_buf*, i32, i32)* @mga_dma_dispatch_iload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_dma_dispatch_iload(%struct.drm_device* %0, %struct.drm_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_buf* %1, %struct.drm_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %9, align 8
  %17 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %18 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %17, i32 0, i32 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %10, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %11, align 8
  %24 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %25 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %26, %29
  %31 = load i32, i32* @MGA_SRCMAP_SYSMEM, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* @DMA_LOCALS, align 4
  %34 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %35 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %38 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %39)
  %41 = load i32, i32* %8, align 4
  %42 = udiv i32 %41, 64
  store i32 %42, i32* %13, align 4
  %43 = call i32 @BEGIN_DMA(i32 5)
  %44 = load i64, i64* @MGA_DMAPAD, align 8
  %45 = load i64, i64* @MGA_DMAPAD, align 8
  %46 = load i64, i64* @MGA_DWGSYNC, align 8
  %47 = load i64, i64* @MGA_DWGSYNC, align 8
  %48 = call i32 @DMA_BLOCK(i64 %44, i32 0, i64 %45, i32 0, i64 %46, i32 28928, i64 %47, i32 28672)
  %49 = load i64, i64* @MGA_DSTORG, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i64, i64* @MGA_MACCESS, align 8
  %52 = load i64, i64* @MGA_SRCORG, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i64, i64* @MGA_AR5, align 8
  %55 = call i32 @DMA_BLOCK(i64 %49, i32 %50, i64 %51, i32 0, i64 %52, i32 %53, i64 %54, i32 64)
  %56 = load i64, i64* @MGA_PITCH, align 8
  %57 = load i64, i64* @MGA_PLNWT, align 8
  %58 = load i64, i64* @MGA_DMAPAD, align 8
  %59 = load i64, i64* @MGA_DWGCTL, align 8
  %60 = load i32, i32* @MGA_DWGCTL_COPY, align 4
  %61 = call i32 @DMA_BLOCK(i64 %56, i32 64, i64 %57, i32 -1, i64 %58, i32 0, i64 %59, i32 %60)
  %62 = load i64, i64* @MGA_AR0, align 8
  %63 = load i64, i64* @MGA_AR3, align 8
  %64 = load i64, i64* @MGA_FXBNDRY, align 8
  %65 = load i64, i64* @MGA_YDSTLEN, align 8
  %66 = load i64, i64* @MGA_EXEC, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @DMA_BLOCK(i64 %62, i32 63, i64 %63, i32 0, i64 %64, i32 4128768, i64 %67, i32 %68)
  %70 = load i64, i64* @MGA_PLNWT, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* @MGA_SRCORG, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* @MGA_PITCH, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* @MGA_DWGSYNC, align 8
  %83 = call i32 @DMA_BLOCK(i64 %70, i32 %73, i64 %74, i32 %77, i64 %78, i32 %81, i64 %82, i32 28672)
  %84 = call i32 (...) @ADVANCE_DMA()
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = call i32 @AGE_BUFFER(%struct.TYPE_9__* %85)
  %87 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %88 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %90 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %94 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %95 = call i32 @mga_freelist_put(%struct.drm_device* %93, %struct.drm_buf* %94)
  %96 = call i32 (...) @FLUSH_DMA()
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64) #1

declare dso_local i32 @BEGIN_DMA(i32) #1

declare dso_local i32 @DMA_BLOCK(i64, i32, i64, i32, i64, i32, i64, i32) #1

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
