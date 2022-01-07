; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_do_cp_cmdbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_do_cp_cmdbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma*, %struct.TYPE_40__* }
%struct.drm_device_dma = type { i32, %struct.drm_buf** }
%struct.drm_buf = type { i32, %struct.drm_file* }
%struct.TYPE_40__ = type { i32 }
%struct.drm_file = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_41__ = type { i64, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_42__ = type { %struct.TYPE_38__, %struct.TYPE_36__, %struct.TYPE_34__ }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_34__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@R300_SIMULTANEOUS_CLIPRECTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"R300_CMD_PACKET0\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"r300_emit_packet0 failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"R300_CMD_VPU\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"r300_emit_vpu failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"R300_CMD_PACKET3\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"r300_emit_packet3 failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"R300_CMD_END3D\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"R300_CMD_CP_DELAY\0A\00", align 1
@RING_LOCALS = common dso_local global i32 0, align 4
@RADEON_CP_PACKET2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"RADEON_CMD_DMA_DISCARD\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"buffer index %d (of %d max)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"bad buffer %p %p %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"R300_CMD_WAIT\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"R300_CMD_SCRATCH\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"r300_scratch failed\0A\00", align 1
@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_RV515 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [35 x i8] c"Calling r500 command on r300 card\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"R300_CMD_R500FP\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"r300_emit_r500fp failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"bad cmd_type %i at byte %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r300_do_cp_cmdbuf(%struct.drm_device* %0, %struct.drm_file* %1, %struct.TYPE_41__* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.TYPE_41__*, align 8
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca %struct.drm_radeon_master_private*, align 8
  %9 = alloca %struct.drm_device_dma*, align 8
  %10 = alloca %struct.drm_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_42__*, align 8
  %15 = alloca %struct.TYPE_42__, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 4
  %19 = alloca i32, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca { i64, i32 }, align 4
  %22 = alloca { i64, i32 }, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  store %struct.TYPE_41__* %2, %struct.TYPE_41__** %6, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_40__*, %struct.TYPE_40__** %24, align 8
  store %struct.TYPE_40__* %25, %struct.TYPE_40__** %7, align 8
  %26 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %27 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %26, i32 0, i32 0
  %28 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %28, i32 0, i32 0
  %30 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %29, align 8
  store %struct.drm_radeon_master_private* %30, %struct.drm_radeon_master_private** %8, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = load %struct.drm_device_dma*, %struct.drm_device_dma** %32, align 8
  store %struct.drm_device_dma* %33, %struct.drm_device_dma** %9, align 8
  store %struct.drm_buf* null, %struct.drm_buf** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %34 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %36 = call i32 @r300_pacify(%struct.TYPE_40__* %35)
  %37 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @R300_SIMULTANEOUS_CLIPRECTS, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %3
  %43 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %44 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %45 = call i32 @r300_emit_cliprects(%struct.TYPE_40__* %43, %struct.TYPE_41__* %44, i32 0)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %278

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %3
  br label %51

51:                                               ; preds = %275, %50
  %52 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_37__*, %struct.TYPE_37__** %53, align 8
  %55 = call i32 @drm_buffer_unprocessed(%struct.TYPE_37__* %54)
  %56 = sext i32 %55 to i64
  %57 = icmp uge i64 %56, 12
  br i1 %57, label %58, label %276

58:                                               ; preds = %51
  %59 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_37__*, %struct.TYPE_37__** %60, align 8
  %62 = call %struct.TYPE_42__* @drm_buffer_read_object(%struct.TYPE_37__* %61, i32 12, %struct.TYPE_42__* %15)
  store %struct.TYPE_42__* %62, %struct.TYPE_42__** %14, align 8
  %63 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %261 [
    i32 133, label %67
    i32 129, label %84
    i32 132, label %101
    i32 134, label %118
    i32 136, label %122
    i32 135, label %145
    i32 128, label %204
    i32 130, label %215
    i32 131, label %232
  ]

67:                                               ; preds = %58
  %68 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %70 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %71 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %72 = bitcast { i64, i32 }* %16 to i8*
  %73 = bitcast %struct.TYPE_42__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 12, i1 false)
  %74 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %75 = load i64, i64* %74, align 4
  %76 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @r300_emit_packet0(%struct.TYPE_40__* %69, %struct.TYPE_41__* %70, i64 %75, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %278

83:                                               ; preds = %67
  br label %275

84:                                               ; preds = %58
  %85 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %87 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %88 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %89 = bitcast { i64, i32 }* %17 to i8*
  %90 = bitcast %struct.TYPE_42__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 12, i1 false)
  %91 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %92 = load i64, i64* %91, align 4
  %93 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @r300_emit_vpu(%struct.TYPE_40__* %86, %struct.TYPE_41__* %87, i64 %92, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %278

100:                                              ; preds = %84
  br label %275

101:                                              ; preds = %58
  %102 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %103 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %104 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %105 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %106 = bitcast { i64, i32 }* %18 to i8*
  %107 = bitcast %struct.TYPE_42__* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 12, i1 false)
  %108 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %109 = load i64, i64* %108, align 4
  %110 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @r300_emit_packet3(%struct.TYPE_40__* %103, %struct.TYPE_41__* %104, i64 %109, i32 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %101
  %116 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %278

117:                                              ; preds = %101
  br label %275

118:                                              ; preds = %58
  %119 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %120 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %121 = call i32 @r300_pacify(%struct.TYPE_40__* %120)
  br label %275

122:                                              ; preds = %58
  %123 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %124 = load i32, i32* @RING_LOCALS, align 4
  %125 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @BEGIN_RING(i32 %128)
  store i32 0, i32* %19, align 4
  br label %130

130:                                              ; preds = %140, %122
  %131 = load i32, i32* %19, align 4
  %132 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %131, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %139 = call i32 @OUT_RING(i32 %138)
  br label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %19, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %19, align 4
  br label %130

143:                                              ; preds = %130
  %144 = call i32 (...) @ADVANCE_RING()
  br label %275

145:                                              ; preds = %58
  %146 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %147 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %145
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.drm_device_dma*, %struct.drm_device_dma** %9, align 8
  %156 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp sge i32 %154, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %153, %145
  %160 = load i32, i32* %13, align 4
  %161 = load %struct.drm_device_dma*, %struct.drm_device_dma** %9, align 8
  %162 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %163, 1
  %165 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %160, i32 %164)
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %12, align 4
  br label %278

168:                                              ; preds = %153
  %169 = load %struct.drm_device_dma*, %struct.drm_device_dma** %9, align 8
  %170 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %169, i32 0, i32 1
  %171 = load %struct.drm_buf**, %struct.drm_buf*** %170, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %171, i64 %173
  %175 = load %struct.drm_buf*, %struct.drm_buf** %174, align 8
  store %struct.drm_buf* %175, %struct.drm_buf** %10, align 8
  %176 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %177 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %176, i32 0, i32 1
  %178 = load %struct.drm_file*, %struct.drm_file** %177, align 8
  %179 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %180 = icmp ne %struct.drm_file* %178, %179
  br i1 %180, label %186, label %181

181:                                              ; preds = %168
  %182 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %183 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %181, %168
  %187 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %188 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %187, i32 0, i32 1
  %189 = load %struct.drm_file*, %struct.drm_file** %188, align 8
  %190 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %191 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %192 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), %struct.drm_file* %189, %struct.drm_file* %190, i32 %193)
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %12, align 4
  br label %278

