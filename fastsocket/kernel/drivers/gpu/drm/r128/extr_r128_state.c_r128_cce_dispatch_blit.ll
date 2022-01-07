; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_blit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__*, %struct.drm_device_dma*, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.drm_device_dma = type { %struct.drm_buf** }
%struct.drm_buf = type { i32, i32, i64, %struct.drm_file*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid blit format %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@R128_PC_GUI_CTLSTAT = common dso_local global i32 0, align 4
@R128_PC_RI_GUI = common dso_local global i32 0, align 4
@R128_PC_FLUSH_GUI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"process %d using buffer owned by %p\0A\00", align 1
@DRM_CURRENTPID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"sending pending buffer %d\0A\00", align 1
@R128_CNTL_HOSTDATA_BLT = common dso_local global i32 0, align 4
@R128_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@R128_GMC_BRUSH_NONE = common dso_local global i32 0, align 4
@R128_GMC_SRC_DATATYPE_COLOR = common dso_local global i32 0, align 4
@R128_ROP3_S = common dso_local global i32 0, align 4
@R128_DP_SRC_SOURCE_HOST_DATA = common dso_local global i32 0, align 4
@R128_GMC_CLR_CMP_CNTL_DIS = common dso_local global i32 0, align 4
@R128_GMC_AUX_CLIP_DIS = common dso_local global i32 0, align 4
@R128_GMC_WR_MSK_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*, %struct.TYPE_7__*)* @r128_cce_dispatch_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r128_cce_dispatch_blit(%struct.drm_device* %0, %struct.drm_file* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.drm_device_dma*, align 8
  %10 = alloca %struct.drm_buf*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load %struct.drm_device_dma*, %struct.drm_device_dma** %19, align 8
  store %struct.drm_device_dma* %20, %struct.drm_device_dma** %9, align 8
  %21 = load i32, i32* @RING_LOCALS, align 4
  %22 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %29 [
    i32 133, label %26
    i32 135, label %27
    i32 131, label %27
    i32 134, label %27
    i32 128, label %27
    i32 129, label %27
    i32 132, label %28
    i32 130, label %28
  ]

26:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %36

27:                                               ; preds = %3, %3, %3, %3, %3
  store i32 1, i32* %13, align 4
  br label %36

28:                                               ; preds = %3, %3
  store i32 2, i32* %13, align 4
  br label %36

29:                                               ; preds = %3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %201

36:                                               ; preds = %28, %27, %26
  %37 = call i32 @BEGIN_RING(i32 2)
  %38 = load i32, i32* @R128_PC_GUI_CTLSTAT, align 4
  %39 = call i32 @CCE_PACKET0(i32 %38, i32 0)
  %40 = call i32 @OUT_RING(i32 %39)
  %41 = load i32, i32* @R128_PC_RI_GUI, align 4
  %42 = load i32, i32* @R128_PC_FLUSH_GUI, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @OUT_RING(i32 %43)
  %45 = call i32 (...) @ADVANCE_RING()
  %46 = load %struct.drm_device_dma*, %struct.drm_device_dma** %9, align 8
  %47 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %46, i32 0, i32 0
  %48 = load %struct.drm_buf**, %struct.drm_buf*** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %48, i64 %51
  %53 = load %struct.drm_buf*, %struct.drm_buf** %52, align 8
  store %struct.drm_buf* %53, %struct.drm_buf** %10, align 8
  %54 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %55 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %54, i32 0, i32 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %11, align 8
  %57 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %58 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %57, i32 0, i32 3
  %59 = load %struct.drm_file*, %struct.drm_file** %58, align 8
  %60 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %61 = icmp ne %struct.drm_file* %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %36
  %63 = load i32, i32* @DRM_CURRENTPID, align 4
  %64 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %65 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %64, i32 0, i32 3
  %66 = load %struct.drm_file*, %struct.drm_file** %65, align 8
  %67 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %63, %struct.drm_file* %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %201

70:                                               ; preds = %36
  %71 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %72 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %201

83:                                               ; preds = %70
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = load i32, i32* %13, align 4
  %94 = ashr i32 %92, %93
  store i32 %94, i32* %14, align 4
  %95 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %96 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %102 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  %106 = bitcast i8* %105 to i32*
  store i32* %106, i32** %12, align 8
  %107 = load i32, i32* @R128_CNTL_HOSTDATA_BLT, align 4
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 6
  %110 = call i32 @CCE_PACKET3(i32 %107, i32 %109)
  %111 = call i32 @cpu_to_le32(i32 %110)
  %112 = load i32*, i32** %12, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %115 = load i32, i32* @R128_GMC_BRUSH_NONE, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = shl i32 %119, 8
  %121 = or i32 %116, %120
  %122 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @R128_ROP3_S, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @R128_DP_SRC_SOURCE_HOST_DATA, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @R128_GMC_AUX_CLIP_DIS, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @R128_GMC_WR_MSK_DIS, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @cpu_to_le32(i32 %133)
  %135 = load i32*, i32** %12, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = shl i32 %139, 21
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 5
  %145 = or i32 %140, %144
  %146 = call i32 @cpu_to_le32(i32 %145)
  %147 = load i32*, i32** %12, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32 %146, i32* %148, align 4
  %149 = call i32 @cpu_to_le32(i32 -1)
  %150 = load i32*, i32** %12, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 3
  store i32 %149, i32* %151, align 4
  %152 = call i32 @cpu_to_le32(i32 -1)
  %153 = load i32*, i32** %12, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 4
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = shl i32 %157, 16
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %158, %161
  %163 = call i32 @cpu_to_le32(i32 %162)
  %164 = load i32*, i32** %12, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 5
  store i32 %163, i32* %165, align 4
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 16
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %169, %172
  %174 = call i32 @cpu_to_le32(i32 %173)
  %175 = load i32*, i32** %12, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 6
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @cpu_to_le32(i32 %177)
  %179 = load i32*, i32** %12, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 7
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, 8
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 4
  %185 = trunc i64 %184 to i32
  %186 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %187 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %189 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %190 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %191 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @r128_cce_dispatch_indirect(%struct.drm_device* %188, %struct.drm_buf* %189, i32 0, i32 %192)
  %194 = call i32 @BEGIN_RING(i32 2)
  %195 = load i32, i32* @R128_PC_GUI_CTLSTAT, align 4
  %196 = call i32 @CCE_PACKET0(i32 %195, i32 0)
  %197 = call i32 @OUT_RING(i32 %196)
  %198 = load i32, i32* @R128_PC_FLUSH_GUI, align 4
  %199 = call i32 @OUT_RING(i32 %198)
  %200 = call i32 (...) @ADVANCE_RING()
  store i32 0, i32* %4, align 4
  br label %201

201:                                              ; preds = %83, %75, %62, %29
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CCE_PACKET0(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @CCE_PACKET3(i32, i32) #1

declare dso_local i32 @r128_cce_dispatch_indirect(%struct.drm_device*, %struct.drm_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
