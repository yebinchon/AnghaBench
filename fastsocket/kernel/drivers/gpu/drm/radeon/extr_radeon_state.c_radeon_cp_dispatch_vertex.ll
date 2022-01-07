; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_dispatch_vertex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_dispatch_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.drm_file = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.drm_buf = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"hwprim 0x%x vfmt 0x%x %d..%d %d verts\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"bad prim %x numverts %d\0A\00", align 1
@RADEON_3D_RNDR_GEN_INDX_PRIM = common dso_local global i32 0, align 4
@RADEON_PRIM_WALK_LIST = common dso_local global i32 0, align 4
@RADEON_COLOR_ORDER_RGBA = common dso_local global i32 0, align 4
@RADEON_VTX_FMT_RADEON_MODE = common dso_local global i32 0, align 4
@RADEON_NUM_VERTICES_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_file*, %struct.drm_buf*, %struct.TYPE_8__*)* @radeon_cp_dispatch_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_cp_dispatch_vertex(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_buf* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_buf*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.drm_radeon_master_private*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_buf* %2, %struct.drm_buf** %7, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %9, align 8
  %19 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %20 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %22, align 8
  store %struct.drm_radeon_master_private* %23, %struct.drm_radeon_master_private** %10, align 8
  %24 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %10, align 8
  %25 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %11, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %31 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %13, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %45 = load i32, i32* @RING_LOCALS, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %54, i32 %57, i64 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @bad_prim_vertex_nr(i32 %64, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %73, i64 %76)
  br label %126

78:                                               ; preds = %4
  br label %79

79:                                               ; preds = %122, %78
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @radeon_emit_clip_rect(%struct.TYPE_10__* %84, i32* %90)
  br label %92

92:                                               ; preds = %83, %79
  %93 = call i32 @BEGIN_RING(i32 5)
  %94 = load i32, i32* @RADEON_3D_RNDR_GEN_INDX_PRIM, align 4
  %95 = call i32 @CP_PACKET3(i32 %94, i32 3)
  %96 = call i32 @OUT_RING(i32 %95)
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @OUT_RING(i32 %97)
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @OUT_RING(i32 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @OUT_RING(i32 %103)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @RADEON_PRIM_WALK_LIST, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @RADEON_COLOR_ORDER_RGBA, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @RADEON_VTX_FMT_RADEON_MODE, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @RADEON_NUM_VERTICES_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = or i32 %113, %116
  %118 = call i32 @OUT_RING(i32 %117)
  %119 = call i32 (...) @ADVANCE_RING()
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %92
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %79, label %126

126:                                              ; preds = %70, %122
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32, i32, i64) #1

declare dso_local i64 @bad_prim_vertex_nr(i32, i64) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i64) #1

declare dso_local i32 @radeon_emit_clip_rect(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET3(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
