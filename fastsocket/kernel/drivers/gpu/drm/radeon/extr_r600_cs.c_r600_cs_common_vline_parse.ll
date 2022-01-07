; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_cs_common_vline_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_cs_common_vline_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.drm_mode_object = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.radeon_crtc = type { i32 }
%struct.radeon_cs_packet = type { i64, i64, i32, i32 }

@RADEON_PACKET_TYPE3 = common dso_local global i64 0, align 8
@PACKET3_WAIT_REG_MEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"vline wait missing WAIT_REG_MEM segment\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"vline WAIT_REG_MEM waiting on MEM instead of REG\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"vline WAIT_REG_MEM waiting on PFP instead of ME\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"vline WAIT_REG_MEM function not equal\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"vline WAIT_REG_MEM bad reg\0A\00", align 1
@RADEON_VLINE_STAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"vline WAIT_REG_MEM bad bit mask\0A\00", align 1
@DRM_MODE_OBJECT_CRTC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"cannot find crtc %d\0A\00", align 1
@R600_CP_PACKET0_REG_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"unknown crtc reloc\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_cs_common_vline_parse(%struct.radeon_cs_parser* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drm_mode_object*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca %struct.radeon_crtc*, align 8
  %11 = alloca %struct.radeon_cs_packet, align 8
  %12 = alloca %struct.radeon_cs_packet, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %19, align 8
  %24 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %25 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %26 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %24, %struct.radeon_cs_packet* %12, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %4, align 4
  br label %258

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %12, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RADEON_PACKET_TYPE3, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %12, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PACKET3_WAIT_REG_MEM, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %33
  %44 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %258

47:                                               ; preds = %38
  %48 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %49 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %12, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  %52 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %48, i32 %51)
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = and i32 %53, 16
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %258

60:                                               ; preds = %47
  %61 = load i32, i32* %18, align 4
  %62 = and i32 %61, 256
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %258

68:                                               ; preds = %60
  %69 = load i32, i32* %18, align 4
  %70 = and i32 %69, 7
  %71 = icmp ne i32 %70, 3
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %258

76:                                               ; preds = %68
  %77 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %78 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %12, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 2
  %81 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %77, i32 %80)
  %82 = shl i32 %81, 2
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %258

91:                                               ; preds = %76
  %92 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %93 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %12, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 5
  %96 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %92, i32 %95)
  %97 = load i32, i32* @RADEON_VLINE_STAT, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %258

103:                                              ; preds = %91
  %104 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %105 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %106 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %12, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %107, %109
  %111 = add nsw i32 %110, 2
  %112 = call i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %104, %struct.radeon_cs_packet* %11, i32 %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %4, align 4
  br label %258

117:                                              ; preds = %103
  %118 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %119 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, 2
  store i32 %121, i32* %16, align 4
  %122 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %12, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 2
  %125 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %126 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %11, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 2
  %132 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %133 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %136, i32 %137)
  store i32 %138, i32* %15, align 4
  %139 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %140, 2
  %142 = add nsw i32 %141, 7
  %143 = add nsw i32 %142, 1
  %144 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %139, i32 %143)
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @R600_CP_PACKET0_GET_REG(i32 %145)
  store i32 %146, i32* %17, align 4
  %147 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %148 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @DRM_MODE_OBJECT_CRTC, align 4
  %154 = call %struct.drm_mode_object* @drm_mode_object_find(i32 %151, i32 %152, i32 %153)
  store %struct.drm_mode_object* %154, %struct.drm_mode_object** %8, align 8
  %155 = load %struct.drm_mode_object*, %struct.drm_mode_object** %8, align 8
  %156 = icmp ne %struct.drm_mode_object* %155, null
  br i1 %156, label %162, label %157

157:                                              ; preds = %117
  %158 = load i32, i32* %13, align 4
  %159 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %4, align 4
  br label %258

162:                                              ; preds = %117
  %163 = load %struct.drm_mode_object*, %struct.drm_mode_object** %8, align 8
  %164 = call %struct.drm_crtc* @obj_to_crtc(%struct.drm_mode_object* %163)
  store %struct.drm_crtc* %164, %struct.drm_crtc** %9, align 8
  %165 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %166 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %165)
  store %struct.radeon_crtc* %166, %struct.radeon_crtc** %10, align 8
  %167 = load %struct.radeon_crtc*, %struct.radeon_crtc** %10, align 8
  %168 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %13, align 4
  %170 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %171 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %217, label %174

174:                                              ; preds = %162
  %175 = call i32 @PACKET2(i32 0)
  %176 = load i32*, i32** %19, align 8
  %177 = load i32, i32* %16, align 4
  %178 = add nsw i32 %177, 2
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store volatile i32 %175, i32* %180, align 4
  %181 = call i32 @PACKET2(i32 0)
  %182 = load i32*, i32** %19, align 8
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, 3
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  store volatile i32 %181, i32* %186, align 4
  %187 = call i32 @PACKET2(i32 0)
  %188 = load i32*, i32** %19, align 8
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  store volatile i32 %187, i32* %192, align 4
  %193 = call i32 @PACKET2(i32 0)
  %194 = load i32*, i32** %19, align 8
  %195 = load i32, i32* %16, align 4
  %196 = add nsw i32 %195, 5
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  store volatile i32 %193, i32* %198, align 4
  %199 = call i32 @PACKET2(i32 0)
  %200 = load i32*, i32** %19, align 8
  %201 = load i32, i32* %16, align 4
  %202 = add nsw i32 %201, 6
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  store volatile i32 %199, i32* %204, align 4
  %205 = call i32 @PACKET2(i32 0)
  %206 = load i32*, i32** %19, align 8
  %207 = load i32, i32* %16, align 4
  %208 = add nsw i32 %207, 7
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  store volatile i32 %205, i32* %210, align 4
  %211 = call i32 @PACKET2(i32 0)
  %212 = load i32*, i32** %19, align 8
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 %213, 8
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  store volatile i32 %211, i32* %216, align 4
  br label %257

217:                                              ; preds = %162
  %218 = load i32, i32* %17, align 4
  %219 = load i32*, i32** %6, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %218, %221
  br i1 %222, label %223, label %252

223:                                              ; preds = %217
  %224 = load i32, i32* @R600_CP_PACKET0_REG_MASK, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %15, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %15, align 4
  %228 = load i32*, i32** %6, align 8
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = ashr i32 %232, 2
  %234 = load i32, i32* %15, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %15, align 4
  %236 = load i32, i32* %15, align 4
  %237 = load i32*, i32** %19, align 8
  %238 = load i32, i32* %16, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store volatile i32 %236, i32* %240, align 4
  %241 = load i32*, i32** %7, align 8
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = ashr i32 %245, 2
  %247 = load i32*, i32** %19, align 8
  %248 = load i32, i32* %16, align 4
  %249 = add nsw i32 %248, 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  store volatile i32 %246, i32* %251, align 4
  br label %256

252:                                              ; preds = %217
  %253 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %254 = load i32, i32* @EINVAL, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %4, align 4
  br label %258

256:                                              ; preds = %223
  br label %257

257:                                              ; preds = %256, %174
  store i32 0, i32* %4, align 4
  br label %258

258:                                              ; preds = %257, %252, %157, %115, %99, %87, %72, %64, %56, %43, %31
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @R600_CP_PACKET0_GET_REG(i32) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(i32, i32, i32) #1

declare dso_local %struct.drm_crtc* @obj_to_crtc(%struct.drm_mode_object*) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @PACKET2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
