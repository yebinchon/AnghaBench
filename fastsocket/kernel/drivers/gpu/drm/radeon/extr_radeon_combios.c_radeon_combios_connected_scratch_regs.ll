; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_connected_scratch_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_connected_scratch_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.radeon_connector = type { i32 }
%struct.radeon_encoder = type { i32 }

@RADEON_BIOS_4_SCRATCH = common dso_local global i32 0, align 4
@RADEON_BIOS_5_SCRATCH = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV1_SUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"TV1 connected\0A\00", align 1
@RADEON_TV1_ATTACHED_SVIDEO = common dso_local global i32 0, align 4
@RADEON_TV1_ON = common dso_local global i32 0, align 4
@RADEON_ACC_REQ_TV1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"TV1 disconnected\0A\00", align 1
@RADEON_TV1_ATTACHED_MASK = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD1_SUPPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"LCD1 connected\0A\00", align 1
@RADEON_LCD1_ATTACHED = common dso_local global i32 0, align 4
@RADEON_LCD1_ON = common dso_local global i32 0, align 4
@RADEON_ACC_REQ_LCD1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"LCD1 disconnected\0A\00", align 1
@ATOM_DEVICE_CRT1_SUPPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"CRT1 connected\0A\00", align 1
@RADEON_CRT1_ATTACHED_COLOR = common dso_local global i32 0, align 4
@RADEON_CRT1_ON = common dso_local global i32 0, align 4
@RADEON_ACC_REQ_CRT1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"CRT1 disconnected\0A\00", align 1
@RADEON_CRT1_ATTACHED_MASK = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT2_SUPPORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"CRT2 connected\0A\00", align 1
@RADEON_CRT2_ATTACHED_COLOR = common dso_local global i32 0, align 4
@RADEON_CRT2_ON = common dso_local global i32 0, align 4
@RADEON_ACC_REQ_CRT2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"CRT2 disconnected\0A\00", align 1
@RADEON_CRT2_ATTACHED_MASK = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP1_SUPPORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"DFP1 connected\0A\00", align 1
@RADEON_DFP1_ATTACHED = common dso_local global i32 0, align 4
@RADEON_DFP1_ON = common dso_local global i32 0, align 4
@RADEON_ACC_REQ_DFP1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"DFP1 disconnected\0A\00", align 1
@ATOM_DEVICE_DFP2_SUPPORT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"DFP2 connected\0A\00", align 1
@RADEON_DFP2_ATTACHED = common dso_local global i32 0, align 4
@RADEON_DFP2_ON = common dso_local global i32 0, align 4
@RADEON_ACC_REQ_DFP2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"DFP2 disconnected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_combios_connected_scratch_regs(%struct.drm_connector* %0, %struct.drm_encoder* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_connector*, align 8
  %10 = alloca %struct.radeon_encoder*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %8, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %20 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %19)
  store %struct.radeon_connector* %20, %struct.radeon_connector** %9, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %22 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %21)
  store %struct.radeon_encoder* %22, %struct.radeon_encoder** %10, align 8
  %23 = load i32, i32* @RADEON_BIOS_4_SCRATCH, align 4
  %24 = call i32 @RREG32(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @RADEON_BIOS_5_SCRATCH, align 4
  %26 = call i32 @RREG32(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %28 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %3
  %34 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %35 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @RADEON_TV1_ATTACHED_SVIDEO, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @RADEON_TV1_ON, align 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* @RADEON_ACC_REQ_TV1, align 4
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %12, align 4
  br label %68

54:                                               ; preds = %40
  %55 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @RADEON_TV1_ATTACHED_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* @RADEON_TV1_ON, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* @RADEON_ACC_REQ_TV1, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %54, %43
  br label %69

69:                                               ; preds = %68, %33, %3
  %70 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %71 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %112

76:                                               ; preds = %69
  %77 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %78 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %112

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @RADEON_LCD1_ATTACHED, align 4
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* @RADEON_LCD1_ON, align 4
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* @RADEON_ACC_REQ_LCD1, align 4
  %95 = load i32, i32* %12, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %12, align 4
  br label %111

97:                                               ; preds = %83
  %98 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @RADEON_LCD1_ATTACHED, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %11, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* @RADEON_LCD1_ON, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %12, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* @RADEON_ACC_REQ_LCD1, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %12, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %97, %86
  br label %112

112:                                              ; preds = %111, %76, %69
  %113 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %114 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %155

119:                                              ; preds = %112
  %120 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %121 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %155

126:                                              ; preds = %119
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* @RADEON_CRT1_ATTACHED_COLOR, align 4
  %132 = load i32, i32* %11, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* @RADEON_CRT1_ON, align 4
  %135 = load i32, i32* %12, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* @RADEON_ACC_REQ_CRT1, align 4
  %138 = load i32, i32* %12, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %12, align 4
  br label %154

140:                                              ; preds = %126
  %141 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i32, i32* @RADEON_CRT1_ATTACHED_MASK, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %11, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* @RADEON_CRT1_ON, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %12, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* @RADEON_ACC_REQ_CRT1, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %12, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %12, align 4
  br label %154

154:                                              ; preds = %140, %129
  br label %155

155:                                              ; preds = %154, %119, %112
  %156 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %157 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %198

162:                                              ; preds = %155
  %163 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %164 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %198

169:                                              ; preds = %162
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %174 = load i32, i32* @RADEON_CRT2_ATTACHED_COLOR, align 4
  %175 = load i32, i32* %11, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* @RADEON_CRT2_ON, align 4
  %178 = load i32, i32* %12, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* @RADEON_ACC_REQ_CRT2, align 4
  %181 = load i32, i32* %12, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %12, align 4
  br label %197

183:                                              ; preds = %169
  %184 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %185 = load i32, i32* @RADEON_CRT2_ATTACHED_MASK, align 4
  %186 = xor i32 %185, -1
  %187 = load i32, i32* %11, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* @RADEON_CRT2_ON, align 4
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %12, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* @RADEON_ACC_REQ_CRT2, align 4
  %194 = xor i32 %193, -1
  %195 = load i32, i32* %12, align 4
  %196 = and i32 %195, %194
  store i32 %196, i32* %12, align 4
  br label %197

197:                                              ; preds = %183, %172
  br label %198

198:                                              ; preds = %197, %162, %155
  %199 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %200 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %241

205:                                              ; preds = %198
  %206 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %207 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %241

212:                                              ; preds = %205
  %213 = load i32, i32* %6, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %212
  %216 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %217 = load i32, i32* @RADEON_DFP1_ATTACHED, align 4
  %218 = load i32, i32* %11, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* @RADEON_DFP1_ON, align 4
  %221 = load i32, i32* %12, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %12, align 4
  %223 = load i32, i32* @RADEON_ACC_REQ_DFP1, align 4
  %224 = load i32, i32* %12, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %12, align 4
  br label %240

226:                                              ; preds = %212
  %227 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %228 = load i32, i32* @RADEON_DFP1_ATTACHED, align 4
  %229 = xor i32 %228, -1
  %230 = load i32, i32* %11, align 4
  %231 = and i32 %230, %229
  store i32 %231, i32* %11, align 4
  %232 = load i32, i32* @RADEON_DFP1_ON, align 4
  %233 = xor i32 %232, -1
  %234 = load i32, i32* %12, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %12, align 4
  %236 = load i32, i32* @RADEON_ACC_REQ_DFP1, align 4
  %237 = xor i32 %236, -1
  %238 = load i32, i32* %12, align 4
  %239 = and i32 %238, %237
  store i32 %239, i32* %12, align 4
  br label %240

240:                                              ; preds = %226, %215
  br label %241

241:                                              ; preds = %240, %205, %198
  %242 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %243 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %284

248:                                              ; preds = %241
  %249 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %250 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %284

255:                                              ; preds = %248
  %256 = load i32, i32* %6, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %255
  %259 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %260 = load i32, i32* @RADEON_DFP2_ATTACHED, align 4
  %261 = load i32, i32* %11, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %11, align 4
  %263 = load i32, i32* @RADEON_DFP2_ON, align 4
  %264 = load i32, i32* %12, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %12, align 4
  %266 = load i32, i32* @RADEON_ACC_REQ_DFP2, align 4
  %267 = load i32, i32* %12, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %12, align 4
  br label %283

269:                                              ; preds = %255
  %270 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %271 = load i32, i32* @RADEON_DFP2_ATTACHED, align 4
  %272 = xor i32 %271, -1
  %273 = load i32, i32* %11, align 4
  %274 = and i32 %273, %272
  store i32 %274, i32* %11, align 4
  %275 = load i32, i32* @RADEON_DFP2_ON, align 4
  %276 = xor i32 %275, -1
  %277 = load i32, i32* %12, align 4
  %278 = and i32 %277, %276
  store i32 %278, i32* %12, align 4
  %279 = load i32, i32* @RADEON_ACC_REQ_DFP2, align 4
  %280 = xor i32 %279, -1
  %281 = load i32, i32* %12, align 4
  %282 = and i32 %281, %280
  store i32 %282, i32* %12, align 4
  br label %283

283:                                              ; preds = %269, %258
  br label %284

284:                                              ; preds = %283, %248, %241
  %285 = load i32, i32* @RADEON_BIOS_4_SCRATCH, align 4
  %286 = load i32, i32* %11, align 4
  %287 = call i32 @WREG32(i32 %285, i32 %286)
  %288 = load i32, i32* @RADEON_BIOS_5_SCRATCH, align 4
  %289 = load i32, i32* %12, align 4
  %290 = call i32 @WREG32(i32 %288, i32 %289)
  ret void
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
