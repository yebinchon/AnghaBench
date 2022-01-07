; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_vpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_vpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@R300_RB3D_DSTCACHE_CTLSTAT = common dso_local global i32 0, align 4
@R300_RB3D_DC_FLUSH = common dso_local global i32 0, align 4
@RADEON_WAIT_UNTIL = common dso_local global i32 0, align 4
@RADEON_WAIT_3D_IDLECLEAN = common dso_local global i32 0, align 4
@R300_VAP_PVS_STATE_FLUSH_REG = common dso_local global i32 0, align 4
@RADEON_FLUSH_EMITED = common dso_local global i32 0, align 4
@R300_VAP_PVS_UPLOAD_ADDRESS = common dso_local global i32 0, align 4
@R300_VAP_PVS_UPLOAD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i64, i32)* @r300_emit_vpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r300_emit_vpu(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %2, i64* %12, align 4
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %3, i32* %13, align 4
  %14 = bitcast %struct.TYPE_11__* %6 to i8*
  %15 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 12, i1 false)
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  %16 = load i32, i32* @RING_LOCALS, align 4
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %90

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 %32, 16
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @drm_buffer_unprocessed(i32 %36)
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %90

42:                                               ; preds = %31
  %43 = call i32 @BEGIN_RING(i32 6)
  %44 = load i32, i32* @R300_RB3D_DSTCACHE_CTLSTAT, align 4
  %45 = call i32 @CP_PACKET0(i32 %44, i32 0)
  %46 = call i32 @OUT_RING(i32 %45)
  %47 = load i32, i32* @R300_RB3D_DC_FLUSH, align 4
  %48 = call i32 @OUT_RING(i32 %47)
  %49 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %50 = call i32 @CP_PACKET0(i32 %49, i32 0)
  %51 = call i32 @OUT_RING(i32 %50)
  %52 = load i32, i32* @RADEON_WAIT_3D_IDLECLEAN, align 4
  %53 = call i32 @OUT_RING(i32 %52)
  %54 = load i32, i32* @R300_VAP_PVS_STATE_FLUSH_REG, align 4
  %55 = call i32 @CP_PACKET0(i32 %54, i32 0)
  %56 = call i32 @OUT_RING(i32 %55)
  %57 = call i32 @OUT_RING(i32 0)
  %58 = call i32 (...) @ADVANCE_RING()
  %59 = load i32, i32* @RADEON_FLUSH_EMITED, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %64, 4
  %66 = add nsw i32 3, %65
  %67 = call i32 @BEGIN_RING(i32 %66)
  %68 = load i32, i32* @R300_VAP_PVS_UPLOAD_ADDRESS, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @OUT_RING_REG(i32 %68, i32 %69)
  %71 = load i32, i32* @R300_VAP_PVS_UPLOAD_DATA, align 4
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 %72, 4
  %74 = sub nsw i32 %73, 1
  %75 = call i32 @CP_PACKET0_TABLE(i32 %71, i32 %74)
  %76 = call i32 @OUT_RING(i32 %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = mul nsw i32 %80, 4
  %82 = call i32 @OUT_RING_DRM_BUFFER(i32 %79, i32 %81)
  %83 = call i32 (...) @ADVANCE_RING()
  %84 = call i32 @BEGIN_RING(i32 2)
  %85 = load i32, i32* @R300_VAP_PVS_STATE_FLUSH_REG, align 4
  %86 = call i32 @CP_PACKET0(i32 %85, i32 0)
  %87 = call i32 @OUT_RING(i32 %86)
  %88 = call i32 @OUT_RING(i32 0)
  %89 = call i32 (...) @ADVANCE_RING()
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %42, %39, %30
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @drm_buffer_unprocessed(i32) #2

declare dso_local i32 @BEGIN_RING(i32) #2

declare dso_local i32 @OUT_RING(i32) #2

declare dso_local i32 @CP_PACKET0(i32, i32) #2

declare dso_local i32 @ADVANCE_RING(...) #2

declare dso_local i32 @OUT_RING_REG(i32, i32) #2

declare dso_local i32 @CP_PACKET0_TABLE(i32, i32) #2

declare dso_local i32 @OUT_RING_DRM_BUFFER(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