197:                                              ; preds = %181
  store i32 1, i32* %11, align 4
  %198 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %199 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %200 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %199, i32 0, i32 0
  %201 = load %struct.TYPE_35__*, %struct.TYPE_35__** %200, align 8
  %202 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %203 = call i32 @r300_discard_buffer(%struct.drm_device* %198, %struct.TYPE_35__* %201, %struct.drm_buf* %202)
  br label %275

204:                                              ; preds = %58
  %205 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %206 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %207 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %208 = bitcast { i64, i32 }* %20 to i8*
  %209 = bitcast %struct.TYPE_42__* %207 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %208, i8* align 4 %209, i64 12, i1 false)
  %210 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %211 = load i64, i64* %210, align 4
  %212 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @r300_cmd_wait(%struct.TYPE_40__* %206, i64 %211, i32 %213)
  br label %275

215:                                              ; preds = %58
  %216 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %217 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %218 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %219 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %220 = bitcast { i64, i32 }* %21 to i8*
  %221 = bitcast %struct.TYPE_42__* %219 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %220, i8* align 4 %221, i64 12, i1 false)
  %222 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %223 = load i64, i64* %222, align 4
  %224 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @r300_scratch(%struct.TYPE_40__* %217, %struct.TYPE_41__* %218, i64 %223, i32 %225)
  store i32 %226, i32* %12, align 4
  %227 = load i32, i32* %12, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %215
  %230 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %278

