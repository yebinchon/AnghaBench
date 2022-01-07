; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_set_shaders.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_set_shaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@r6xx_vs_size = common dso_local global i32 0, align 4
@r6xx_vs = common dso_local global i32* null, align 8
@r6xx_ps_size = common dso_local global i32 0, align 4
@r6xx_ps = common dso_local global i32* null, align 8
@R600_IT_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@R600_SQ_PGM_START_VS = common dso_local global i32 0, align 4
@R600_SET_CONTEXT_REG_OFFSET = common dso_local global i32 0, align 4
@R600_SQ_PGM_RESOURCES_VS = common dso_local global i32 0, align 4
@R600_SQ_PGM_CF_OFFSET_VS = common dso_local global i32 0, align 4
@R600_SQ_PGM_START_PS = common dso_local global i32 0, align 4
@R600_SQ_PGM_RESOURCES_PS = common dso_local global i32 0, align 4
@R600_SQ_PGM_EXPORTS_PS = common dso_local global i32 0, align 4
@R600_SQ_PGM_CF_OFFSET_PS = common dso_local global i32 0, align 4
@R600_SH_ACTION_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @set_shaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_shaders(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %3, align 8
  %12 = load i32, i32* @RING_LOCALS, align 4
  %13 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %19, i64 %25
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %6, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %33, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 256
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %58, %1
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @r6xx_vs_size, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load i32*, i32** @r6xx_vs, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cpu_to_le32(i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %43

61:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %77, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @r6xx_ps_size, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i32*, i32** @r6xx_ps, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cpu_to_le32(i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %62

80:                                               ; preds = %62
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32 512, i32* %84, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %87, %92
  store i32 %93, i32* %4, align 4
  store i32 1, i32* %8, align 4
  %94 = call i32 @BEGIN_RING(i32 21)
  %95 = load i32, i32* @R600_IT_SET_CONTEXT_REG, align 4
  %96 = call i32 @CP_PACKET3(i32 %95, i32 1)
  %97 = call i32 @OUT_RING(i32 %96)
  %98 = load i32, i32* @R600_SQ_PGM_START_VS, align 4
  %99 = load i32, i32* @R600_SET_CONTEXT_REG_OFFSET, align 4
  %100 = sub nsw i32 %98, %99
  %101 = ashr i32 %100, 2
  %102 = call i32 @OUT_RING(i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = ashr i32 %103, 8
  %105 = call i32 @OUT_RING(i32 %104)
  %106 = load i32, i32* @R600_IT_SET_CONTEXT_REG, align 4
  %107 = call i32 @CP_PACKET3(i32 %106, i32 1)
  %108 = call i32 @OUT_RING(i32 %107)
  %109 = load i32, i32* @R600_SQ_PGM_RESOURCES_VS, align 4
  %110 = load i32, i32* @R600_SET_CONTEXT_REG_OFFSET, align 4
  %111 = sub nsw i32 %109, %110
  %112 = ashr i32 %111, 2
  %113 = call i32 @OUT_RING(i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @OUT_RING(i32 %114)
  %116 = load i32, i32* @R600_IT_SET_CONTEXT_REG, align 4
  %117 = call i32 @CP_PACKET3(i32 %116, i32 1)
  %118 = call i32 @OUT_RING(i32 %117)
  %119 = load i32, i32* @R600_SQ_PGM_CF_OFFSET_VS, align 4
  %120 = load i32, i32* @R600_SET_CONTEXT_REG_OFFSET, align 4
  %121 = sub nsw i32 %119, %120
  %122 = ashr i32 %121, 2
  %123 = call i32 @OUT_RING(i32 %122)
  %124 = call i32 @OUT_RING(i32 0)
  %125 = load i32, i32* @R600_IT_SET_CONTEXT_REG, align 4
  %126 = call i32 @CP_PACKET3(i32 %125, i32 1)
  %127 = call i32 @OUT_RING(i32 %126)
  %128 = load i32, i32* @R600_SQ_PGM_START_PS, align 4
  %129 = load i32, i32* @R600_SET_CONTEXT_REG_OFFSET, align 4
  %130 = sub nsw i32 %128, %129
  %131 = ashr i32 %130, 2
  %132 = call i32 @OUT_RING(i32 %131)
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 256
  %135 = ashr i32 %134, 8
  %136 = call i32 @OUT_RING(i32 %135)
  %137 = load i32, i32* @R600_IT_SET_CONTEXT_REG, align 4
  %138 = call i32 @CP_PACKET3(i32 %137, i32 1)
  %139 = call i32 @OUT_RING(i32 %138)
  %140 = load i32, i32* @R600_SQ_PGM_RESOURCES_PS, align 4
  %141 = load i32, i32* @R600_SET_CONTEXT_REG_OFFSET, align 4
  %142 = sub nsw i32 %140, %141
  %143 = ashr i32 %142, 2
  %144 = call i32 @OUT_RING(i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = or i32 %145, 268435456
  %147 = call i32 @OUT_RING(i32 %146)
  %148 = load i32, i32* @R600_IT_SET_CONTEXT_REG, align 4
  %149 = call i32 @CP_PACKET3(i32 %148, i32 1)
  %150 = call i32 @OUT_RING(i32 %149)
  %151 = load i32, i32* @R600_SQ_PGM_EXPORTS_PS, align 4
  %152 = load i32, i32* @R600_SET_CONTEXT_REG_OFFSET, align 4
  %153 = sub nsw i32 %151, %152
  %154 = ashr i32 %153, 2
  %155 = call i32 @OUT_RING(i32 %154)
  %156 = call i32 @OUT_RING(i32 2)
  %157 = load i32, i32* @R600_IT_SET_CONTEXT_REG, align 4
  %158 = call i32 @CP_PACKET3(i32 %157, i32 1)
  %159 = call i32 @OUT_RING(i32 %158)
  %160 = load i32, i32* @R600_SQ_PGM_CF_OFFSET_PS, align 4
  %161 = load i32, i32* @R600_SET_CONTEXT_REG_OFFSET, align 4
  %162 = sub nsw i32 %160, %161
  %163 = ashr i32 %162, 2
  %164 = call i32 @OUT_RING(i32 %163)
  %165 = call i32 @OUT_RING(i32 0)
  %166 = call i32 (...) @ADVANCE_RING()
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %168 = load i32, i32* @R600_SH_ACTION_ENA, align 4
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @cp_set_surface_sync(%struct.TYPE_7__* %167, i32 %168, i32 512, i32 %169)
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET3(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @cp_set_surface_sync(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
