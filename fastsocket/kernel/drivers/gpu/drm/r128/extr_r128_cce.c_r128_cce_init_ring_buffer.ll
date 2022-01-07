; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_cce.c_r128_cce_init_ring_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_cce.c_r128_cce_init_ring_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@R128_PM4_BUFFER_OFFSET = common dso_local global i32 0, align 4
@R128_AGP_OFFSET = common dso_local global i32 0, align 4
@R128_PM4_BUFFER_DL_WPTR = common dso_local global i32 0, align 4
@R128_PM4_BUFFER_DL_RPTR = common dso_local global i32 0, align 4
@R128_PM4_BUFFER_WM_CNTL = common dso_local global i32 0, align 4
@R128_WATERMARK_L = common dso_local global i32 0, align 4
@R128_WMA_SHIFT = common dso_local global i32 0, align 4
@R128_WATERMARK_M = common dso_local global i32 0, align 4
@R128_WMB_SHIFT = common dso_local global i32 0, align 4
@R128_WATERMARK_N = common dso_local global i32 0, align 4
@R128_WMC_SHIFT = common dso_local global i32 0, align 4
@R128_WATERMARK_K = common dso_local global i32 0, align 4
@R128_WB_WM_SHIFT = common dso_local global i32 0, align 4
@R128_PM4_BUFFER_ADDR = common dso_local global i32 0, align 4
@R128_BUS_CNTL = common dso_local global i32 0, align 4
@R128_BUS_MASTER_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.TYPE_9__*)* @r128_cce_init_ring_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r128_cce_init_ring_buffer(%struct.drm_device* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %13, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @R128_PM4_BUFFER_OFFSET, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @R128_AGP_OFFSET, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @R128_WRITE(i32 %21, i32 %24)
  %26 = load i32, i32* @R128_PM4_BUFFER_DL_WPTR, align 4
  %27 = call i32 @R128_WRITE(i32 %26, i32 0)
  %28 = load i32, i32* @R128_PM4_BUFFER_DL_RPTR, align 4
  %29 = call i32 @R128_WRITE(i32 %28, i32 0)
  %30 = load i32, i32* @R128_PM4_BUFFER_WM_CNTL, align 4
  %31 = load i32, i32* @R128_WATERMARK_L, align 4
  %32 = sdiv i32 %31, 4
  %33 = load i32, i32* @R128_WMA_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @R128_WATERMARK_M, align 4
  %36 = sdiv i32 %35, 4
  %37 = load i32, i32* @R128_WMB_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %34, %38
  %40 = load i32, i32* @R128_WATERMARK_N, align 4
  %41 = sdiv i32 %40, 4
  %42 = load i32, i32* @R128_WMC_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %39, %43
  %45 = load i32, i32* @R128_WATERMARK_K, align 4
  %46 = sdiv i32 %45, 64
  %47 = load i32, i32* @R128_WB_WM_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %44, %48
  %50 = call i32 @R128_WRITE(i32 %30, i32 %49)
  %51 = load i32, i32* @R128_PM4_BUFFER_ADDR, align 4
  %52 = call i32 @R128_READ(i32 %51)
  %53 = load i32, i32* @R128_BUS_CNTL, align 4
  %54 = call i32 @R128_READ(i32 %53)
  %55 = load i32, i32* @R128_BUS_MASTER_DIS, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @R128_BUS_CNTL, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @R128_WRITE(i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @R128_WRITE(i32, i32) #1

declare dso_local i32 @R128_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
