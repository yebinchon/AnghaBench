; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv515.c_rv515_crtc_bandwidth_compute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv515.c_rv515_crtc_bandwidth_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.radeon_crtc = type { i64, %struct.TYPE_17__, %struct.TYPE_20__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.rv515_watermark = type { i32, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_14__, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i8* }

@RMX_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_crtc*, %struct.rv515_watermark*)* @rv515_crtc_bandwidth_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv515_crtc_bandwidth_compute(%struct.radeon_device* %0, %struct.radeon_crtc* %1, %struct.rv515_watermark* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca %struct.rv515_watermark*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca %struct.TYPE_20__, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca %struct.TYPE_20__, align 8
  %16 = alloca %struct.TYPE_20__, align 8
  %17 = alloca %struct.TYPE_20__, align 8
  %18 = alloca %struct.TYPE_20__, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %5, align 8
  store %struct.rv515_watermark* %2, %struct.rv515_watermark** %6, align 8
  %19 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  store %struct.drm_display_mode* %21, %struct.drm_display_mode** %7, align 8
  %22 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %29 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %28, i32 0, i32 0
  store i32 4, i32* %29, align 8
  br label %409

30:                                               ; preds = %3
  %31 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @dfixed_const(i32 2)
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = call i64 @dfixed_const(i32 2)
  %39 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %40 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  br label %47

42:                                               ; preds = %30
  %43 = call i64 @dfixed_const(i32 1)
  %44 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %45 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @dfixed_const(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = call i64 @dfixed_const(i32 256)
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @dfixed_div(i64 %56, i64 %58)
  %60 = ptrtoint i8* %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %63 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @dfixed_mul(i64 %65, i64 %67)
  %69 = ptrtoint i8* %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i8* @dfixed_ceil(i64 %72)
  %74 = ptrtoint i8* %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @dfixed_const(i32 4)
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %47
  %81 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %82 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %81, i32 0, i32 0
  store i32 4, i32* %82, align 8
  br label %89

83:                                               ; preds = %47
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @dfixed_trunc(i64 %85)
  %87 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %88 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %83, %80
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @dfixed_const(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i64 %93, i64* %94, align 8
  %95 = call i64 @dfixed_const(i32 1000)
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i64 %95, i64* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @dfixed_div(i64 %98, i64 %100)
  %102 = ptrtoint i8* %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @dfixed_div(i64 %105, i64 %107)
  %109 = ptrtoint i8* %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 %109, i64* %110, align 8
  %111 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %112 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @RMX_OFF, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %158

116:                                              ; preds = %89
  %117 = call i64 @dfixed_const(i32 2)
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i64 %117, i64* %118, align 8
  %119 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %120 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %122, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %116
  %127 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %128 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i64 %130, i64* %131, align 8
  br label %132

132:                                              ; preds = %126, %116
  %133 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %134 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i8* @dfixed_mul(i64 %136, i64 %138)
  %140 = ptrtoint i8* %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i64 %140, i64* %141, align 8
  %142 = call i64 @dfixed_const(i32 2)
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i64 %142, i64* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i8* @dfixed_div(i64 %145, i64 %147)
  %149 = ptrtoint i8* %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i64 %149, i64* %150, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i8* @dfixed_div(i64 %152, i64 %154)
  %156 = ptrtoint i8* %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  store i64 %156, i64* %157, align 8
  br label %162

158:                                              ; preds = %89
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  store i64 %160, i64* %161, align 8
  br label %162

162:                                              ; preds = %158, %132
  %163 = call i64 @dfixed_const(i32 1)
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i64 %163, i64* %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i8* @dfixed_div(i64 %166, i64 %168)
  %170 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %171 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %170, i32 0, i32 7
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  store i8* %169, i8** %172, align 8
  %173 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %174 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @dfixed_const(i32 %177)
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i64 %178, i64* %179, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i8* @dfixed_mul(i64 %181, i64 %183)
  %185 = ptrtoint i8* %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  store i64 %185, i64* %186, align 8
  %187 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %188 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @dfixed_const(i32 %191)
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i64 %192, i64* %193, align 8
  %194 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %195 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @dfixed_const(i32 %198)
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i64 %199, i64* %200, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i8* @dfixed_mul(i64 %202, i64 %204)
  %206 = ptrtoint i8* %205 to i64
  %207 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %208 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %207, i32 0, i32 6
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 0
  store i64 %206, i64* %209, align 8
  %210 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %211 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i8* @dfixed_div(i64 %213, i64 %215)
  %217 = ptrtoint i8* %216 to i64
  %218 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %219 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %218, i32 0, i32 6
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 0
  store i64 %217, i64* %220, align 8
  %221 = call i64 @dfixed_const(i32 600000)
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i64 %221, i64* %222, align 8
  %223 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %224 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call i8* @dfixed_div(i64 %227, i64 %229)
  %231 = ptrtoint i8* %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  store i64 %231, i64* %232, align 8
  %233 = call i64 @dfixed_const(i32 1000)
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  store i64 %233, i64* %234, align 8
  %235 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %236 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @dfixed_trunc(i64 %238)
  %240 = icmp sgt i32 %239, 1
  br i1 %240, label %241, label %260

241:                                              ; preds = %162
  %242 = call i64 @dfixed_const(i32 3)
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i64 %242, i64* %243, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = call i8* @dfixed_mul(i64 %245, i64 %247)
  %249 = ptrtoint i8* %248 to i64
  %250 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %251 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  store i64 %249, i64* %252, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %256 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, %254
  store i64 %259, i64* %257, align 8
  br label %269

260:                                              ; preds = %162
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %262, %264
  %266 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %267 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  store i64 %265, i64* %268, align 8
  br label %269

269:                                              ; preds = %260, %241
  %270 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %271 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 2, %272
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @dfixed_trunc(i64 %275)
  %277 = icmp sge i32 %273, %276
  br i1 %277, label %278, label %282

278:                                              ; preds = %269
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store i64 %280, i64* %281, align 8
  br label %308

282:                                              ; preds = %269
  %283 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %284 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = sub nsw i32 %285, 2
  %287 = call i64 @dfixed_const(i32 %286)
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store i64 %287, i64* %288, align 8
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = sub nsw i64 %290, %292
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store i64 %293, i64* %294, align 8
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = call i8* @dfixed_mul(i64 %296, i64 %298)
  %300 = ptrtoint i8* %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store i64 %300, i64* %301, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = sub nsw i64 %303, %305
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store i64 %306, i64* %307, align 8
  br label %308

308:                                              ; preds = %282, %278
  %309 = call i64 @dfixed_const(i32 32)
  %310 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %311 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %310, i32 0, i32 4
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  store i64 %309, i64* %312, align 8
  %313 = call i64 @dfixed_const(i32 16)
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i64 %313, i64* %314, align 8
  %315 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %316 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i64 @dfixed_const(i32 %319)
  %321 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %322 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 0
  store i64 %320, i64* %323, align 8
  %324 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %325 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = call i8* @dfixed_div(i64 %327, i64 %329)
  %331 = ptrtoint i8* %330 to i64
  %332 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %333 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 0
  store i64 %331, i64* %334, align 8
  %335 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %336 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = call i8* @dfixed_ceil(i64 %338)
  %340 = ptrtoint i8* %339 to i64
  %341 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %342 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 0
  store i64 %340, i64* %343, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %347 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = sub nsw i64 %345, %349
  %351 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  store i64 %350, i64* %351, align 8
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = call i8* @dfixed_div(i64 %353, i64 %355)
  %357 = ptrtoint i8* %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  store i64 %357, i64* %358, align 8
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = call i32 @dfixed_trunc(i64 %360)
  %362 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %363 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = icmp sgt i32 %361, %366
  br i1 %367, label %368, label %376

368:                                              ; preds = %308
  %369 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %370 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %374 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %374, i32 0, i32 0
  store i64 %372, i64* %375, align 8
  br label %409

376:                                              ; preds = %308
  %377 = call i64 @dfixed_const(i32 16)
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i64 %377, i64* %378, align 8
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = call i8* @dfixed_div(i64 %380, i64 %382)
  %384 = ptrtoint i8* %383 to i64
  %385 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %386 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %386, i32 0, i32 0
  store i64 %384, i64* %387, align 8
  %388 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %389 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = call i8* @dfixed_ceil(i64 %391)
  %393 = ptrtoint i8* %392 to i64
  %394 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %395 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 0
  store i64 %393, i64* %396, align 8
  %397 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %398 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %402 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = sub nsw i64 %400, %404
  %406 = load %struct.rv515_watermark*, %struct.rv515_watermark** %6, align 8
  %407 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %407, i32 0, i32 0
  store i64 %405, i64* %408, align 8
  br label %409

409:                                              ; preds = %27, %376, %368
  ret void
}

declare dso_local i64 @dfixed_const(i32) #1

declare dso_local i8* @dfixed_div(i64, i64) #1

declare dso_local i8* @dfixed_mul(i64, i64) #1

declare dso_local i8* @dfixed_ceil(i64) #1

declare dso_local i32 @dfixed_trunc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
