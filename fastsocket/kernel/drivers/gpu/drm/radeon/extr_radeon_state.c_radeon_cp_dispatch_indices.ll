; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_dispatch_indices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_dispatch_indices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.drm_master = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.drm_buf = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@RADEON_INDEX_PRIM_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"hwprim 0x%x vfmt 0x%x %d..%d offset: %x nr %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"bad prim %x count %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"buffer prim %d\0A\00", align 1
@RADEON_3D_RNDR_GEN_INDX_PRIM = common dso_local global i32 0, align 4
@RADEON_PRIM_WALK_IND = common dso_local global i32 0, align 4
@RADEON_COLOR_ORDER_RGBA = common dso_local global i32 0, align 4
@RADEON_VTX_FMT_RADEON_MODE = common dso_local global i32 0, align 4
@RADEON_NUM_VERTICES_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_master*, %struct.drm_buf*, %struct.TYPE_8__*)* @radeon_cp_dispatch_indices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_cp_dispatch_indices(%struct.drm_device* %0, %struct.drm_master* %1, %struct.drm_buf* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_master*, align 8
  %7 = alloca %struct.drm_buf*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.drm_radeon_master_private*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_master* %1, %struct.drm_master** %6, align 8
  store %struct.drm_buf* %2, %struct.drm_buf** %7, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %9, align 8
  %22 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %23 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %22, i32 0, i32 0
  %24 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %23, align 8
  store %struct.drm_radeon_master_private* %24, %struct.drm_radeon_master_private** %10, align 8
  %25 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %10, align 8
  %26 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %11, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RADEON_INDEX_PRIM_OFFSET, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %16, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %16, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %17, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %18, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i32 %59, i32 %62, i32 %65, i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %17, align 4
  %74 = call i64 @bad_prim_vertex_nr(i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %17, align 4
  %81 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  br label %191

82:                                               ; preds = %4
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 7
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88, %82
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %191

99:                                               ; preds = %88
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %102, %105
  %107 = add nsw i32 %106, 3
  %108 = sext i32 %107 to i64
  %109 = udiv i64 %108, 4
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %14, align 4
  %111 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %112 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %118 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %116, i64 %120
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  %127 = bitcast i8* %126 to i32*
  store i32* %127, i32** %13, align 8
  %128 = load i32, i32* @RADEON_3D_RNDR_GEN_INDX_PRIM, align 4
  %129 = load i32, i32* %14, align 4
  %130 = sub nsw i32 %129, 2
  %131 = call i32 @CP_PACKET3(i32 %128, i32 %130)
  %132 = load i32*, i32** %13, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %13, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %13, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 3
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @RADEON_PRIM_WALK_IND, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @RADEON_COLOR_ORDER_RGBA, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @RADEON_VTX_FMT_RADEON_MODE, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* @RADEON_NUM_VERTICES_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = or i32 %155, %158
  %160 = load i32*, i32** %13, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 4
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %187, %99
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %18, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = call i32 @radeon_emit_clip_rect(%struct.TYPE_10__* %167, i32* %173)
  br label %175

175:                                              ; preds = %166, %162
  %176 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %177 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @radeon_cp_dispatch_indirect(%struct.drm_device* %176, %struct.drm_buf* %177, i32 %180, i32 %183)
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %15, align 4
  br label %187

187:                                              ; preds = %175
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %18, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %162, label %191

191:                                              ; preds = %76, %94, %187
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @bad_prim_vertex_nr(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @CP_PACKET3(i32, i32) #1

declare dso_local i32 @radeon_emit_clip_rect(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @radeon_cp_dispatch_indirect(%struct.drm_device*, %struct.drm_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
