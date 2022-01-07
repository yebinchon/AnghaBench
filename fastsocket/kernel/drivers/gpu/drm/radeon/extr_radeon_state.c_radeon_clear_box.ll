; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_clear_box.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_clear_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.drm_radeon_master_private = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@RING_LOCALS = common dso_local global i32 0, align 4
@RADEON_DP_WRITE_MASK = common dso_local global i32 0, align 4
@RADEON_CNTL_PAINT_MULTI = common dso_local global i32 0, align 4
@RADEON_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@RADEON_GMC_BRUSH_SOLID_COLOR = common dso_local global i32 0, align 4
@RADEON_GMC_SRC_DATATYPE_COLOR = common dso_local global i32 0, align 4
@RADEON_ROP3_P = common dso_local global i32 0, align 4
@RADEON_GMC_CLR_CMP_CNTL_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.drm_radeon_master_private*, i32, i32, i32, i32, i32, i32, i32)* @radeon_clear_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_clear_box(%struct.TYPE_7__* %0, %struct.drm_radeon_master_private* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.drm_radeon_master_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store %struct.drm_radeon_master_private* %1, %struct.drm_radeon_master_private** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i32, i32* @RING_LOCALS, align 4
  %21 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %11, align 8
  %22 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %11, align 8
  %34 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %61 [
    i32 128, label %48
    i32 129, label %60
  ]

48:                                               ; preds = %9
  %49 = load i32, i32* %16, align 4
  %50 = and i32 %49, 248
  %51 = shl i32 %50, 8
  %52 = load i32, i32* %17, align 4
  %53 = and i32 %52, 252
  %54 = shl i32 %53, 3
  %55 = or i32 %51, %54
  %56 = load i32, i32* %18, align 4
  %57 = and i32 %56, 248
  %58 = ashr i32 %57, 3
  %59 = or i32 %55, %58
  store i32 %59, i32* %19, align 4
  br label %70

60:                                               ; preds = %9
  br label %61

61:                                               ; preds = %9, %60
  %62 = load i32, i32* %16, align 4
  %63 = shl i32 %62, 16
  %64 = or i32 -16777216, %63
  %65 = load i32, i32* %17, align 4
  %66 = shl i32 %65, 8
  %67 = or i32 %64, %66
  %68 = load i32, i32* %18, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %19, align 4
  br label %70

70:                                               ; preds = %61, %48
  %71 = call i32 @BEGIN_RING(i32 4)
  %72 = call i32 (...) @RADEON_WAIT_UNTIL_3D_IDLE()
  %73 = load i32, i32* @RADEON_DP_WRITE_MASK, align 4
  %74 = call i32 @CP_PACKET0(i32 %73, i32 0)
  %75 = call i32 @OUT_RING(i32 %74)
  %76 = call i32 @OUT_RING(i32 -1)
  %77 = call i32 (...) @ADVANCE_RING()
  %78 = call i32 @BEGIN_RING(i32 6)
  %79 = load i32, i32* @RADEON_CNTL_PAINT_MULTI, align 4
  %80 = call i32 @CP_PACKET3(i32 %79, i32 4)
  %81 = call i32 @OUT_RING(i32 %80)
  %82 = load i32, i32* @RADEON_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %83 = load i32, i32* @RADEON_GMC_BRUSH_SOLID_COLOR, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = or i32 %84, %88
  %90 = load i32, i32* @RADEON_GMC_SRC_DATATYPE_COLOR, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @RADEON_ROP3_P, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @RADEON_GMC_CLR_CMP_CNTL_DIS, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @OUT_RING(i32 %95)
  %97 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %11, align 8
  %98 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %108

103:                                              ; preds = %70
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @OUT_RING(i32 %106)
  br label %113

108:                                              ; preds = %70
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @OUT_RING(i32 %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32, i32* %19, align 4
  %115 = call i32 @OUT_RING(i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = shl i32 %116, 16
  %118 = load i32, i32* %13, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @OUT_RING(i32 %119)
  %121 = load i32, i32* %14, align 4
  %122 = shl i32 %121, 16
  %123 = load i32, i32* %15, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @OUT_RING(i32 %124)
  %126 = call i32 (...) @ADVANCE_RING()
  ret void
}

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @RADEON_WAIT_UNTIL_3D_IDLE(...) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET0(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @CP_PACKET3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
