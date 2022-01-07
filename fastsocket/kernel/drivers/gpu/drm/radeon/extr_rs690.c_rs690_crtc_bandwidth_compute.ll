; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs690.c_rs690_crtc_bandwidth_compute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs690.c_rs690_crtc_bandwidth_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.radeon_crtc = type { i64, %struct.TYPE_20__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_20__ = type { %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.rs690_watermark = type { i32, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { i8* }

@RMX_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_crtc*, %struct.rs690_watermark*)* @rs690_crtc_bandwidth_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs690_crtc_bandwidth_compute(%struct.radeon_device* %0, %struct.radeon_crtc* %1, %struct.rs690_watermark* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca %struct.rs690_watermark*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca %struct.TYPE_22__, align 8
  %12 = alloca %struct.TYPE_22__, align 8
  %13 = alloca %struct.TYPE_22__, align 8
  %14 = alloca %struct.TYPE_22__, align 8
  %15 = alloca %struct.TYPE_22__, align 8
  %16 = alloca %struct.TYPE_22__, align 8
  %17 = alloca %struct.TYPE_22__, align 8
  %18 = alloca %struct.TYPE_22__, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %5, align 8
  store %struct.rs690_watermark* %2, %struct.rs690_watermark** %6, align 8
  %19 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  store %struct.drm_display_mode* %21, %struct.drm_display_mode** %7, align 8
  %22 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %29 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %28, i32 0, i32 0
  store i32 4, i32* %29, align 8
  br label %567

30:                                               ; preds = %3
  %31 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @dfixed_const(i32 2)
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = call i64 @dfixed_const(i32 2)
  %39 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %40 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  br label %47

42:                                               ; preds = %30
  %43 = call i64 @dfixed_const(i32 1)
  %44 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %45 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @dfixed_const(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = call i64 @dfixed_const(i32 256)
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @dfixed_div(i64 %56, i64 %58)
  %60 = ptrtoint i8* %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %63 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @dfixed_mul(i64 %65, i64 %67)
  %69 = ptrtoint i8* %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i8* @dfixed_ceil(i64 %72)
  %74 = ptrtoint i8* %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @dfixed_const(i32 4)
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %47
  %81 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %82 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %81, i32 0, i32 0
  store i32 4, i32* %82, align 8
  br label %89

83:                                               ; preds = %47
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @dfixed_trunc(i64 %85)
  %87 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %88 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %83, %80
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @dfixed_const(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %93, i64* %94, align 8
  %95 = call i64 @dfixed_const(i32 1000)
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i64 %95, i64* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @dfixed_div(i64 %98, i64 %100)
  %102 = ptrtoint i8* %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @dfixed_div(i64 %105, i64 %107)
  %109 = ptrtoint i8* %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i64 %109, i64* %110, align 8
  %111 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %112 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @RMX_OFF, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %158

116:                                              ; preds = %89
  %117 = call i64 @dfixed_const(i32 2)
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i64 %117, i64* %118, align 8
  %119 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %120 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %122, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %116
  %127 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %128 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i64 %130, i64* %131, align 8
  br label %132

132:                                              ; preds = %126, %116
  %133 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %134 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i8* @dfixed_mul(i64 %136, i64 %138)
  %140 = ptrtoint i8* %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i64 %140, i64* %141, align 8
  %142 = call i64 @dfixed_const(i32 2)
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %142, i64* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i8* @dfixed_div(i64 %145, i64 %147)
  %149 = ptrtoint i8* %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i64 %149, i64* %150, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i8* @dfixed_div(i64 %152, i64 %154)
  %156 = ptrtoint i8* %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  store i64 %156, i64* %157, align 8
  br label %162

158:                                              ; preds = %89
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  store i64 %160, i64* %161, align 8
  br label %162

162:                                              ; preds = %158, %132
  %163 = call i64 @dfixed_const(i32 1)
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %163, i64* %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i8* @dfixed_div(i64 %166, i64 %168)
  %170 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %171 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %170, i32 0, i32 7
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  store i8* %169, i8** %172, align 8
  %173 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %174 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @dfixed_const(i32 %177)
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %178, i64* %179, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i8* @dfixed_mul(i64 %181, i64 %183)
  %185 = ptrtoint i8* %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  store i64 %185, i64* %186, align 8
  %187 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %188 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @dfixed_const(i32 %191)
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %192, i64* %193, align 8
  %194 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %195 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @dfixed_const(i32 %198)
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i64 %199, i64* %200, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i8* @dfixed_mul(i64 %202, i64 %204)
  %206 = ptrtoint i8* %205 to i64
  %207 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %208 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %207, i32 0, i32 6
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 0
  store i64 %206, i64* %209, align 8
  %210 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %211 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i8* @dfixed_div(i64 %213, i64 %215)
  %217 = ptrtoint i8* %216 to i64
  %218 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %219 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %218, i32 0, i32 6
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 0
  store i64 %217, i64* %220, align 8
  %221 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %222 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 1
  %224 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 6
  %227 = bitcast %struct.TYPE_22__* %223 to i8*
  %228 = bitcast %struct.TYPE_22__* %226 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %227, i8* align 8 %228, i64 8, i1 false)
  %229 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %230 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %275

234:                                              ; preds = %162
  %235 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %236 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %241 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp sgt i64 %239, %244
  br i1 %245, label %246, label %262

246:                                              ; preds = %234
  %247 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %248 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 5
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %246
  %254 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %255 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 1
  %257 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %258 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 5
  %260 = bitcast %struct.TYPE_22__* %256 to i8*
  %261 = bitcast %struct.TYPE_22__* %259 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %260, i8* align 8 %261, i64 8, i1 false)
  br label %262

262:                                              ; preds = %253, %246, %234
  %263 = call i64 @dfixed_const(i32 296000000)
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  store i64 %263, i64* %264, align 8
  %265 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %266 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = call i8* @dfixed_div(i64 %269, i64 %271)
  %273 = ptrtoint i8* %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  store i64 %273, i64* %274, align 8
  br label %334

275:                                              ; preds = %162
  %276 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %277 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %282 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp sgt i64 %280, %285
  br i1 %286, label %287, label %303

287:                                              ; preds = %275
  %288 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %289 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %303

294:                                              ; preds = %287
  %295 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %296 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 1
  %298 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %299 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 3
  %301 = bitcast %struct.TYPE_22__* %297 to i8*
  %302 = bitcast %struct.TYPE_22__* %300 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %301, i8* align 8 %302, i64 8, i1 false)
  br label %303

303:                                              ; preds = %294, %287, %275
  %304 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %305 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %310 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = icmp sgt i64 %308, %313
  br i1 %314, label %315, label %331

315:                                              ; preds = %303
  %316 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %317 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %315
  %323 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %324 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 1
  %326 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %327 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 2
  %329 = bitcast %struct.TYPE_22__* %325 to i8*
  %330 = bitcast %struct.TYPE_22__* %328 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %329, i8* align 8 %330, i64 8, i1 false)
  br label %331

331:                                              ; preds = %322, %315, %303
  %332 = call i64 @dfixed_const(i32 5000)
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  store i64 %332, i64* %333, align 8
  br label %334

334:                                              ; preds = %331, %262
  %335 = call i64 @dfixed_const(i32 16)
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %335, i64* %336, align 8
  %337 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %338 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = call i8* @dfixed_mul(i64 %341, i64 %343)
  %345 = ptrtoint i8* %344 to i64
  %346 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %347 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %348, i32 0, i32 0
  store i64 %345, i64* %349, align 8
  %350 = call i64 @dfixed_const(i32 1000)
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %350, i64* %351, align 8
  %352 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %353 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %354, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = call i8* @dfixed_div(i64 %356, i64 %358)
  %360 = ptrtoint i8* %359 to i64
  %361 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %362 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %363, i32 0, i32 0
  store i64 %360, i64* %364, align 8
  %365 = call i64 @dfixed_const(i32 3328)
  %366 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %365, i64* %366, align 8
  %367 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %368 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = call i8* @dfixed_mul(i64 %371, i64 %373)
  %375 = ptrtoint i8* %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  store i64 %375, i64* %376, align 8
  %377 = call i64 @dfixed_const(i32 10)
  %378 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %377, i64* %378, align 8
  %379 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = call i8* @dfixed_div(i64 %380, i64 %382)
  %384 = ptrtoint i8* %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  store i64 %384, i64* %385, align 8
  %386 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %387 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %386, i32 0, i32 5
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = call i32 @dfixed_trunc(i64 %389)
  %391 = icmp sgt i32 %390, 1
  br i1 %391, label %392, label %411

392:                                              ; preds = %334
  %393 = call i64 @dfixed_const(i32 3)
  %394 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %393, i64* %394, align 8
  %395 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = call i8* @dfixed_mul(i64 %396, i64 %398)
  %400 = ptrtoint i8* %399 to i64
  %401 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %402 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %401, i32 0, i32 3
  %403 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %402, i32 0, i32 0
  store i64 %400, i64* %403, align 8
  %404 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %407 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %406, i32 0, i32 3
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = add nsw i64 %409, %405
  store i64 %410, i64* %408, align 8
  br label %430

411:                                              ; preds = %334
  %412 = call i64 @dfixed_const(i32 2)
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %412, i64* %413, align 8
  %414 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = call i8* @dfixed_mul(i64 %415, i64 %417)
  %419 = ptrtoint i8* %418 to i64
  %420 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %421 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %420, i32 0, i32 3
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 0
  store i64 %419, i64* %422, align 8
  %423 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %426 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %425, i32 0, i32 3
  %427 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = add nsw i64 %428, %424
  store i64 %429, i64* %427, align 8
  br label %430

430:                                              ; preds = %411, %392
  %431 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %432 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = add nsw i32 2, %433
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = call i32 @dfixed_trunc(i64 %436)
  %438 = icmp sge i32 %434, %437
  br i1 %438, label %439, label %443

439:                                              ; preds = %430
  %440 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store i64 %441, i64* %442, align 8
  br label %469

443:                                              ; preds = %430
  %444 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %445 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = sub nsw i32 %446, 2
  %448 = call i64 @dfixed_const(i32 %447)
  %449 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store i64 %448, i64* %449, align 8
  %450 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = sub nsw i64 %451, %453
  %455 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store i64 %454, i64* %455, align 8
  %456 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = call i8* @dfixed_mul(i64 %457, i64 %459)
  %461 = ptrtoint i8* %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store i64 %461, i64* %462, align 8
  %463 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = sub nsw i64 %464, %466
  %468 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store i64 %467, i64* %468, align 8
  br label %469

469:                                              ; preds = %443, %439
  %470 = call i64 @dfixed_const(i32 32)
  %471 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %472 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %471, i32 0, i32 4
  %473 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %472, i32 0, i32 0
  store i64 %470, i64* %473, align 8
  %474 = call i64 @dfixed_const(i32 16)
  %475 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %474, i64* %475, align 8
  %476 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %477 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = call i64 @dfixed_const(i32 %480)
  %482 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %483 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %483, i32 0, i32 0
  store i64 %481, i64* %484, align 8
  %485 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %486 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %485, i32 0, i32 2
  %487 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %486, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = call i8* @dfixed_div(i64 %488, i64 %490)
  %492 = ptrtoint i8* %491 to i64
  %493 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %494 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %493, i32 0, i32 2
  %495 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %494, i32 0, i32 0
  store i64 %492, i64* %495, align 8
  %496 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %497 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %496, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = call i8* @dfixed_ceil(i64 %499)
  %501 = ptrtoint i8* %500 to i64
  %502 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %503 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %502, i32 0, i32 2
  %504 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %503, i32 0, i32 0
  store i64 %501, i64* %504, align 8
  %505 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %508 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %507, i32 0, i32 3
  %509 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %508, i32 0, i32 0
  %510 = load i64, i64* %509, align 8
  %511 = sub nsw i64 %506, %510
  %512 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  store i64 %511, i64* %512, align 8
  %513 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = call i8* @dfixed_div(i64 %514, i64 %516)
  %518 = ptrtoint i8* %517 to i64
  %519 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  store i64 %518, i64* %519, align 8
  %520 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %521 = load i64, i64* %520, align 8
  %522 = call i32 @dfixed_trunc(i64 %521)
  %523 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %524 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = icmp sgt i32 %522, %527
  br i1 %528, label %529, label %534

529:                                              ; preds = %469
  %530 = call i64 @dfixed_const(i32 10)
  %531 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %532 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %531, i32 0, i32 1
  %533 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %532, i32 0, i32 0
  store i64 %530, i64* %533, align 8
  br label %567

534:                                              ; preds = %469
  %535 = call i64 @dfixed_const(i32 16)
  %536 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %535, i64* %536, align 8
  %537 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %538 = load i64, i64* %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %540 = load i64, i64* %539, align 8
  %541 = call i8* @dfixed_div(i64 %538, i64 %540)
  %542 = ptrtoint i8* %541 to i64
  %543 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %544 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %543, i32 0, i32 1
  %545 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %544, i32 0, i32 0
  store i64 %542, i64* %545, align 8
  %546 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %547 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %547, i32 0, i32 0
  %549 = load i64, i64* %548, align 8
  %550 = call i8* @dfixed_ceil(i64 %549)
  %551 = ptrtoint i8* %550 to i64
  %552 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %553 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %553, i32 0, i32 0
  store i64 %551, i64* %554, align 8
  %555 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %556 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %555, i32 0, i32 2
  %557 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %556, i32 0, i32 0
  %558 = load i64, i64* %557, align 8
  %559 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %560 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %559, i32 0, i32 1
  %561 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %560, i32 0, i32 0
  %562 = load i64, i64* %561, align 8
  %563 = sub nsw i64 %558, %562
  %564 = load %struct.rs690_watermark*, %struct.rs690_watermark** %6, align 8
  %565 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %564, i32 0, i32 1
  %566 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %565, i32 0, i32 0
  store i64 %563, i64* %566, align 8
  br label %567

567:                                              ; preds = %27, %534, %529
  ret void
}

declare dso_local i64 @dfixed_const(i32) #1

declare dso_local i8* @dfixed_div(i64, i64) #1

declare dso_local i8* @dfixed_mul(i64, i64) #1

declare dso_local i8* @dfixed_ceil(i64) #1

declare dso_local i32 @dfixed_trunc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
