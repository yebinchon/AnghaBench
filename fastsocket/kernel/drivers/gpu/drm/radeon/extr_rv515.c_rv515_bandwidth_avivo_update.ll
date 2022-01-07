; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv515.c_rv515_bandwidth_avivo_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv515.c_rv515_bandwidth_avivo_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_17__** }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.drm_display_mode, i64 }
%struct.drm_display_mode = type { i32 }
%struct.rv515_watermark = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@MODE_PRIORITY_OFF = common dso_local global i32 0, align 4
@LB_MAX_REQ_OUTSTANDING = common dso_local global i32 0, align 4
@MODE_PRIORITY_ALWAYS_ON = common dso_local global i32 0, align 4
@D1MODE_PRIORITY_A_CNT = common dso_local global i32 0, align 4
@D1MODE_PRIORITY_B_CNT = common dso_local global i32 0, align 4
@D2MODE_PRIORITY_A_CNT = common dso_local global i32 0, align 4
@D2MODE_PRIORITY_B_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv515_bandwidth_avivo_update(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.rv515_watermark, align 8
  %6 = alloca %struct.rv515_watermark, align 8
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
  %15 = load i32, i32* @MODE_PRIORITY_OFF, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @MODE_PRIORITY_OFF, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %20, i64 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %31, i64 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  store %struct.drm_display_mode* %35, %struct.drm_display_mode** %3, align 8
  br label %36

36:                                               ; preds = %27, %1
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %40, i64 1
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %36
  %48 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %51, i64 1
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store %struct.drm_display_mode* %55, %struct.drm_display_mode** %4, align 8
  br label %56

56:                                               ; preds = %47, %36
  %57 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %60 = call i32 @rs690_line_buffer_adjust(%struct.radeon_device* %57, %struct.drm_display_mode* %58, %struct.drm_display_mode* %59)
  %61 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %62 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %65, i64 0
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = call i32 @rv515_crtc_bandwidth_compute(%struct.radeon_device* %61, %struct.TYPE_17__* %67, %struct.rv515_watermark* %5)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %73, i64 1
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = call i32 @rv515_crtc_bandwidth_compute(%struct.radeon_device* %69, %struct.TYPE_17__* %75, %struct.rv515_watermark* %6)
  %77 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %7, align 4
  %79 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 16
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* @LB_MAX_REQ_OUTSTANDING, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @WREG32(i32 %84, i32 %85)
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %88 = icmp ne %struct.drm_display_mode* %87, null
  br i1 %88, label %89, label %364

89:                                               ; preds = %56
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %91 = icmp ne %struct.drm_display_mode* %90, null
  br i1 %91, label %92, label %364

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @dfixed_trunc(i64 %95)
  %97 = icmp sgt i32 %96, 64
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 8
  %100 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i8* @dfixed_div(i64 %102, i64 %104)
  %106 = ptrtoint i8* %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %106, i64* %107, align 8
  br label %113

108:                                              ; preds = %92
  %109 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %111, i64* %112, align 8
  br label %113

113:                                              ; preds = %108, %98
  %114 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @dfixed_trunc(i64 %116)
  %118 = icmp sgt i32 %117, 64
  br i1 %118, label %119, label %129

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 8
  %121 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i8* @dfixed_div(i64 %123, i64 %125)
  %127 = ptrtoint i8* %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %127, i64* %128, align 8
  br label %134

129:                                              ; preds = %113
  %130 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %132, i64* %133, align 8
  br label %134

134:                                              ; preds = %129, %119
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, %136
  store i64 %139, i64* %137, align 8
  %140 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i8* @dfixed_div(i64 %142, i64 %144)
  %146 = ptrtoint i8* %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i64 %146, i64* %147, align 8
  %148 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %150, %152
  br i1 %153, label %154, label %195

154:                                              ; preds = %134
  %155 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %157, %159
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %160, i64* %161, align 8
  %162 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i8* @dfixed_mul(i64 %164, i64 %166)
  %168 = ptrtoint i8* %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %168, i64* %169, align 8
  %170 = call i8* @dfixed_const(i32 16)
  %171 = ptrtoint i8* %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %171, i64* %172, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i8* @dfixed_div(i64 %174, i64 %176)
  %178 = ptrtoint i8* %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %178, i64* %179, align 8
  %180 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 4
  %181 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i8* @dfixed_mul(i64 %183, i64 %185)
  %187 = ptrtoint i8* %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %187, i64* %188, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %190, %192
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %193, i64* %194, align 8
  br label %215

195:                                              ; preds = %134
  %196 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 4
  %197 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i8* @dfixed_mul(i64 %199, i64 %201)
  %203 = ptrtoint i8* %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %203, i64* %204, align 8
  %205 = call i8* @dfixed_const(i32 16000)
  %206 = ptrtoint i8* %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %206, i64* %207, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = call i8* @dfixed_div(i64 %209, i64 %211)
  %213 = ptrtoint i8* %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %213, i64* %214, align 8
  br label %215

215:                                              ; preds = %195, %154
  %216 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp sgt i64 %218, %220
  br i1 %221, label %222, label %263

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = sub nsw i64 %225, %227
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %228, i64* %229, align 8
  %230 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = call i8* @dfixed_mul(i64 %232, i64 %234)
  %236 = ptrtoint i8* %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %236, i64* %237, align 8
  %238 = call i8* @dfixed_const(i32 16)
  %239 = ptrtoint i8* %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %239, i64* %240, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = call i8* @dfixed_div(i64 %242, i64 %244)
  %246 = ptrtoint i8* %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %246, i64* %247, align 8
  %248 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 4
  %249 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i8* @dfixed_mul(i64 %251, i64 %253)
  %255 = ptrtoint i8* %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %255, i64* %256, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %258, %260
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %261, i64* %262, align 8
  br label %283

263:                                              ; preds = %215
  %264 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 4
  %265 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = call i8* @dfixed_mul(i64 %267, i64 %269)
  %271 = ptrtoint i8* %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %271, i64* %272, align 8
  %273 = call i8* @dfixed_const(i32 16000)
  %274 = ptrtoint i8* %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %274, i64* %275, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = call i8* @dfixed_div(i64 %277, i64 %279)
  %281 = ptrtoint i8* %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %281, i64* %282, align 8
  br label %283

283:                                              ; preds = %263, %222
  %284 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp sgt i64 %286, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %283
  %291 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %293, i64* %294, align 8
  br label %295

295:                                              ; preds = %290, %283
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = call i32 @dfixed_trunc(i64 %297)
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 0, i64* %301, align 8
  br label %302

302:                                              ; preds = %300, %295
  %303 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp sgt i64 %305, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %302
  %310 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %312, i64* %313, align 8
  br label %314

314:                                              ; preds = %309, %302
  %315 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = icmp sgt i64 %317, %319
  br i1 %320, label %321, label %326

321:                                              ; preds = %314
  %322 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %324, i64* %325, align 8
  br label %326

326:                                              ; preds = %321, %314
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = call i32 @dfixed_trunc(i64 %328)
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 0, i64* %332, align 8
  br label %333

333:                                              ; preds = %331, %326
  %334 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = icmp sgt i64 %336, %338
  br i1 %339, label %340, label %345

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %343, i64* %344, align 8
  br label %345

345:                                              ; preds = %340, %333
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = call i32 @dfixed_trunc(i64 %347)
  store i32 %348, i32* %8, align 4
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = call i32 @dfixed_trunc(i64 %350)
  store i32 %351, i32* %9, align 4
  %352 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %353 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp eq i32 %354, 2
  br i1 %355, label %356, label %363

356:                                              ; preds = %345
  %357 = load i32, i32* @MODE_PRIORITY_ALWAYS_ON, align 4
  %358 = load i32, i32* %8, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %8, align 4
  %360 = load i32, i32* @MODE_PRIORITY_ALWAYS_ON, align 4
  %361 = load i32, i32* %9, align 4
  %362 = or i32 %361, %360
  store i32 %362, i32* %9, align 4
  br label %363

363:                                              ; preds = %356, %345
  br label %654

364:                                              ; preds = %89, %56
  %365 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %366 = icmp ne %struct.drm_display_mode* %365, null
  br i1 %366, label %367, label %508

367:                                              ; preds = %364
  %368 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = call i32 @dfixed_trunc(i64 %370)
  %372 = icmp sgt i32 %371, 64
  br i1 %372, label %373, label %383

373:                                              ; preds = %367
  %374 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 8
  %375 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 7
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = call i8* @dfixed_div(i64 %377, i64 %379)
  %381 = ptrtoint i8* %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %381, i64* %382, align 8
  br label %388

383:                                              ; preds = %367
  %384 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 7
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %386, i64* %387, align 8
  br label %388

388:                                              ; preds = %383, %373
  %389 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 6
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = call i8* @dfixed_div(i64 %391, i64 %393)
  %395 = ptrtoint i8* %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i64 %395, i64* %396, align 8
  %397 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = icmp sgt i64 %399, %401
  br i1 %402, label %403, label %444

403:                                              ; preds = %388
  %404 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 3
  %405 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = sub nsw i64 %406, %408
  %410 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %409, i64* %410, align 8
  %411 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 5
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %411, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = call i8* @dfixed_mul(i64 %413, i64 %415)
  %417 = ptrtoint i8* %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %417, i64* %418, align 8
  %419 = call i8* @dfixed_const(i32 16)
  %420 = ptrtoint i8* %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %420, i64* %421, align 8
  %422 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = call i8* @dfixed_div(i64 %423, i64 %425)
  %427 = ptrtoint i8* %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %427, i64* %428, align 8
  %429 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 4
  %430 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 3
  %431 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %429, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %430, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = call i8* @dfixed_mul(i64 %432, i64 %434)
  %436 = ptrtoint i8* %435 to i64
  %437 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %436, i64* %437, align 8
  %438 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = add nsw i64 %439, %441
  %443 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %442, i64* %443, align 8
  br label %464

444:                                              ; preds = %388
  %445 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 4
  %446 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 3
  %447 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %445, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = call i8* @dfixed_mul(i64 %448, i64 %450)
  %452 = ptrtoint i8* %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %452, i64* %453, align 8
  %454 = call i8* @dfixed_const(i32 16)
  %455 = ptrtoint i8* %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %455, i64* %456, align 8
  %457 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = call i8* @dfixed_div(i64 %458, i64 %460)
  %462 = ptrtoint i8* %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %462, i64* %463, align 8
  br label %464

464:                                              ; preds = %444, %403
  %465 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 2
  %466 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %465, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = icmp sgt i64 %467, %469
  br i1 %470, label %471, label %476

471:                                              ; preds = %464
  %472 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 2
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %474, i64* %475, align 8
  br label %476

476:                                              ; preds = %471, %464
  %477 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = call i32 @dfixed_trunc(i64 %478)
  %480 = icmp slt i32 %479, 0
  br i1 %480, label %481, label %483

481:                                              ; preds = %476
  %482 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 0, i64* %482, align 8
  br label %483

483:                                              ; preds = %481, %476
  %484 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = icmp sgt i64 %486, %488
  br i1 %489, label %490, label %495

490:                                              ; preds = %483
  %491 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 1
  %492 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %493, i64* %494, align 8
  br label %495

495:                                              ; preds = %490, %483
  %496 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = call i32 @dfixed_trunc(i64 %497)
  store i32 %498, i32* %8, align 4
  %499 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %500 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = icmp eq i32 %501, 2
  br i1 %502, label %503, label %507

503:                                              ; preds = %495
  %504 = load i32, i32* @MODE_PRIORITY_ALWAYS_ON, align 4
  %505 = load i32, i32* %8, align 4
  %506 = or i32 %505, %504
  store i32 %506, i32* %8, align 4
  br label %507

507:                                              ; preds = %503, %495
  br label %653

508:                                              ; preds = %364
  %509 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %510 = icmp ne %struct.drm_display_mode* %509, null
  br i1 %510, label %511, label %652

511:                                              ; preds = %508
  %512 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 8
  %513 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %512, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = call i32 @dfixed_trunc(i64 %514)
  %516 = icmp sgt i32 %515, 64
  br i1 %516, label %517, label %527

517:                                              ; preds = %511
  %518 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 8
  %519 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 7
  %520 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %518, i32 0, i32 0
  %521 = load i64, i64* %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %519, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = call i8* @dfixed_div(i64 %521, i64 %523)
  %525 = ptrtoint i8* %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %525, i64* %526, align 8
  br label %532

527:                                              ; preds = %511
  %528 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 7
  %529 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %530, i64* %531, align 8
  br label %532

532:                                              ; preds = %527, %517
  %533 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 6
  %534 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %533, i32 0, i32 0
  %535 = load i64, i64* %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %537 = load i64, i64* %536, align 8
  %538 = call i8* @dfixed_div(i64 %535, i64 %537)
  %539 = ptrtoint i8* %538 to i64
  %540 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i64 %539, i64* %540, align 8
  %541 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 3
  %542 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %541, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %545 = load i64, i64* %544, align 8
  %546 = icmp sgt i64 %543, %545
  br i1 %546, label %547, label %588

547:                                              ; preds = %532
  %548 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 3
  %549 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %548, i32 0, i32 0
  %550 = load i64, i64* %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %552 = load i64, i64* %551, align 8
  %553 = sub nsw i64 %550, %552
  %554 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %553, i64* %554, align 8
  %555 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 5
  %556 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %557 = load i64, i64* %556, align 8
  %558 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %555, i32 0, i32 0
  %559 = load i64, i64* %558, align 8
  %560 = call i8* @dfixed_mul(i64 %557, i64 %559)
  %561 = ptrtoint i8* %560 to i64
  %562 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %561, i64* %562, align 8
  %563 = call i8* @dfixed_const(i32 16)
  %564 = ptrtoint i8* %563 to i64
  %565 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %564, i64* %565, align 8
  %566 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %567 = load i64, i64* %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = call i8* @dfixed_div(i64 %567, i64 %569)
  %571 = ptrtoint i8* %570 to i64
  %572 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %571, i64* %572, align 8
  %573 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 4
  %574 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 3
  %575 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %573, i32 0, i32 0
  %576 = load i64, i64* %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %574, i32 0, i32 0
  %578 = load i64, i64* %577, align 8
  %579 = call i8* @dfixed_mul(i64 %576, i64 %578)
  %580 = ptrtoint i8* %579 to i64
  %581 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %580, i64* %581, align 8
  %582 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %583 = load i64, i64* %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %585 = load i64, i64* %584, align 8
  %586 = add nsw i64 %583, %585
  %587 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %586, i64* %587, align 8
  br label %608

588:                                              ; preds = %532
  %589 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 4
  %590 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 3
  %591 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %589, i32 0, i32 0
  %592 = load i64, i64* %591, align 8
  %593 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %590, i32 0, i32 0
  %594 = load i64, i64* %593, align 8
  %595 = call i8* @dfixed_mul(i64 %592, i64 %594)
  %596 = ptrtoint i8* %595 to i64
  %597 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %596, i64* %597, align 8
  %598 = call i8* @dfixed_const(i32 16000)
  %599 = ptrtoint i8* %598 to i64
  %600 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %599, i64* %600, align 8
  %601 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %602 = load i64, i64* %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %604 = load i64, i64* %603, align 8
  %605 = call i8* @dfixed_div(i64 %602, i64 %604)
  %606 = ptrtoint i8* %605 to i64
  %607 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %606, i64* %607, align 8
  br label %608

608:                                              ; preds = %588, %547
  %609 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 2
  %610 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %609, i32 0, i32 0
  %611 = load i64, i64* %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %613 = load i64, i64* %612, align 8
  %614 = icmp sgt i64 %611, %613
  br i1 %614, label %615, label %620

615:                                              ; preds = %608
  %616 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 2
  %617 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %616, i32 0, i32 0
  %618 = load i64, i64* %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %618, i64* %619, align 8
  br label %620

620:                                              ; preds = %615, %608
  %621 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %622 = load i64, i64* %621, align 8
  %623 = call i32 @dfixed_trunc(i64 %622)
  %624 = icmp slt i32 %623, 0
  br i1 %624, label %625, label %627

625:                                              ; preds = %620
  %626 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 0, i64* %626, align 8
  br label %627

627:                                              ; preds = %625, %620
  %628 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 1
  %629 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %628, i32 0, i32 0
  %630 = load i64, i64* %629, align 8
  %631 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %632 = load i64, i64* %631, align 8
  %633 = icmp sgt i64 %630, %632
  br i1 %633, label %634, label %639

634:                                              ; preds = %627
  %635 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %6, i32 0, i32 1
  %636 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %635, i32 0, i32 0
  %637 = load i64, i64* %636, align 8
  %638 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %637, i64* %638, align 8
  br label %639

639:                                              ; preds = %634, %627
  %640 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %641 = load i64, i64* %640, align 8
  %642 = call i32 @dfixed_trunc(i64 %641)
  store i32 %642, i32* %9, align 4
  %643 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %644 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %643, i32 0, i32 0
  %645 = load i32, i32* %644, align 8
  %646 = icmp eq i32 %645, 2
  br i1 %646, label %647, label %651

647:                                              ; preds = %639
  %648 = load i32, i32* @MODE_PRIORITY_ALWAYS_ON, align 4
  %649 = load i32, i32* %9, align 4
  %650 = or i32 %649, %648
  store i32 %650, i32* %9, align 4
  br label %651

651:                                              ; preds = %647, %639
  br label %652

652:                                              ; preds = %651, %508
  br label %653

653:                                              ; preds = %652, %507
  br label %654

654:                                              ; preds = %653, %363
  %655 = load i32, i32* @D1MODE_PRIORITY_A_CNT, align 4
  %656 = load i32, i32* %8, align 4
  %657 = call i32 @WREG32(i32 %655, i32 %656)
  %658 = load i32, i32* @D1MODE_PRIORITY_B_CNT, align 4
  %659 = load i32, i32* %8, align 4
  %660 = call i32 @WREG32(i32 %658, i32 %659)
  %661 = load i32, i32* @D2MODE_PRIORITY_A_CNT, align 4
  %662 = load i32, i32* %9, align 4
  %663 = call i32 @WREG32(i32 %661, i32 %662)
  %664 = load i32, i32* @D2MODE_PRIORITY_B_CNT, align 4
  %665 = load i32, i32* %9, align 4
  %666 = call i32 @WREG32(i32 %664, i32 %665)
  ret void
}

declare dso_local i32 @rs690_line_buffer_adjust(%struct.radeon_device*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @rv515_crtc_bandwidth_compute(%struct.radeon_device*, %struct.TYPE_17__*, %struct.rv515_watermark*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @dfixed_trunc(i64) #1

declare dso_local i8* @dfixed_div(i64, i64) #1

declare dso_local i8* @dfixed_mul(i64, i64) #1

declare dso_local i8* @dfixed_const(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
