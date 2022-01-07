; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_check_and_fixup_packet3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_check_and_fixup_packet3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.TYPE_7__ = type { i32 }

@RADEON_CP_PACKET_COUNT_MASK = common dso_local global i32 0, align 4
@RADEON_CP_PACKET3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Not a type 3 packet\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Packet size larger than size of data provided\0A\00", align 1
@UCODE_R200 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Invalid 3d packet for r100-class chip\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Too large payload in 3D_LOAD_VBPNTR (count=%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Invalid offset (k=%d i=%d) in 3D_LOAD_VBPNTR packet.\0A\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Malformed 3D_LOAD_VBPNTR packet (k=%d i=%d narrays=%d count+1=%d).\0A\00", align 1
@UCODE_R100 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Invalid 3d packet for r200-class chip\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Invalid rndr_gen_indx offset\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Invalid indx_buffer reg address %08X\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Invalid indx_buffer offset is %08X\0A\00", align 1
@RADEON_GMC_SRC_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@RADEON_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Invalid first packet offset\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Invalid second packet offset\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Invalid packet type %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.drm_file*, %struct.TYPE_7__*, i32*)* @radeon_check_and_fixup_packet3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_check_and_fixup_packet3(%struct.TYPE_6__* %0, %struct.drm_file* %1, %struct.TYPE_7__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.drm_file* %1, %struct.drm_file** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @drm_buffer_pointer_to_dword(i32 %20, i32 0)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RADEON_CP_PACKET_COUNT_MASK, align 4
  %25 = and i32 %23, %24
  %26 = ashr i32 %25, 16
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 2, %27
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, -1073741824
  %33 = load i32, i32* @RADEON_CP_PACKET3, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %312

39:                                               ; preds = %4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = mul i32 4, %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @drm_buffer_unprocessed(i32 %45)
  %47 = icmp ugt i32 %42, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %312

52:                                               ; preds = %39
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 65280
  switch i32 %55, label %304 [
    i32 141, label %56
    i32 139, label %56
    i32 140, label %56
    i32 128, label %56
    i32 129, label %56
    i32 142, label %56
    i32 133, label %57
    i32 131, label %57
    i32 132, label %57
    i32 143, label %57
    i32 138, label %68
    i32 137, label %164
    i32 130, label %189
    i32 135, label %231
    i32 134, label %231
    i32 136, label %231
  ]

56:                                               ; preds = %52, %52, %52, %52, %52, %52
  br label %311

57:                                               ; preds = %52, %52, %52, %52
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @UCODE_R200, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %312

67:                                               ; preds = %57
  br label %311

68:                                               ; preds = %52
  %69 = load i32, i32* %13, align 4
  %70 = icmp sgt i32 %69, 18
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  %73 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %312

76:                                               ; preds = %68
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32* @drm_buffer_pointer_to_dword(i32 %79, i32 1)
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, -49153
  store i32 %83, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 2, i32* %14, align 4
  br label %84

84:                                               ; preds = %140, %76
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 2
  %92 = icmp slt i32 %89, %91
  br label %93

93:                                               ; preds = %88, %84
  %94 = phi i1 [ false, %84 ], [ %92, %88 ]
  br i1 %94, label %95, label %145

95:                                               ; preds = %93
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32* @drm_buffer_pointer_to_dword(i32 %100, i32 %101)
  store i32* %102, i32** %10, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @radeon_check_and_fixup_offset(%struct.TYPE_6__* %103, %struct.drm_file* %104, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %95
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %312

114:                                              ; preds = %95
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %145

123:                                              ; preds = %114
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32* @drm_buffer_pointer_to_dword(i32 %126, i32 %127)
  store i32* %128, i32** %10, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %130 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @radeon_check_and_fixup_offset(%struct.TYPE_6__* %129, %struct.drm_file* %130, i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %123
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %312

140:                                              ; preds = %123
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  br label %84

145:                                              ; preds = %122, %93
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 2
  %153 = icmp ne i32 %150, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %149, %145
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  %160 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32 %155, i32 %156, i32 %157, i32 %159)
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %5, align 4
  br label %312

163:                                              ; preds = %149
  br label %311

164:                                              ; preds = %52
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @UCODE_R100, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %5, align 4
  br label %312

174:                                              ; preds = %164
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32* @drm_buffer_pointer_to_dword(i32 %177, i32 1)
  store i32* %178, i32** %10, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %180 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = call i32 @radeon_check_and_fixup_offset(%struct.TYPE_6__* %179, %struct.drm_file* %180, i32* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %174
  %185 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %5, align 4
  br label %312

188:                                              ; preds = %174
  br label %311

189:                                              ; preds = %52
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @UCODE_R200, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %5, align 4
  br label %312

199:                                              ; preds = %189
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32* @drm_buffer_pointer_to_dword(i32 %202, i32 1)
  store i32* %203, i32** %10, align 8
  %204 = load i32*, i32** %10, align 8
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, -2147418113
  %207 = icmp ne i32 %206, -2147481584
  br i1 %207, label %208, label %214

208:                                              ; preds = %199
  %209 = load i32*, i32** %10, align 8
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %5, align 4
  br label %312

214:                                              ; preds = %199
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32* @drm_buffer_pointer_to_dword(i32 %217, i32 2)
  store i32* %218, i32** %10, align 8
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %220 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %221 = load i32*, i32** %10, align 8
  %222 = call i32 @radeon_check_and_fixup_offset(%struct.TYPE_6__* %219, %struct.drm_file* %220, i32* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %214
  %225 = load i32*, i32** %10, align 8
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* @EINVAL, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %5, align 4
  br label %312

230:                                              ; preds = %214
  br label %311

231:                                              ; preds = %52, %52, %52
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32* @drm_buffer_pointer_to_dword(i32 %234, i32 1)
  store i32* %235, i32** %10, align 8
  %236 = load i32*, i32** %10, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @RADEON_GMC_SRC_PITCH_OFFSET_CNTL, align 4
  %239 = load i32, i32* @RADEON_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %240 = or i32 %238, %239
  %241 = and i32 %237, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %267

243:                                              ; preds = %231
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32* @drm_buffer_pointer_to_dword(i32 %246, i32 2)
  store i32* %247, i32** %16, align 8
  %248 = load i32*, i32** %16, align 8
  %249 = load i32, i32* %248, align 4
  %250 = shl i32 %249, 10
  store i32 %250, i32* %11, align 4
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %252 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %253 = call i32 @radeon_check_and_fixup_offset(%struct.TYPE_6__* %251, %struct.drm_file* %252, i32* %11)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %243
  %256 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %257 = load i32, i32* @EINVAL, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %5, align 4
  br label %312

259:                                              ; preds = %243
  %260 = load i32*, i32** %16, align 8
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, -4194304
  %263 = load i32, i32* %11, align 4
  %264 = ashr i32 %263, 10
  %265 = or i32 %262, %264
  %266 = load i32*, i32** %16, align 8
  store i32 %265, i32* %266, align 4
  br label %267

267:                                              ; preds = %259, %231
  %268 = load i32*, i32** %10, align 8
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @RADEON_GMC_SRC_PITCH_OFFSET_CNTL, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %303

273:                                              ; preds = %267
  %274 = load i32*, i32** %10, align 8
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @RADEON_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %303

279:                                              ; preds = %273
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32* @drm_buffer_pointer_to_dword(i32 %282, i32 3)
  store i32* %283, i32** %17, align 8
  %284 = load i32*, i32** %17, align 8
  %285 = load i32, i32* %284, align 4
  %286 = shl i32 %285, 10
  store i32 %286, i32* %11, align 4
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %288 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %289 = call i32 @radeon_check_and_fixup_offset(%struct.TYPE_6__* %287, %struct.drm_file* %288, i32* %11)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %279
  %292 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %293 = load i32, i32* @EINVAL, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %5, align 4
  br label %312

295:                                              ; preds = %279
  %296 = load i32*, i32** %17, align 8
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, -4194304
  %299 = load i32, i32* %11, align 4
  %300 = ashr i32 %299, 10
  %301 = or i32 %298, %300
  %302 = load i32*, i32** %17, align 8
  store i32 %301, i32* %302, align 4
  br label %303

303:                                              ; preds = %295, %273, %267
  br label %311

304:                                              ; preds = %52
  %305 = load i32*, i32** %10, align 8
  %306 = load i32, i32* %305, align 4
  %307 = and i32 %306, 65280
  %308 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %307)
  %309 = load i32, i32* @EINVAL, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %5, align 4
  br label %312

311:                                              ; preds = %303, %230, %188, %163, %67, %56
  store i32 0, i32* %5, align 4
  br label %312

312:                                              ; preds = %311, %304, %291, %255, %224, %208, %195, %184, %170, %154, %134, %108, %71, %63, %48, %35
  %313 = load i32, i32* %5, align 4
  ret i32 %313
}

declare dso_local i32* @drm_buffer_pointer_to_dword(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @drm_buffer_unprocessed(i32) #1

declare dso_local i32 @radeon_check_and_fixup_offset(%struct.TYPE_6__*, %struct.drm_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
