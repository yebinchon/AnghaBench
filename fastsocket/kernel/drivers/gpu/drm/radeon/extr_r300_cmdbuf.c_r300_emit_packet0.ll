; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_packet0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_packet0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"No such registers in hardware reg=%04x sz=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i64, i32)* @r300_emit_packet0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r300_emit_packet0(i32* %0, %struct.TYPE_9__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %2, i64* %13, align 4
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %3, i32* %14, align 4
  %15 = bitcast %struct.TYPE_10__* %6 to i8*
  %16 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  %17 = load i32, i32* @RING_LOCALS, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %85

32:                                               ; preds = %4
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %33, 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @drm_buffer_unprocessed(i32 %37)
  %39 = icmp sgt i32 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %85

43:                                               ; preds = %32
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %45, 4
  %47 = add nsw i32 %44, %46
  %48 = icmp sge i32 %47, 65536
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %85

55:                                               ; preds = %43
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @r300_check_range(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = bitcast { i64, i32 }* %12 to i8*
  %64 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 12, i1 false)
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %66 = load i64, i64* %65, align 4
  %67 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @r300_emit_carefully_checked_packet0(i32* %61, %struct.TYPE_9__* %62, i64 %66, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %85

70:                                               ; preds = %55
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 1, %71
  %73 = call i32 @BEGIN_RING(i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %75, 1
  %77 = call i32 @CP_PACKET0(i32 %74, i32 %76)
  %78 = call i32 @OUT_RING(i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @OUT_RING_DRM_BUFFER(i32 %81, i32 %82)
  %84 = call i32 (...) @ADVANCE_RING()
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %70, %60, %49, %40, %31
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @drm_buffer_unprocessed(i32) #2

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #2

declare dso_local i64 @r300_check_range(i32, i32) #2

declare dso_local i32 @r300_emit_carefully_checked_packet0(i32*, %struct.TYPE_9__*, i64, i32) #2

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