231:                                              ; preds = %215
  br label %275

232:                                              ; preds = %58
  %233 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %237 = and i32 %235, %236
  %238 = load i32, i32* @CHIP_RV515, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %232
  %241 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %12, align 4
  br label %278

244:                                              ; preds = %232
  %245 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %246 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %247 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %248 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %249 = bitcast { i64, i32 }* %22 to i8*
  %250 = bitcast %struct.TYPE_42__* %248 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %249, i8* align 4 %250, i64 12, i1 false)
  %251 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %252 = load i64, i64* %251, align 4
  %253 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @r300_emit_r500fp(%struct.TYPE_40__* %246, %struct.TYPE_41__* %247, i64 %252, i32 %254)
  store i32 %255, i32* %12, align 4
  %256 = load i32, i32* %12, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %244
  %259 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  br label %278

260:                                              ; preds = %244
  br label %275

261:                                              ; preds = %58
  %262 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_37__*, %struct.TYPE_37__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 %270, 12
  %272 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %265, i32 %271)
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %12, align 4
  br label %278

275:                                              ; preds = %260, %231, %204, %197, %143, %118, %117, %100, %83
  br label %51

276:                                              ; preds = %51
  %277 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %278

278:                                              ; preds = %276, %261, %258, %240, %229, %186, %159, %115, %98, %81, %48
  %279 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %280 = call i32 @r300_pacify(%struct.TYPE_40__* %279)
  %281 = load i32, i32* %11, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %293

283:                                              ; preds = %278
  %284 = load i32, i32* @RING_LOCALS, align 4
  %285 = call i32 @BEGIN_RING(i32 2)
  %286 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %8, align 8
  %287 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %286, i32 0, i32 0
  %288 = load %struct.TYPE_39__*, %struct.TYPE_39__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @RADEON_DISPATCH_AGE(i32 %290)
  %292 = call i32 (...) @ADVANCE_RING()
  br label %293

293:                                              ; preds = %283, %278
  %294 = call i32 (...) @COMMIT_RING()
  %295 = load i32, i32* %12, align 4
  ret i32 %295
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @r300_pacify(%struct.TYPE_40__*) #1

declare dso_local i32 @r300_emit_cliprects(%struct.TYPE_40__*, %struct.TYPE_41__*, i32) #1

declare dso_local i32 @drm_buffer_unprocessed(%struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_42__* @drm_buffer_read_object(%struct.TYPE_37__*, i32, %struct.TYPE_42__*) #1

declare dso_local i32 @r300_emit_packet0(%struct.TYPE_40__*, %struct.TYPE_41__*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @r300_emit_vpu(%struct.TYPE_40__*, %struct.TYPE_41__*, i64, i32) #1

declare dso_local i32 @r300_emit_packet3(%struct.TYPE_40__*, %struct.TYPE_41__*, i64, i32) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @r300_discard_buffer(%struct.drm_device*, %struct.TYPE_35__*, %struct.drm_buf*) #1

declare dso_local i32 @r300_cmd_wait(%struct.TYPE_40__*, i64, i32) #1

declare dso_local i32 @r300_scratch(%struct.TYPE_40__*, %struct.TYPE_41__*, i64, i32) #1

declare dso_local i32 @r300_emit_r500fp(%struct.TYPE_40__*, %struct.TYPE_41__*, i64, i32) #1

declare dso_local i32 @RADEON_DISPATCH_AGE(i32) #1

declare dso_local i32 @COMMIT_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
