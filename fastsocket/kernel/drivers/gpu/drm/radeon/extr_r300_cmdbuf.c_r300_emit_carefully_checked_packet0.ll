; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_carefully_checked_packet0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_carefully_checked_packet0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Cannot emit more than 64 values at a time (reg=%04x sz=%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@r300_reg_flags = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Offset failed range check (reg=%04x sz=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Register %04x failed check as flag=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i64, i32)* @r300_emit_carefully_checked_packet0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r300_emit_carefully_checked_packet0(i32* %0, %struct.TYPE_7__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %2, i64* %14, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %3, i32* %15, align 4
  %16 = bitcast %struct.TYPE_8__* %6 to i8*
  %17 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 12, i1 false)
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  %18 = load i32, i32* @RING_LOCALS, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 64
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32, %4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %109

41:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %91, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %94

46:                                               ; preds = %42
  %47 = load i32*, i32** @r300_reg_flags, align 8
  %48 = load i32, i32* %10, align 4
  %49 = ashr i32 %48, 2
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %74 [
    i32 128, label %55
    i32 129, label %56
  ]

55:                                               ; preds = %46
  br label %90

56:                                               ; preds = %46
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32* @drm_buffer_pointer_to_dword(i32 %59, i32 %60)
  store i32* %61, i32** %13, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @radeon_check_offset(i32* %62, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %109

73:                                               ; preds = %56
  br label %90

74:                                               ; preds = %46
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %12, align 4
  %77 = mul nsw i32 %76, 4
  %78 = add nsw i32 %75, %77
  %79 = load i32*, i32** @r300_reg_flags, align 8
  %80 = load i32, i32* %10, align 4
  %81 = ashr i32 %80, 2
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %109

90:                                               ; preds = %73, %55
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %42

94:                                               ; preds = %42
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 1, %95
  %97 = call i32 @BEGIN_RING(i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @CP_PACKET0(i32 %98, i32 %100)
  %102 = call i32 @OUT_RING(i32 %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @OUT_RING_DRM_BUFFER(i32 %105, i32 %106)
  %108 = call i32 (...) @ADVANCE_RING()
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %94, %74, %67, %35
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #2

declare dso_local i32* @drm_buffer_pointer_to_dword(i32, i32) #2

declare dso_local i32 @radeon_check_offset(i32*, i32) #2

declare dso_local i32 @BEGIN_RING(i32) #2

declare dso_local i32 @OUT_RING(i32) #2

declare dso_local i32 @CP_PACKET0(i32, i32) #2

declare dso_local i32 @OUT_RING_DRM_BUFFER(i32, i32) #2

declare dso_local i32 @ADVANCE_RING(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
