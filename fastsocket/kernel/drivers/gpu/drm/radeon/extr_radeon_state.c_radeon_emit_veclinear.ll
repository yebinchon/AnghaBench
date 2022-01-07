; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_emit_veclinear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_emit_veclinear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RADEON_SE_TCL_STATE_FLUSH = common dso_local global i32 0, align 4
@RADEON_SE_TCL_VECTOR_INDX_REG = common dso_local global i32 0, align 4
@RADEON_VEC_INDX_OCTWORD_STRIDE_SHIFT = common dso_local global i32 0, align 4
@RADEON_SE_TCL_VECTOR_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, %struct.TYPE_7__*)* @radeon_emit_veclinear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_emit_veclinear(i32* %0, i64 %1, i32 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %1, i64* %12, align 4
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %2, i32* %13, align 4
  %14 = bitcast %struct.TYPE_8__* %6 to i8*
  %15 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 12, i1 false)
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 4
  store i32 %19, i32* %10, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = or i32 %22, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @RING_LOCALS, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %68

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %33, 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @drm_buffer_unprocessed(i32 %37)
  %39 = icmp sgt i32 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %68

43:                                               ; preds = %32
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 5, %44
  %46 = call i32 @BEGIN_RING(i32 %45)
  %47 = load i32, i32* @RADEON_SE_TCL_STATE_FLUSH, align 4
  %48 = call i32 @OUT_RING_REG(i32 %47, i32 0)
  %49 = load i32, i32* @RADEON_SE_TCL_VECTOR_INDX_REG, align 4
  %50 = call i32 @CP_PACKET0(i32 %49, i32 0)
  %51 = call i32 @OUT_RING(i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @RADEON_VEC_INDX_OCTWORD_STRIDE_SHIFT, align 4
  %54 = shl i32 1, %53
  %55 = or i32 %52, %54
  %56 = call i32 @OUT_RING(i32 %55)
  %57 = load i32, i32* @RADEON_SE_TCL_VECTOR_DATA_REG, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @CP_PACKET0_TABLE(i32 %57, i32 %59)
  %61 = call i32 @OUT_RING(i32 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @OUT_RING_DRM_BUFFER(i32 %64, i32 %65)
  %67 = call i32 (...) @ADVANCE_RING()
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %43, %40, %31
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @drm_buffer_unprocessed(i32) #2

declare dso_local i32 @BEGIN_RING(i32) #2

declare dso_local i32 @OUT_RING_REG(i32, i32) #2

declare dso_local i32 @OUT_RING(i32) #2

declare dso_local i32 @CP_PACKET0(i32, i32) #2

declare dso_local i32 @CP_PACKET0_TABLE(i32, i32) #2

declare dso_local i32 @OUT_RING_DRM_BUFFER(i32, i32) #2

declare dso_local i32 @ADVANCE_RING(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
