; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_dispatch_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_dispatch_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.drm_master = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32, %struct.drm_clip_rect* }
%struct.drm_clip_rect = type { i32, i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%d,%d-%d,%d\0A\00", align 1
@RADEON_DP_GUI_MASTER_CNTL = common dso_local global i32 0, align 4
@RADEON_GMC_SRC_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@RADEON_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@RADEON_GMC_BRUSH_NONE = common dso_local global i32 0, align 4
@RADEON_GMC_SRC_DATATYPE_COLOR = common dso_local global i32 0, align 4
@RADEON_ROP3_S = common dso_local global i32 0, align 4
@RADEON_DP_SRC_SOURCE_MEMORY = common dso_local global i32 0, align 4
@RADEON_GMC_CLR_CMP_CNTL_DIS = common dso_local global i32 0, align 4
@RADEON_GMC_WR_MSK_DIS = common dso_local global i32 0, align 4
@RADEON_SRC_PITCH_OFFSET = common dso_local global i32 0, align 4
@RADEON_SRC_X_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_master*)* @radeon_cp_dispatch_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_cp_dispatch_swap(%struct.drm_device* %0, %struct.drm_master* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_master*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.drm_radeon_master_private*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_clip_rect*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_master* %1, %struct.drm_master** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %5, align 8
  %18 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %19 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %18, i32 0, i32 0
  %20 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %19, align 8
  store %struct.drm_radeon_master_private* %20, %struct.drm_radeon_master_private** %6, align 8
  %21 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %6, align 8
  %22 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %28, align 8
  store %struct.drm_clip_rect* %29, %struct.drm_clip_rect** %9, align 8
  %30 = load i32, i32* @RING_LOCALS, align 4
  %31 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %6, align 8
  %39 = call i32 @radeon_cp_performance_boxes(%struct.TYPE_5__* %37, %struct.drm_radeon_master_private* %38)
  br label %40

40:                                               ; preds = %36, %2
  %41 = call i32 @BEGIN_RING(i32 2)
  %42 = call i32 (...) @RADEON_WAIT_UNTIL_3D_IDLE()
  %43 = call i32 (...) @ADVANCE_RING()
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %152, %40
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %155

48:                                               ; preds = %44
  %49 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %49, i64 %51
  %53 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  %55 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %55, i64 %57
  %59 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  %61 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %61, i64 %63
  %65 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %13, align 4
  %69 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %69, i64 %71
  %73 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %74, %75
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = call i32 @BEGIN_RING(i32 9)
  %83 = load i32, i32* @RADEON_DP_GUI_MASTER_CNTL, align 4
  %84 = call i32 @CP_PACKET0(i32 %83, i32 0)
  %85 = call i32 @OUT_RING(i32 %84)
  %86 = load i32, i32* @RADEON_GMC_SRC_PITCH_OFFSET_CNTL, align 4
  %87 = load i32, i32* @RADEON_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @RADEON_GMC_BRUSH_NONE, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = shl i32 %93, 8
  %95 = or i32 %90, %94
  %96 = load i32, i32* @RADEON_GMC_SRC_DATATYPE_COLOR, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @RADEON_ROP3_S, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @RADEON_DP_SRC_SOURCE_MEMORY, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @RADEON_GMC_CLR_CMP_CNTL_DIS, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @RADEON_GMC_WR_MSK_DIS, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @OUT_RING(i32 %105)
  %107 = load i32, i32* @RADEON_SRC_PITCH_OFFSET, align 4
  %108 = call i32 @CP_PACKET0(i32 %107, i32 1)
  %109 = call i32 @OUT_RING(i32 %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %48
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @OUT_RING(i32 %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @OUT_RING(i32 %121)
  br label %132

123:                                              ; preds = %48
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @OUT_RING(i32 %126)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @OUT_RING(i32 %130)
  br label %132

132:                                              ; preds = %123, %114
  %133 = load i32, i32* @RADEON_SRC_X_Y, align 4
  %134 = call i32 @CP_PACKET0(i32 %133, i32 2)
  %135 = call i32 @OUT_RING(i32 %134)
  %136 = load i32, i32* %11, align 4
  %137 = shl i32 %136, 16
  %138 = load i32, i32* %12, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @OUT_RING(i32 %139)
  %141 = load i32, i32* %11, align 4
  %142 = shl i32 %141, 16
  %143 = load i32, i32* %12, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @OUT_RING(i32 %144)
  %146 = load i32, i32* %13, align 4
  %147 = shl i32 %146, 16
  %148 = load i32, i32* %14, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @OUT_RING(i32 %149)
  %151 = call i32 (...) @ADVANCE_RING()
  br label %152

152:                                              ; preds = %132
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %44

155:                                              ; preds = %44
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = call i32 @BEGIN_RING(i32 4)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @RADEON_FRAME_AGE(i32 %163)
  %165 = call i32 (...) @RADEON_WAIT_UNTIL_2D_IDLE()
  %166 = call i32 (...) @ADVANCE_RING()
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @radeon_cp_performance_boxes(%struct.TYPE_5__*, %struct.drm_radeon_master_private*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @RADEON_WAIT_UNTIL_3D_IDLE(...) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET0(i32, i32) #1

declare dso_local i32 @RADEON_FRAME_AGE(i32) #1

declare dso_local i32 @RADEON_WAIT_UNTIL_2D_IDLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
