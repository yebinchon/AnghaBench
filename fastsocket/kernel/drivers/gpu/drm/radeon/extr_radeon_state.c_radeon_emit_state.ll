; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_emit_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_emit_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dirty=0x%08x\0A\00", align 1
@RADEON_UPLOAD_CONTEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid depth buffer offset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_PP_MISC = common dso_local global i32 0, align 4
@RADEON_PP_CNTL = common dso_local global i32 0, align 4
@RADEON_RB3D_COLORPITCH = common dso_local global i32 0, align 4
@RADEON_UPLOAD_VERTFMT = common dso_local global i32 0, align 4
@RADEON_SE_COORD_FMT = common dso_local global i32 0, align 4
@RADEON_UPLOAD_LINE = common dso_local global i32 0, align 4
@RADEON_RE_LINE_PATTERN = common dso_local global i32 0, align 4
@RADEON_SE_LINE_WIDTH = common dso_local global i32 0, align 4
@RADEON_UPLOAD_BUMPMAP = common dso_local global i32 0, align 4
@RADEON_PP_LUM_MATRIX = common dso_local global i32 0, align 4
@RADEON_PP_ROT_MATRIX_0 = common dso_local global i32 0, align 4
@RADEON_UPLOAD_MASKS = common dso_local global i32 0, align 4
@RADEON_RB3D_STENCILREFMASK = common dso_local global i32 0, align 4
@RADEON_UPLOAD_VIEWPORT = common dso_local global i32 0, align 4
@RADEON_SE_VPORT_XSCALE = common dso_local global i32 0, align 4
@RADEON_UPLOAD_SETUP = common dso_local global i32 0, align 4
@RADEON_SE_CNTL = common dso_local global i32 0, align 4
@RADEON_SE_CNTL_STATUS = common dso_local global i32 0, align 4
@RADEON_UPLOAD_MISC = common dso_local global i32 0, align 4
@RADEON_RE_MISC = common dso_local global i32 0, align 4
@RADEON_UPLOAD_TEX0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid texture offset for unit 0\0A\00", align 1
@RADEON_PP_TXFILTER_0 = common dso_local global i32 0, align 4
@RADEON_PP_BORDER_COLOR_0 = common dso_local global i32 0, align 4
@RADEON_UPLOAD_TEX1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Invalid texture offset for unit 1\0A\00", align 1
@RADEON_PP_TXFILTER_1 = common dso_local global i32 0, align 4
@RADEON_PP_BORDER_COLOR_1 = common dso_local global i32 0, align 4
@RADEON_UPLOAD_TEX2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Invalid texture offset for unit 2\0A\00", align 1
@RADEON_PP_TXFILTER_2 = common dso_local global i32 0, align 4
@RADEON_PP_BORDER_COLOR_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.drm_file*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32)* @radeon_emit_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_emit_state(i32* %0, %struct.drm_file* %1, %struct.TYPE_6__* %2, %struct.TYPE_5__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* @RING_LOCALS, align 4
  %13 = load i32, i32* %11, align 4
  %14 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @RADEON_UPLOAD_CONTEXT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %97

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 25
  %24 = call i64 @radeon_check_and_fixup_offset(i32* %20, %struct.drm_file* %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %443

30:                                               ; preds = %19
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 20
  %35 = call i64 @radeon_check_and_fixup_offset(i32* %31, %struct.drm_file* %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %443

41:                                               ; preds = %30
  %42 = call i32 @BEGIN_RING(i32 14)
  %43 = load i32, i32* @RADEON_PP_MISC, align 4
  %44 = call i32 @CP_PACKET0(i32 %43, i32 6)
  %45 = call i32 @OUT_RING(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 29
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @OUT_RING(i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 28
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @OUT_RING(i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 27
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @OUT_RING(i32 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 26
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @OUT_RING(i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 25
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @OUT_RING(i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 24
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @OUT_RING(i32 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 23
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @OUT_RING(i32 %72)
  %74 = load i32, i32* @RADEON_PP_CNTL, align 4
  %75 = call i32 @CP_PACKET0(i32 %74, i32 2)
  %76 = call i32 @OUT_RING(i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 22
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @OUT_RING(i32 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 21
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @OUT_RING(i32 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 20
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @OUT_RING(i32 %87)
  %89 = load i32, i32* @RADEON_RB3D_COLORPITCH, align 4
  %90 = call i32 @CP_PACKET0(i32 %89, i32 0)
  %91 = call i32 @OUT_RING(i32 %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 19
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @OUT_RING(i32 %94)
  %96 = call i32 (...) @ADVANCE_RING()
  br label %97

97:                                               ; preds = %41, %5
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @RADEON_UPLOAD_VERTFMT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = call i32 @BEGIN_RING(i32 2)
  %104 = load i32, i32* @RADEON_SE_COORD_FMT, align 4
  %105 = call i32 @CP_PACKET0(i32 %104, i32 0)
  %106 = call i32 @OUT_RING(i32 %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 18
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @OUT_RING(i32 %109)
  %111 = call i32 (...) @ADVANCE_RING()
  br label %112

112:                                              ; preds = %102, %97
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @RADEON_UPLOAD_LINE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %112
  %118 = call i32 @BEGIN_RING(i32 5)
  %119 = load i32, i32* @RADEON_RE_LINE_PATTERN, align 4
  %120 = call i32 @CP_PACKET0(i32 %119, i32 1)
  %121 = call i32 @OUT_RING(i32 %120)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 17
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @OUT_RING(i32 %124)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 16
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @OUT_RING(i32 %128)
  %130 = load i32, i32* @RADEON_SE_LINE_WIDTH, align 4
  %131 = call i32 @CP_PACKET0(i32 %130, i32 0)
  %132 = call i32 @OUT_RING(i32 %131)
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 15
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @OUT_RING(i32 %135)
  %137 = call i32 (...) @ADVANCE_RING()
  br label %138

138:                                              ; preds = %117, %112
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @RADEON_UPLOAD_BUMPMAP, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %164

143:                                              ; preds = %138
  %144 = call i32 @BEGIN_RING(i32 5)
  %145 = load i32, i32* @RADEON_PP_LUM_MATRIX, align 4
  %146 = call i32 @CP_PACKET0(i32 %145, i32 0)
  %147 = call i32 @OUT_RING(i32 %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 14
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @OUT_RING(i32 %150)
  %152 = load i32, i32* @RADEON_PP_ROT_MATRIX_0, align 4
  %153 = call i32 @CP_PACKET0(i32 %152, i32 1)
  %154 = call i32 @OUT_RING(i32 %153)
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 13
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @OUT_RING(i32 %157)
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @OUT_RING(i32 %161)
  %163 = call i32 (...) @ADVANCE_RING()
  br label %164

164:                                              ; preds = %143, %138
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @RADEON_UPLOAD_MASKS, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %187

169:                                              ; preds = %164
  %170 = call i32 @BEGIN_RING(i32 4)
  %171 = load i32, i32* @RADEON_RB3D_STENCILREFMASK, align 4
  %172 = call i32 @CP_PACKET0(i32 %171, i32 2)
  %173 = call i32 @OUT_RING(i32 %172)
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @OUT_RING(i32 %176)
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 10
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @OUT_RING(i32 %180)
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @OUT_RING(i32 %184)
  %186 = call i32 (...) @ADVANCE_RING()
  br label %187

187:                                              ; preds = %169, %164
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* @RADEON_UPLOAD_VIEWPORT, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %222

192:                                              ; preds = %187
  %193 = call i32 @BEGIN_RING(i32 7)
  %194 = load i32, i32* @RADEON_SE_VPORT_XSCALE, align 4
  %195 = call i32 @CP_PACKET0(i32 %194, i32 5)
  %196 = call i32 @OUT_RING(i32 %195)
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @OUT_RING(i32 %199)
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @OUT_RING(i32 %203)
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @OUT_RING(i32 %207)
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @OUT_RING(i32 %211)
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @OUT_RING(i32 %215)
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @OUT_RING(i32 %219)
  %221 = call i32 (...) @ADVANCE_RING()
  br label %222

222:                                              ; preds = %192, %187
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* @RADEON_UPLOAD_SETUP, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %244

227:                                              ; preds = %222
  %228 = call i32 @BEGIN_RING(i32 4)
  %229 = load i32, i32* @RADEON_SE_CNTL, align 4
  %230 = call i32 @CP_PACKET0(i32 %229, i32 0)
  %231 = call i32 @OUT_RING(i32 %230)
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @OUT_RING(i32 %234)
  %236 = load i32, i32* @RADEON_SE_CNTL_STATUS, align 4
  %237 = call i32 @CP_PACKET0(i32 %236, i32 0)
  %238 = call i32 @OUT_RING(i32 %237)
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @OUT_RING(i32 %241)
  %243 = call i32 (...) @ADVANCE_RING()
  br label %244

244:                                              ; preds = %227, %222
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* @RADEON_UPLOAD_MISC, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %259

249:                                              ; preds = %244
  %250 = call i32 @BEGIN_RING(i32 2)
  %251 = load i32, i32* @RADEON_RE_MISC, align 4
  %252 = call i32 @CP_PACKET0(i32 %251, i32 0)
  %253 = call i32 @OUT_RING(i32 %252)
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @OUT_RING(i32 %256)
  %258 = call i32 (...) @ADVANCE_RING()
  br label %259

259:                                              ; preds = %249, %244
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* @RADEON_UPLOAD_TEX0, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %320

264:                                              ; preds = %259
  %265 = load i32*, i32** %7, align 8
  %266 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i64 0
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 4
  %270 = call i64 @radeon_check_and_fixup_offset(i32* %265, %struct.drm_file* %266, i32* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %264
  %273 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %274 = load i32, i32* @EINVAL, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %6, align 4
  br label %443

276:                                              ; preds = %264
  %277 = call i32 @BEGIN_RING(i32 9)
  %278 = load i32, i32* @RADEON_PP_TXFILTER_0, align 4
  %279 = call i32 @CP_PACKET0(i32 %278, i32 5)
  %280 = call i32 @OUT_RING(i32 %279)
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i64 0
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @OUT_RING(i32 %284)
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i64 0
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @OUT_RING(i32 %289)
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i64 0
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @OUT_RING(i32 %294)
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i64 0
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @OUT_RING(i32 %299)
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i64 0
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @OUT_RING(i32 %304)
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i64 0
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @OUT_RING(i32 %309)
  %311 = load i32, i32* @RADEON_PP_BORDER_COLOR_0, align 4
  %312 = call i32 @CP_PACKET0(i32 %311, i32 0)
  %313 = call i32 @OUT_RING(i32 %312)
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @OUT_RING(i32 %317)
  %319 = call i32 (...) @ADVANCE_RING()
  br label %320

320:                                              ; preds = %276, %259
  %321 = load i32, i32* %11, align 4
  %322 = load i32, i32* @RADEON_UPLOAD_TEX1, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %381

325:                                              ; preds = %320
  %326 = load i32*, i32** %7, align 8
  %327 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i64 1
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 4
  %331 = call i64 @radeon_check_and_fixup_offset(i32* %326, %struct.drm_file* %327, i32* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %325
  %334 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %335 = load i32, i32* @EINVAL, align 4
  %336 = sub nsw i32 0, %335
  store i32 %336, i32* %6, align 4
  br label %443

337:                                              ; preds = %325
  %338 = call i32 @BEGIN_RING(i32 9)
  %339 = load i32, i32* @RADEON_PP_TXFILTER_1, align 4
  %340 = call i32 @CP_PACKET0(i32 %339, i32 5)
  %341 = call i32 @OUT_RING(i32 %340)
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i64 1
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 6
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @OUT_RING(i32 %345)
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i64 1
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 5
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @OUT_RING(i32 %350)
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i64 1
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @OUT_RING(i32 %355)
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i64 1
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @OUT_RING(i32 %360)
  %362 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i64 1
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @OUT_RING(i32 %365)
  %367 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i64 1
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @OUT_RING(i32 %370)
  %372 = load i32, i32* @RADEON_PP_BORDER_COLOR_1, align 4
  %373 = call i32 @CP_PACKET0(i32 %372, i32 0)
  %374 = call i32 @OUT_RING(i32 %373)
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i64 1
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @OUT_RING(i32 %378)
  %380 = call i32 (...) @ADVANCE_RING()
  br label %381

381:                                              ; preds = %337, %320
  %382 = load i32, i32* %11, align 4
  %383 = load i32, i32* @RADEON_UPLOAD_TEX2, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %442

386:                                              ; preds = %381
  %387 = load i32*, i32** %7, align 8
  %388 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i64 2
  %391 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %390, i32 0, i32 4
  %392 = call i64 @radeon_check_and_fixup_offset(i32* %387, %struct.drm_file* %388, i32* %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %386
  %395 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %396 = load i32, i32* @EINVAL, align 4
  %397 = sub nsw i32 0, %396
  store i32 %397, i32* %6, align 4
  br label %443

398:                                              ; preds = %386
  %399 = call i32 @BEGIN_RING(i32 9)
  %400 = load i32, i32* @RADEON_PP_TXFILTER_2, align 4
  %401 = call i32 @CP_PACKET0(i32 %400, i32 5)
  %402 = call i32 @OUT_RING(i32 %401)
  %403 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i64 2
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %404, i32 0, i32 6
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @OUT_RING(i32 %406)
  %408 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i64 2
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i32 0, i32 5
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @OUT_RING(i32 %411)
  %413 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i64 2
  %415 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %414, i32 0, i32 4
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @OUT_RING(i32 %416)
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i64 2
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @OUT_RING(i32 %421)
  %423 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i64 2
  %425 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @OUT_RING(i32 %426)
  %428 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %428, i64 2
  %430 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @OUT_RING(i32 %431)
  %433 = load i32, i32* @RADEON_PP_BORDER_COLOR_2, align 4
  %434 = call i32 @CP_PACKET0(i32 %433, i32 0)
  %435 = call i32 @OUT_RING(i32 %434)
  %436 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %437 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %436, i64 2
  %438 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = call i32 @OUT_RING(i32 %439)
  %441 = call i32 (...) @ADVANCE_RING()
  br label %442

442:                                              ; preds = %398, %381
  store i32 0, i32* %6, align 4
  br label %443

443:                                              ; preds = %442, %394, %333, %272, %37, %26
  %444 = load i32, i32* %6, align 4
  ret i32 %444
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i64 @radeon_check_and_fixup_offset(i32*, %struct.drm_file*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET0(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
