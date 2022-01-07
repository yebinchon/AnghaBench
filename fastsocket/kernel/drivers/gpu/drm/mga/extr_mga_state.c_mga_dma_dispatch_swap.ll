; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_dispatch_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_dispatch_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, %struct.drm_clip_rect*, %struct.TYPE_10__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.drm_clip_rect = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MGA_DMAPAD = common dso_local global i64 0, align 8
@MGA_DWGSYNC = common dso_local global i64 0, align 8
@MGA_DSTORG = common dso_local global i64 0, align 8
@MGA_MACCESS = common dso_local global i64 0, align 8
@MGA_SRCORG = common dso_local global i64 0, align 8
@MGA_AR5 = common dso_local global i64 0, align 8
@MGA_PLNWT = common dso_local global i64 0, align 8
@MGA_DWGCTL = common dso_local global i64 0, align 8
@MGA_DWGCTL_COPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"   from=%d,%d to=%d,%d\0A\00", align 1
@MGA_AR0 = common dso_local global i64 0, align 8
@MGA_AR3 = common dso_local global i64 0, align 8
@MGA_FXBNDRY = common dso_local global i64 0, align 8
@MGA_YDSTLEN = common dso_local global i64 0, align 8
@MGA_EXEC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"... done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @mga_dma_dispatch_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_dma_dispatch_swap(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.drm_clip_rect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_clip_rect*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %3, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %4, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %21, align 8
  store %struct.drm_clip_rect* %22, %struct.drm_clip_rect** %6, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @DMA_LOCALS, align 4
  %27 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 4, %42
  %44 = call i32 @BEGIN_DMA(i32 %43)
  %45 = load i64, i64* @MGA_DMAPAD, align 8
  %46 = load i64, i64* @MGA_DMAPAD, align 8
  %47 = load i64, i64* @MGA_DWGSYNC, align 8
  %48 = load i64, i64* @MGA_DWGSYNC, align 8
  %49 = call i32 @DMA_BLOCK(i64 %45, i32 0, i64 %46, i32 0, i64 %47, i32 28928, i64 %48, i32 28672)
  %50 = load i64, i64* @MGA_DSTORG, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* @MGA_MACCESS, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* @MGA_SRCORG, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* @MGA_AR5, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @DMA_BLOCK(i64 %50, i32 %53, i64 %54, i32 %57, i64 %58, i32 %61, i64 %62, i32 %65)
  %67 = load i64, i64* @MGA_DMAPAD, align 8
  %68 = load i64, i64* @MGA_DMAPAD, align 8
  %69 = load i64, i64* @MGA_PLNWT, align 8
  %70 = load i64, i64* @MGA_DWGCTL, align 8
  %71 = load i32, i32* @MGA_DWGCTL_COPY, align 4
  %72 = call i32 @DMA_BLOCK(i64 %67, i32 0, i64 %68, i32 0, i64 %69, i32 -1, i64 %70, i32 %71)
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %142, %1
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %145

77:                                               ; preds = %73
  %78 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %78, i64 %80
  store %struct.drm_clip_rect* %81, %struct.drm_clip_rect** %9, align 8
  %82 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %83 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %86 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %84, %87
  store i32 %88, i32* %10, align 4
  %89 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %90 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %91, %94
  store i32 %95, i32* %11, align 4
  %96 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %97 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %100 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %103 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %106 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %101, i32 %104, i32 %107)
  %109 = load i64, i64* @MGA_AR0, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %112 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %110, %113
  %115 = sub nsw i32 %114, 1
  %116 = load i64, i64* @MGA_AR3, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %119 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %117, %120
  %122 = load i64, i64* @MGA_FXBNDRY, align 8
  %123 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %124 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  %127 = shl i32 %126, 16
  %128 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %129 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %127, %130
  %132 = load i64, i64* @MGA_YDSTLEN, align 8
  %133 = load i64, i64* @MGA_EXEC, align 8
  %134 = add nsw i64 %132, %133
  %135 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %136 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 16
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @DMA_BLOCK(i64 %109, i32 %115, i64 %116, i32 %121, i64 %122, i32 %131, i64 %134, i32 %140)
  br label %142

142:                                              ; preds = %77
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %73

145:                                              ; preds = %73
  %146 = load i64, i64* @MGA_DMAPAD, align 8
  %147 = load i64, i64* @MGA_PLNWT, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i64, i64* @MGA_SRCORG, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i64, i64* @MGA_DWGCTL, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @DMA_BLOCK(i64 %146, i32 0, i64 %147, i32 %150, i64 %151, i32 %154, i64 %155, i32 %158)
  %160 = call i32 (...) @ADVANCE_DMA()
  %161 = call i32 (...) @FLUSH_DMA()
  %162 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @BEGIN_DMA(i32) #1

declare dso_local i32 @DMA_BLOCK(i64, i32, i64, i32, i64, i32, i64, i32) #1

declare dso_local i32 @ADVANCE_DMA(...) #1

declare dso_local i32 @FLUSH_DMA(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
