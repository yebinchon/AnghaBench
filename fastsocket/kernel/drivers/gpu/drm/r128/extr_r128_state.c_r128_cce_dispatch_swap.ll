; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.drm_clip_rect* }
%struct.drm_clip_rect = type { i32, i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@R128_CNTL_BITBLT_MULTI = common dso_local global i32 0, align 4
@R128_GMC_SRC_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@R128_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@R128_GMC_BRUSH_NONE = common dso_local global i32 0, align 4
@R128_GMC_SRC_DATATYPE_COLOR = common dso_local global i32 0, align 4
@R128_ROP3_S = common dso_local global i32 0, align 4
@R128_DP_SRC_SOURCE_MEMORY = common dso_local global i32 0, align 4
@R128_GMC_CLR_CMP_CNTL_DIS = common dso_local global i32 0, align 4
@R128_GMC_AUX_CLIP_DIS = common dso_local global i32 0, align 4
@R128_GMC_WR_MSK_DIS = common dso_local global i32 0, align 4
@R128_LAST_FRAME_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @r128_cce_dispatch_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r128_cce_dispatch_swap(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_clip_rect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %3, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %22, align 8
  store %struct.drm_clip_rect* %23, %struct.drm_clip_rect** %6, align 8
  %24 = load i32, i32* @RING_LOCALS, align 4
  %25 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %125, %1
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %128

30:                                               ; preds = %26
  %31 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %31, i64 %33
  %35 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %37, i64 %39
  %41 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %43, i64 %45
  %47 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %51, i64 %53
  %55 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %11, align 4
  %59 = call i32 @BEGIN_RING(i32 7)
  %60 = load i32, i32* @R128_CNTL_BITBLT_MULTI, align 4
  %61 = call i32 @CCE_PACKET3(i32 %60, i32 5)
  %62 = call i32 @OUT_RING(i32 %61)
  %63 = load i32, i32* @R128_GMC_SRC_PITCH_OFFSET_CNTL, align 4
  %64 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @R128_GMC_BRUSH_NONE, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 %70, 8
  %72 = or i32 %67, %71
  %73 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @R128_ROP3_S, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @R128_DP_SRC_SOURCE_MEMORY, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @R128_GMC_AUX_CLIP_DIS, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @R128_GMC_WR_MSK_DIS, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @OUT_RING(i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %30
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @OUT_RING(i32 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @OUT_RING(i32 %97)
  br label %108

99:                                               ; preds = %30
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @OUT_RING(i32 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @OUT_RING(i32 %106)
  br label %108

108:                                              ; preds = %99, %90
  %109 = load i32, i32* %8, align 4
  %110 = shl i32 %109, 16
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @OUT_RING(i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = shl i32 %114, 16
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @OUT_RING(i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = shl i32 %119, 16
  %121 = load i32, i32* %11, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @OUT_RING(i32 %122)
  %124 = call i32 (...) @ADVANCE_RING()
  br label %125

125:                                              ; preds = %108
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %26

128:                                              ; preds = %26
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = call i32 @BEGIN_RING(i32 2)
  %136 = load i32, i32* @R128_LAST_FRAME_REG, align 4
  %137 = call i32 @CCE_PACKET0(i32 %136, i32 0)
  %138 = call i32 @OUT_RING(i32 %137)
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @OUT_RING(i32 %143)
  %145 = call i32 (...) @ADVANCE_RING()
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CCE_PACKET3(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @CCE_PACKET0(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
