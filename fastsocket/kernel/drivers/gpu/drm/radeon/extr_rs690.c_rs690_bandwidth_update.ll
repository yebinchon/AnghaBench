; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs690.c_rs690_bandwidth_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs690.c_rs690_bandwidth_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_17__** }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.drm_display_mode, i64 }
%struct.drm_display_mode = type { i32 }
%struct.rs690_watermark = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@CHIP_RS690 = common dso_local global i64 0, align 8
@CHIP_RS740 = common dso_local global i64 0, align 8
@R_000104_MC_INIT_MISC_LAT_TIMER = common dso_local global i32 0, align 4
@C_000104_MC_DISP0R_INIT_LAT = common dso_local global i32 0, align 4
@C_000104_MC_DISP1R_INIT_LAT = common dso_local global i32 0, align 4
@R_006C9C_DCP_CONTROL = common dso_local global i32 0, align 4
@CHIP_RS780 = common dso_local global i64 0, align 8
@CHIP_RS880 = common dso_local global i64 0, align 8
@R_006D58_LB_MAX_REQ_OUTSTANDING = common dso_local global i32 0, align 4
@R_006548_D1MODE_PRIORITY_A_CNT = common dso_local global i32 0, align 4
@R_00654C_D1MODE_PRIORITY_B_CNT = common dso_local global i32 0, align 4
@R_006D48_D2MODE_PRIORITY_A_CNT = common dso_local global i32 0, align 4
@R_006D4C_D2MODE_PRIORITY_B_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs690_bandwidth_update(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.rs690_watermark, align 8
  %6 = alloca %struct.rs690_watermark, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %3, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %4, align 8
  %15 = call i32 @S_006548_D1MODE_PRIORITY_A_OFF(i32 1)
  store i32 %15, i32* %8, align 4
  %16 = call i32 @S_006548_D1MODE_PRIORITY_A_OFF(i32 1)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = call i32 @radeon_update_display_priority(%struct.radeon_device* %17)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %22, i64 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %33, i64 0
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  store %struct.drm_display_mode* %37, %struct.drm_display_mode** %3, align 8
  br label %38

38:                                               ; preds = %29, %1
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %42, i64 1
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %38
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %53, i64 1
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  store %struct.drm_display_mode* %57, %struct.drm_display_mode** %4, align 8
  br label %58

58:                                               ; preds = %49, %38
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %101

63:                                               ; preds = %58
  %64 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CHIP_RS690, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CHIP_RS740, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %69, %63
  %76 = load i32, i32* @R_000104_MC_INIT_MISC_LAT_TIMER, align 4
  %77 = call i32 @RREG32_MC(i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* @C_000104_MC_DISP0R_INIT_LAT, align 4
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* @C_000104_MC_DISP1R_INIT_LAT, align 4
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %85 = icmp ne %struct.drm_display_mode* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = call i32 @S_000104_MC_DISP0R_INIT_LAT(i32 1)
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %86, %75
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %92 = icmp ne %struct.drm_display_mode* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = call i32 @S_000104_MC_DISP1R_INIT_LAT(i32 1)
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i32, i32* @R_000104_MC_INIT_MISC_LAT_TIMER, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @WREG32_MC(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %69, %58
  %102 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %103 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %104 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %105 = call i32 @rs690_line_buffer_adjust(%struct.radeon_device* %102, %struct.drm_display_mode* %103, %struct.drm_display_mode* %104)
  %106 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CHIP_RS690, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %101
  %112 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CHIP_RS740, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111, %101
  %118 = load i32, i32* @R_006C9C_DCP_CONTROL, align 4
  %119 = call i32 @WREG32(i32 %118, i32 0)
  br label %120

120:                                              ; preds = %117, %111
  %121 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CHIP_RS780, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @CHIP_RS880, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %126, %120
  %133 = load i32, i32* @R_006C9C_DCP_CONTROL, align 4
  %134 = call i32 @WREG32(i32 %133, i32 2)
  br label %135

135:                                              ; preds = %132, %126
  %136 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %137 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %140, i64 0
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = call i32 @rs690_crtc_bandwidth_compute(%struct.radeon_device* %136, %struct.TYPE_17__* %142, %struct.rs690_watermark* %5)
  %144 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %145 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %146 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %148, i64 1
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = call i32 @rs690_crtc_bandwidth_compute(%struct.radeon_device* %144, %struct.TYPE_17__* %150, %struct.rs690_watermark* %6)
  %152 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sub nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  %155 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %156, 1
  %158 = shl i32 %157, 16
  %159 = load i32, i32* %7, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* @R_006D58_LB_MAX_REQ_OUTSTANDING, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @WREG32(i32 %161, i32 %162)
  %164 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %165 = icmp ne %struct.drm_display_mode* %164, null
  br i1 %165, label %166, label %441

166:                                              ; preds = %135
  %167 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %168 = icmp ne %struct.drm_display_mode* %167, null
  br i1 %168, label %169, label %441

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @dfixed_trunc(i64 %172)
  %174 = icmp sgt i32 %173, 64
  br i1 %174, label %175, label %185

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 8
  %177 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 7
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i8* @dfixed_mul(i64 %179, i64 %181)
  %183 = ptrtoint i8* %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %183, i64* %184, align 8
  br label %190

185:                                              ; preds = %169
  %186 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 7
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %188, i64* %189, align 8
  br label %190

190:                                              ; preds = %185, %175
  %191 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @dfixed_trunc(i64 %193)
  %195 = icmp sgt i32 %194, 64
  br i1 %195, label %196, label %206

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 8
  %198 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i8* @dfixed_mul(i64 %200, i64 %202)
  %204 = ptrtoint i8* %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %204, i64* %205, align 8
  br label %211

206:                                              ; preds = %190
  %207 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 7
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %209, i64* %210, align 8
  br label %211

211:                                              ; preds = %206, %196
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %215, %213
  store i64 %216, i64* %214, align 8
  %217 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 6
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call i8* @dfixed_div(i64 %219, i64 %221)
  %223 = ptrtoint i8* %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i64 %223, i64* %224, align 8
  %225 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp sgt i64 %227, %229
  br i1 %230, label %231, label %272

231:                                              ; preds = %211
  %232 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = sub nsw i64 %234, %236
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %237, i64* %238, align 8
  %239 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = call i8* @dfixed_mul(i64 %241, i64 %243)
  %245 = ptrtoint i8* %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %245, i64* %246, align 8
  %247 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 4
  %248 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = call i8* @dfixed_mul(i64 %250, i64 %252)
  %254 = ptrtoint i8* %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %254, i64* %255, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = add nsw i64 %257, %259
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %260, i64* %261, align 8
  %262 = call i8* @dfixed_const(i32 16000)
  %263 = ptrtoint i8* %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %263, i64* %264, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = call i8* @dfixed_div(i64 %266, i64 %268)
  %270 = ptrtoint i8* %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %270, i64* %271, align 8
  br label %292

272:                                              ; preds = %211
  %273 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 4
  %274 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = call i8* @dfixed_mul(i64 %276, i64 %278)
  %280 = ptrtoint i8* %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %280, i64* %281, align 8
  %282 = call i8* @dfixed_const(i32 16000)
  %283 = ptrtoint i8* %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %283, i64* %284, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = call i8* @dfixed_div(i64 %286, i64 %288)
  %290 = ptrtoint i8* %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %290, i64* %291, align 8
  br label %292

292:                                              ; preds = %272, %231
  %293 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp sgt i64 %295, %297
  br i1 %298, label %299, label %340

299:                                              ; preds = %292
  %300 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = sub nsw i64 %302, %304
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %305, i64* %306, align 8
  %307 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 5
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = call i8* @dfixed_mul(i64 %309, i64 %311)
  %313 = ptrtoint i8* %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %313, i64* %314, align 8
  %315 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 4
  %316 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = call i8* @dfixed_mul(i64 %318, i64 %320)
  %322 = ptrtoint i8* %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %322, i64* %323, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = add nsw i64 %325, %327
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %328, i64* %329, align 8
  %330 = call i8* @dfixed_const(i32 16000)
  %331 = ptrtoint i8* %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %331, i64* %332, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = call i8* @dfixed_div(i64 %334, i64 %336)
  %338 = ptrtoint i8* %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %338, i64* %339, align 8
  br label %360

340:                                              ; preds = %292
  %341 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 4
  %342 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 3
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = call i8* @dfixed_mul(i64 %344, i64 %346)
  %348 = ptrtoint i8* %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %348, i64* %349, align 8
  %350 = call i8* @dfixed_const(i32 16000)
  %351 = ptrtoint i8* %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %351, i64* %352, align 8
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = call i8* @dfixed_div(i64 %354, i64 %356)
  %358 = ptrtoint i8* %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %358, i64* %359, align 8
  br label %360

360:                                              ; preds = %340, %299
  %361 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = icmp sgt i64 %363, %365
  br i1 %366, label %367, label %372

367:                                              ; preds = %360
  %368 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %370, i64* %371, align 8
  br label %372

372:                                              ; preds = %367, %360
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = call i32 @dfixed_trunc(i64 %374)
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %372
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 0, i64* %378, align 8
  br label %379

379:                                              ; preds = %377, %372
  %380 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = icmp sgt i64 %382, %384
  br i1 %385, label %386, label %391

386:                                              ; preds = %379
  %387 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %389, i64* %390, align 8
  br label %391

391:                                              ; preds = %386, %379
  %392 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 2
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp sgt i64 %394, %396
  br i1 %397, label %398, label %403

398:                                              ; preds = %391
  %399 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %401, i64* %402, align 8
  br label %403

403:                                              ; preds = %398, %391
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = call i32 @dfixed_trunc(i64 %405)
  %407 = icmp slt i32 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %403
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 0, i64* %409, align 8
  br label %410

410:                                              ; preds = %408, %403
  %411 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = icmp sgt i64 %413, %415
  br i1 %416, label %417, label %422

417:                                              ; preds = %410
  %418 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %420, i64* %421, align 8
  br label %422

422:                                              ; preds = %417, %410
  %423 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = call i32 @dfixed_trunc(i64 %424)
  store i32 %425, i32* %8, align 4
  %426 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = call i32 @dfixed_trunc(i64 %427)
  store i32 %428, i32* %9, align 4
  %429 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %430 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = icmp eq i32 %431, 2
  br i1 %432, label %433, label %440

433:                                              ; preds = %422
  %434 = call i32 @S_006548_D1MODE_PRIORITY_A_ALWAYS_ON(i32 1)
  %435 = load i32, i32* %8, align 4
  %436 = or i32 %435, %434
  store i32 %436, i32* %8, align 4
  %437 = call i32 @S_006D48_D2MODE_PRIORITY_A_ALWAYS_ON(i32 1)
  %438 = load i32, i32* %9, align 4
  %439 = or i32 %438, %437
  store i32 %439, i32* %9, align 4
  br label %440

440:                                              ; preds = %433, %422
  br label %731

441:                                              ; preds = %166, %135
  %442 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %443 = icmp ne %struct.drm_display_mode* %442, null
  br i1 %443, label %444, label %585

444:                                              ; preds = %441
  %445 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 8
  %446 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = call i32 @dfixed_trunc(i64 %447)
  %449 = icmp sgt i32 %448, 64
  br i1 %449, label %450, label %460

450:                                              ; preds = %444
  %451 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 8
  %452 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 7
  %453 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %451, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %452, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = call i8* @dfixed_mul(i64 %454, i64 %456)
  %458 = ptrtoint i8* %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %458, i64* %459, align 8
  br label %465

460:                                              ; preds = %444
  %461 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 7
  %462 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %463, i64* %464, align 8
  br label %465

465:                                              ; preds = %460, %450
  %466 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 6
  %467 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = call i8* @dfixed_div(i64 %468, i64 %470)
  %472 = ptrtoint i8* %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i64 %472, i64* %473, align 8
  %474 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 3
  %475 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = icmp sgt i64 %476, %478
  br i1 %479, label %480, label %521

480:                                              ; preds = %465
  %481 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 3
  %482 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = sub nsw i64 %483, %485
  %487 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %486, i64* %487, align 8
  %488 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 5
  %489 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %488, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = call i8* @dfixed_mul(i64 %490, i64 %492)
  %494 = ptrtoint i8* %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %494, i64* %495, align 8
  %496 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 4
  %497 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 3
  %498 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %496, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %497, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = call i8* @dfixed_mul(i64 %499, i64 %501)
  %503 = ptrtoint i8* %502 to i64
  %504 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %503, i64* %504, align 8
  %505 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = add nsw i64 %506, %508
  %510 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %509, i64* %510, align 8
  %511 = call i8* @dfixed_const(i32 16000)
  %512 = ptrtoint i8* %511 to i64
  %513 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %512, i64* %513, align 8
  %514 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %517 = load i64, i64* %516, align 8
  %518 = call i8* @dfixed_div(i64 %515, i64 %517)
  %519 = ptrtoint i8* %518 to i64
  %520 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %519, i64* %520, align 8
  br label %541

521:                                              ; preds = %465
  %522 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 4
  %523 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 3
  %524 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %522, i32 0, i32 0
  %525 = load i64, i64* %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %523, i32 0, i32 0
  %527 = load i64, i64* %526, align 8
  %528 = call i8* @dfixed_mul(i64 %525, i64 %527)
  %529 = ptrtoint i8* %528 to i64
  %530 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %529, i64* %530, align 8
  %531 = call i8* @dfixed_const(i32 16000)
  %532 = ptrtoint i8* %531 to i64
  %533 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %532, i64* %533, align 8
  %534 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %535 = load i64, i64* %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %537 = load i64, i64* %536, align 8
  %538 = call i8* @dfixed_div(i64 %535, i64 %537)
  %539 = ptrtoint i8* %538 to i64
  %540 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %539, i64* %540, align 8
  br label %541

541:                                              ; preds = %521, %480
  %542 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 2
  %543 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %542, i32 0, i32 0
  %544 = load i64, i64* %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %546 = load i64, i64* %545, align 8
  %547 = icmp sgt i64 %544, %546
  br i1 %547, label %548, label %553

548:                                              ; preds = %541
  %549 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 2
  %550 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %549, i32 0, i32 0
  %551 = load i64, i64* %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %551, i64* %552, align 8
  br label %553

553:                                              ; preds = %548, %541
  %554 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %555 = load i64, i64* %554, align 8
  %556 = call i32 @dfixed_trunc(i64 %555)
  %557 = icmp slt i32 %556, 0
  br i1 %557, label %558, label %560

558:                                              ; preds = %553
  %559 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 0, i64* %559, align 8
  br label %560

560:                                              ; preds = %558, %553
  %561 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 1
  %562 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %561, i32 0, i32 0
  %563 = load i64, i64* %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %565 = load i64, i64* %564, align 8
  %566 = icmp sgt i64 %563, %565
  br i1 %566, label %567, label %572

567:                                              ; preds = %560
  %568 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 1
  %569 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %568, i32 0, i32 0
  %570 = load i64, i64* %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %570, i64* %571, align 8
  br label %572

572:                                              ; preds = %567, %560
  %573 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %574 = load i64, i64* %573, align 8
  %575 = call i32 @dfixed_trunc(i64 %574)
  store i32 %575, i32* %8, align 4
  %576 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %577 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  %579 = icmp eq i32 %578, 2
  br i1 %579, label %580, label %584

580:                                              ; preds = %572
  %581 = call i32 @S_006548_D1MODE_PRIORITY_A_ALWAYS_ON(i32 1)
  %582 = load i32, i32* %8, align 4
  %583 = or i32 %582, %581
  store i32 %583, i32* %8, align 4
  br label %584

584:                                              ; preds = %580, %572
  br label %730

585:                                              ; preds = %441
  %586 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %587 = icmp ne %struct.drm_display_mode* %586, null
  br i1 %587, label %588, label %729

588:                                              ; preds = %585
  %589 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 8
  %590 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %589, i32 0, i32 0
  %591 = load i64, i64* %590, align 8
  %592 = call i32 @dfixed_trunc(i64 %591)
  %593 = icmp sgt i32 %592, 64
  br i1 %593, label %594, label %604

594:                                              ; preds = %588
  %595 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 8
  %596 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 7
  %597 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %595, i32 0, i32 0
  %598 = load i64, i64* %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %596, i32 0, i32 0
  %600 = load i64, i64* %599, align 8
  %601 = call i8* @dfixed_mul(i64 %598, i64 %600)
  %602 = ptrtoint i8* %601 to i64
  %603 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %602, i64* %603, align 8
  br label %609

604:                                              ; preds = %588
  %605 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 7
  %606 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %605, i32 0, i32 0
  %607 = load i64, i64* %606, align 8
  %608 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %607, i64* %608, align 8
  br label %609

609:                                              ; preds = %604, %594
  %610 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 6
  %611 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %610, i32 0, i32 0
  %612 = load i64, i64* %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %614 = load i64, i64* %613, align 8
  %615 = call i8* @dfixed_div(i64 %612, i64 %614)
  %616 = ptrtoint i8* %615 to i64
  %617 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i64 %616, i64* %617, align 8
  %618 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 3
  %619 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %618, i32 0, i32 0
  %620 = load i64, i64* %619, align 8
  %621 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %622 = load i64, i64* %621, align 8
  %623 = icmp sgt i64 %620, %622
  br i1 %623, label %624, label %665

624:                                              ; preds = %609
  %625 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 3
  %626 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %625, i32 0, i32 0
  %627 = load i64, i64* %626, align 8
  %628 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %629 = load i64, i64* %628, align 8
  %630 = sub nsw i64 %627, %629
  %631 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %630, i64* %631, align 8
  %632 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 5
  %633 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %634 = load i64, i64* %633, align 8
  %635 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %632, i32 0, i32 0
  %636 = load i64, i64* %635, align 8
  %637 = call i8* @dfixed_mul(i64 %634, i64 %636)
  %638 = ptrtoint i8* %637 to i64
  %639 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %638, i64* %639, align 8
  %640 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 4
  %641 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 3
  %642 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %640, i32 0, i32 0
  %643 = load i64, i64* %642, align 8
  %644 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %641, i32 0, i32 0
  %645 = load i64, i64* %644, align 8
  %646 = call i8* @dfixed_mul(i64 %643, i64 %645)
  %647 = ptrtoint i8* %646 to i64
  %648 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %647, i64* %648, align 8
  %649 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %650 = load i64, i64* %649, align 8
  %651 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %652 = load i64, i64* %651, align 8
  %653 = add nsw i64 %650, %652
  %654 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %653, i64* %654, align 8
  %655 = call i8* @dfixed_const(i32 16000)
  %656 = ptrtoint i8* %655 to i64
  %657 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %656, i64* %657, align 8
  %658 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %659 = load i64, i64* %658, align 8
  %660 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %661 = load i64, i64* %660, align 8
  %662 = call i8* @dfixed_div(i64 %659, i64 %661)
  %663 = ptrtoint i8* %662 to i64
  %664 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %663, i64* %664, align 8
  br label %685

665:                                              ; preds = %609
  %666 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 4
  %667 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 3
  %668 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %666, i32 0, i32 0
  %669 = load i64, i64* %668, align 8
  %670 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %667, i32 0, i32 0
  %671 = load i64, i64* %670, align 8
  %672 = call i8* @dfixed_mul(i64 %669, i64 %671)
  %673 = ptrtoint i8* %672 to i64
  %674 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %673, i64* %674, align 8
  %675 = call i8* @dfixed_const(i32 16000)
  %676 = ptrtoint i8* %675 to i64
  %677 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %676, i64* %677, align 8
  %678 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %679 = load i64, i64* %678, align 8
  %680 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %681 = load i64, i64* %680, align 8
  %682 = call i8* @dfixed_div(i64 %679, i64 %681)
  %683 = ptrtoint i8* %682 to i64
  %684 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %683, i64* %684, align 8
  br label %685

685:                                              ; preds = %665, %624
  %686 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 2
  %687 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %686, i32 0, i32 0
  %688 = load i64, i64* %687, align 8
  %689 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %690 = load i64, i64* %689, align 8
  %691 = icmp sgt i64 %688, %690
  br i1 %691, label %692, label %697

692:                                              ; preds = %685
  %693 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 2
  %694 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %693, i32 0, i32 0
  %695 = load i64, i64* %694, align 8
  %696 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %695, i64* %696, align 8
  br label %697

697:                                              ; preds = %692, %685
  %698 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %699 = load i64, i64* %698, align 8
  %700 = call i32 @dfixed_trunc(i64 %699)
  %701 = icmp slt i32 %700, 0
  br i1 %701, label %702, label %704

702:                                              ; preds = %697
  %703 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 0, i64* %703, align 8
  br label %704

704:                                              ; preds = %702, %697
  %705 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 1
  %706 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %705, i32 0, i32 0
  %707 = load i64, i64* %706, align 8
  %708 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %709 = load i64, i64* %708, align 8
  %710 = icmp sgt i64 %707, %709
  br i1 %710, label %711, label %716

711:                                              ; preds = %704
  %712 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %6, i32 0, i32 1
  %713 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %712, i32 0, i32 0
  %714 = load i64, i64* %713, align 8
  %715 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %714, i64* %715, align 8
  br label %716

716:                                              ; preds = %711, %704
  %717 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %718 = load i64, i64* %717, align 8
  %719 = call i32 @dfixed_trunc(i64 %718)
  store i32 %719, i32* %9, align 4
  %720 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %721 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %720, i32 0, i32 0
  %722 = load i32, i32* %721, align 8
  %723 = icmp eq i32 %722, 2
  br i1 %723, label %724, label %728

724:                                              ; preds = %716
  %725 = call i32 @S_006D48_D2MODE_PRIORITY_A_ALWAYS_ON(i32 1)
  %726 = load i32, i32* %9, align 4
  %727 = or i32 %726, %725
  store i32 %727, i32* %9, align 4
  br label %728

728:                                              ; preds = %724, %716
  br label %729

729:                                              ; preds = %728, %585
  br label %730

730:                                              ; preds = %729, %584
  br label %731

731:                                              ; preds = %730, %440
  %732 = load i32, i32* @R_006548_D1MODE_PRIORITY_A_CNT, align 4
  %733 = load i32, i32* %8, align 4
  %734 = call i32 @WREG32(i32 %732, i32 %733)
  %735 = load i32, i32* @R_00654C_D1MODE_PRIORITY_B_CNT, align 4
  %736 = load i32, i32* %8, align 4
  %737 = call i32 @WREG32(i32 %735, i32 %736)
  %738 = load i32, i32* @R_006D48_D2MODE_PRIORITY_A_CNT, align 4
  %739 = load i32, i32* %9, align 4
  %740 = call i32 @WREG32(i32 %738, i32 %739)
  %741 = load i32, i32* @R_006D4C_D2MODE_PRIORITY_B_CNT, align 4
  %742 = load i32, i32* %9, align 4
  %743 = call i32 @WREG32(i32 %741, i32 %742)
  ret void
}

declare dso_local i32 @S_006548_D1MODE_PRIORITY_A_OFF(i32) #1

declare dso_local i32 @radeon_update_display_priority(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_MC(i32) #1

declare dso_local i32 @S_000104_MC_DISP0R_INIT_LAT(i32) #1

declare dso_local i32 @S_000104_MC_DISP1R_INIT_LAT(i32) #1

declare dso_local i32 @WREG32_MC(i32, i32) #1

declare dso_local i32 @rs690_line_buffer_adjust(%struct.radeon_device*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @rs690_crtc_bandwidth_compute(%struct.radeon_device*, %struct.TYPE_17__*, %struct.rs690_watermark*) #1

declare dso_local i32 @dfixed_trunc(i64) #1

declare dso_local i8* @dfixed_mul(i64, i64) #1

declare dso_local i8* @dfixed_div(i64, i64) #1

declare dso_local i8* @dfixed_const(i32) #1

declare dso_local i32 @S_006548_D1MODE_PRIORITY_A_ALWAYS_ON(i32) #1

declare dso_local i32 @S_006D48_D2MODE_PRIORITY_A_ALWAYS_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
