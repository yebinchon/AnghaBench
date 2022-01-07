; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_r500fp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_r500fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@R500FP_CONSTANT_TYPE = common dso_local global i32 0, align 4
@R500FP_CONSTANT_CLAMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"r500fp %d %d type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@R500_GA_US_VECTOR_INDEX = common dso_local global i32 0, align 4
@R500_GA_US_VECTOR_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i64, i32)* @r300_emit_r500fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r300_emit_r500fp(i32* %0, %struct.TYPE_7__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %2, i64* %15, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %3, i32* %16, align 4
  %17 = bitcast %struct.TYPE_8__* %6 to i8*
  %18 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  %19 = load i32, i32* @RING_LOCALS, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 1
  %27 = shl i32 %26, 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  store i32 %31, i32* %11, align 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @R500FP_CONSTANT_TYPE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @R500FP_CONSTANT_CLAMP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %12, align 4
  %51 = shl i32 %50, 16
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %13, align 4
  %55 = shl i32 %54, 17
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 4, i32 6
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %106

69:                                               ; preds = %4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %14, align 4
  %72 = mul nsw i32 %70, %71
  %73 = mul nsw i32 %72, 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @drm_buffer_unprocessed(i32 %76)
  %78 = icmp sgt i32 %73, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %106

82:                                               ; preds = %69
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %14, align 4
  %85 = mul nsw i32 %83, %84
  %86 = add nsw i32 3, %85
  %87 = call i32 @BEGIN_RING(i32 %86)
  %88 = load i32, i32* @R500_GA_US_VECTOR_INDEX, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @OUT_RING_REG(i32 %88, i32 %89)
  %91 = load i32, i32* @R500_GA_US_VECTOR_DATA, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %14, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sub nsw i32 %94, 1
  %96 = call i32 @CP_PACKET0_TABLE(i32 %91, i32 %95)
  %97 = call i32 @OUT_RING(i32 %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %14, align 4
  %103 = mul nsw i32 %101, %102
  %104 = call i32 @OUT_RING_DRM_BUFFER(i32 %100, i32 %103)
  %105 = call i32 (...) @ADVANCE_RING()
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %82, %79, %68
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32) #2

declare dso_local i32 @drm_buffer_unprocessed(i32) #2

declare dso_local i32 @BEGIN_RING(i32) #2

declare dso_local i32 @OUT_RING_REG(i32, i32) #2

declare dso_local i32 @OUT_RING(i32) #2

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
