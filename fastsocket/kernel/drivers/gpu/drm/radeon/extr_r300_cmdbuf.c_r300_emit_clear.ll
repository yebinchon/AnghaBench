; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@R200_3D_DRAW_IMMD_2 = common dso_local global i32 0, align 4
@R300_PRIM_TYPE_POINT = common dso_local global i32 0, align 4
@R300_PRIM_WALK_RING = common dso_local global i32 0, align 4
@R300_PRIM_NUM_VERTICES_SHIFT = common dso_local global i32 0, align 4
@R300_RB3D_DSTCACHE_CTLSTAT = common dso_local global i32 0, align 4
@R300_RB3D_DC_FLUSH = common dso_local global i32 0, align 4
@RADEON_WAIT_UNTIL = common dso_local global i32 0, align 4
@RADEON_WAIT_3D_IDLECLEAN = common dso_local global i32 0, align 4
@RADEON_FLUSH_EMITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*)* @r300_emit_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r300_emit_clear(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* @RING_LOCALS, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @drm_buffer_unprocessed(i32 %9)
  %11 = icmp sgt i32 32, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = call i32 @BEGIN_RING(i32 10)
  %17 = load i32, i32* @R200_3D_DRAW_IMMD_2, align 4
  %18 = call i32 @CP_PACKET3(i32 %17, i32 8)
  %19 = call i32 @OUT_RING(i32 %18)
  %20 = load i32, i32* @R300_PRIM_TYPE_POINT, align 4
  %21 = load i32, i32* @R300_PRIM_WALK_RING, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @R300_PRIM_NUM_VERTICES_SHIFT, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = call i32 @OUT_RING(i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @OUT_RING_DRM_BUFFER(i32 %29, i32 8)
  %31 = call i32 (...) @ADVANCE_RING()
  %32 = call i32 @BEGIN_RING(i32 4)
  %33 = load i32, i32* @R300_RB3D_DSTCACHE_CTLSTAT, align 4
  %34 = call i32 @CP_PACKET0(i32 %33, i32 0)
  %35 = call i32 @OUT_RING(i32 %34)
  %36 = load i32, i32* @R300_RB3D_DC_FLUSH, align 4
  %37 = call i32 @OUT_RING(i32 %36)
  %38 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %39 = call i32 @CP_PACKET0(i32 %38, i32 0)
  %40 = call i32 @OUT_RING(i32 %39)
  %41 = load i32, i32* @RADEON_WAIT_3D_IDLECLEAN, align 4
  %42 = call i32 @OUT_RING(i32 %41)
  %43 = call i32 (...) @ADVANCE_RING()
  %44 = load i32, i32* @RADEON_FLUSH_EMITED, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %15, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @drm_buffer_unprocessed(i32) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET3(i32, i32) #1

declare dso_local i32 @OUT_RING_DRM_BUFFER(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @CP_PACKET0(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
