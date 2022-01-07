; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_legacy_tv_init_restarts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_legacy_tv_init_restarts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.radeon_pll, %struct.radeon_pll }
%struct.radeon_pll = type { i32 }
%struct.radeon_encoder = type { %struct.TYPE_4__, %struct.radeon_encoder_tv_dac* }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_encoder_tv_dac = type { i64, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, i32, i32, i32, i32 }
%struct.radeon_crtc = type { i32 }
%struct.radeon_tv_mode_constants = type { i32, i32, i32, i32, i64 }

@TV_STD_NTSC = common dso_local global i64 0, align 8
@TV_STD_NTSC_J = common dso_local global i64 0, align 8
@TV_STD_PAL_M = common dso_local global i64 0, align 8
@TV_STD_PAL_60 = common dso_local global i64 0, align 8
@NTSC_TV_VFTOTAL = common dso_local global i32 0, align 4
@PAL_TV_VFTOTAL = common dso_local global i32 0, align 4
@H_POS_UNIT = common dso_local global i32 0, align 4
@hor_timing_NTSC = common dso_local global i64* null, align 8
@H_TABLE_POS1 = common dso_local global i64 0, align 8
@H_TABLE_POS2 = common dso_local global i64 0, align 8
@hor_timing_PAL = common dso_local global i64* null, align 8
@NTSC_TV_LINES_PER_FRAME = common dso_local global i64 0, align 8
@PAL_TV_LINES_PER_FRAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"compute_restarts: def = %u h = %d v = %d, p1 = %04x, p2 = %04x, restart = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"compute_restart: F/H/V=%u,%u,%u\0A\00", align 1
@NTSC_TV_CLOCK_T = common dso_local global i32 0, align 4
@NTSC_TV_ZERO_H_SIZE = common dso_local global i64 0, align 8
@PAL_TV_CLOCK_T = common dso_local global i32 0, align 4
@PAL_TV_ZERO_H_SIZE = common dso_local global i64 0, align 8
@RADEON_H_INC_MASK = common dso_local global i32 0, align 4
@RADEON_H_INC_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"compute_restart: h_size = %d h_inc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*)* @radeon_legacy_tv_init_restarts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_legacy_tv_init_restarts(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_encoder*, align 8
  %7 = alloca %struct.radeon_encoder_tv_dac*, align 8
  %8 = alloca %struct.radeon_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.radeon_tv_mode_constants*, align 8
  %20 = alloca %struct.radeon_pll*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %4, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.radeon_device*, %struct.radeon_device** %25, align 8
  store %struct.radeon_device* %26, %struct.radeon_device** %5, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %28 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %27)
  store %struct.radeon_encoder* %28, %struct.radeon_encoder** %6, align 8
  %29 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %29, i32 0, i32 1
  %31 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %30, align 8
  store %struct.radeon_encoder_tv_dac* %31, %struct.radeon_encoder_tv_dac** %7, align 8
  %32 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %33 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.radeon_crtc* @to_radeon_crtc(i32 %35)
  store %struct.radeon_crtc* %36, %struct.radeon_crtc** %8, align 8
  %37 = load %struct.radeon_crtc*, %struct.radeon_crtc** %8, align 8
  %38 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store %struct.radeon_pll* %44, %struct.radeon_pll** %20, align 8
  br label %49

45:                                               ; preds = %1
  %46 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store %struct.radeon_pll* %48, %struct.radeon_pll** %20, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %51 = call %struct.radeon_tv_mode_constants* @radeon_legacy_tv_get_std_mode(%struct.radeon_encoder* %50, i32* null)
  store %struct.radeon_tv_mode_constants* %51, %struct.radeon_tv_mode_constants** %19, align 8
  %52 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %19, align 8
  %53 = icmp ne %struct.radeon_tv_mode_constants* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %369

55:                                               ; preds = %49
  %56 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %19, align 8
  %57 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %10, align 4
  %59 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %19, align 8
  %60 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %63 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TV_STD_NTSC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %85, label %67

67:                                               ; preds = %55
  %68 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %69 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TV_STD_NTSC_J, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %85, label %73

73:                                               ; preds = %67
  %74 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %75 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TV_STD_PAL_M, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %81 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TV_STD_PAL_60, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79, %73, %67, %55
  %86 = load i32, i32* @NTSC_TV_VFTOTAL, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %91

88:                                               ; preds = %79
  %89 = load i32, i32* @PAL_TV_VFTOTAL, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %93 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @H_POS_UNIT, align 4
  %96 = mul nsw i32 %94, %95
  store i32 %96, i32* %14, align 4
  %97 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %98 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TV_STD_NTSC, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %114, label %102

102:                                              ; preds = %91
  %103 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %104 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TV_STD_NTSC_J, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %110 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @TV_STD_PAL_M, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %108, %102, %91
  %115 = load i32, i32* %14, align 4
  %116 = sub nsw i32 %115, 50
  store i32 %116, i32* %14, align 4
  %117 = load i64*, i64** @hor_timing_NTSC, align 8
  %118 = load i64, i64* @H_TABLE_POS1, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %15, align 8
  %121 = load i64*, i64** @hor_timing_NTSC, align 8
  %122 = load i64, i64* @H_TABLE_POS2, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %16, align 8
  br label %134

125:                                              ; preds = %108
  %126 = load i64*, i64** @hor_timing_PAL, align 8
  %127 = load i64, i64* @H_TABLE_POS1, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %15, align 8
  %130 = load i64*, i64** @hor_timing_PAL, align 8
  %131 = load i64, i64* @H_TABLE_POS2, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %16, align 8
  br label %134

134:                                              ; preds = %125, %114
  %135 = load i64, i64* %15, align 8
  %136 = trunc i64 %135 to i32
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %15, align 8
  %140 = load i64, i64* %16, align 8
  %141 = trunc i64 %140 to i32
  %142 = load i32, i32* %14, align 4
  %143 = sub nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  store i64 %144, i64* %16, align 8
  %145 = load i64, i64* %15, align 8
  %146 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %147 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* @H_TABLE_POS1, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %145, %152
  br i1 %153, label %164, label %154

154:                                              ; preds = %134
  %155 = load i64, i64* %16, align 8
  %156 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %157 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* @H_TABLE_POS2, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %155, %162
  br label %164

164:                                              ; preds = %154, %134
  %165 = phi i1 [ true, %134 ], [ %163, %154 ]
  %166 = zext i1 %165 to i32
  store i32 %166, i32* %18, align 4
  %167 = load i64, i64* %15, align 8
  %168 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %169 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* @H_TABLE_POS1, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  store i64 %167, i64* %173, align 8
  %174 = load i64, i64* %16, align 8
  %175 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %176 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = load i64, i64* @H_TABLE_POS2, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  store i64 %174, i64* %180, align 8
  %181 = load i32, i32* %14, align 4
  %182 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %19, align 8
  %183 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = mul nsw i32 %181, %185
  %187 = sdiv i32 %186, 1000
  store i32 %187, i32* %14, align 4
  %188 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %19, align 8
  %189 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  store i32 %190, i32* %9, align 4
  %191 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %192 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @TV_STD_NTSC, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %214, label %196

196:                                              ; preds = %164
  %197 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %198 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @TV_STD_NTSC_J, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %214, label %202

202:                                              ; preds = %196
  %203 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %204 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @TV_STD_PAL_M, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %214, label %208

208:                                              ; preds = %202
  %209 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %210 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @TV_STD_PAL_60, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %226

214:                                              ; preds = %208, %202, %196, %164
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* %10, align 4
  %217 = mul i32 %215, %216
  %218 = mul nsw i32 %217, 2
  %219 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %220 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %218, %221
  %223 = load i64, i64* @NTSC_TV_LINES_PER_FRAME, align 8
  %224 = trunc i64 %223 to i32
  %225 = sdiv i32 %222, %224
  store i32 %225, i32* %13, align 4
  br label %238

226:                                              ; preds = %208
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* %10, align 4
  %229 = mul i32 %227, %228
  %230 = mul nsw i32 %229, 2
  %231 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %232 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %230, %233
  %235 = load i64, i64* @PAL_TV_LINES_PER_FRAME, align 8
  %236 = trunc i64 %235 to i32
  %237 = sdiv i32 %234, %236
  store i32 %237, i32* %13, align 4
  br label %238

238:                                              ; preds = %226, %214
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %239, %240
  %242 = load i32, i32* %9, align 4
  %243 = sub nsw i32 %242, %241
  store i32 %243, i32* %9, align 4
  %244 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %19, align 8
  %245 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %248 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %252 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load i64, i64* %15, align 8
  %255 = load i64, i64* %16, align 8
  %256 = load i32, i32* %9, align 4
  %257 = call i32 (i8*, i32, i64, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %246, i64 %250, i32 %253, i64 %254, i64 %255, i32 %256)
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* %10, align 4
  %260 = urem i32 %258, %259
  %261 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %262 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  store i32 %260, i32* %263, align 8
  %264 = load i32, i32* %10, align 4
  %265 = load i32, i32* %9, align 4
  %266 = udiv i32 %265, %264
  store i32 %266, i32* %9, align 4
  %267 = load i32, i32* %9, align 4
  %268 = load i32, i32* %11, align 4
  %269 = urem i32 %267, %268
  %270 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %271 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 2
  store i32 %269, i32* %272, align 4
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* %9, align 4
  %275 = udiv i32 %274, %273
  store i32 %275, i32* %9, align 4
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %12, align 4
  %278 = urem i32 %276, %277
  %279 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %280 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %279, i32 0, i32 4
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 3
  store i32 %278, i32* %281, align 8
  %282 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %283 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %287 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = zext i32 %289 to i64
  %291 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %292 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = call i32 (i8*, i32, i64, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %285, i64 %290, i32 %294)
  %296 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %297 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @TV_STD_NTSC, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %313, label %301

301:                                              ; preds = %238
  %302 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %303 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @TV_STD_NTSC_J, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %313, label %307

307:                                              ; preds = %301
  %308 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %309 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @TV_STD_PAL_M, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %330

313:                                              ; preds = %307, %301, %238
  %314 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %19, align 8
  %315 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = mul nsw i32 %316, 4096
  %318 = load i32, i32* @NTSC_TV_CLOCK_T, align 4
  %319 = mul nsw i32 %317, %318
  %320 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %321 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 8
  %323 = load i64, i64* @NTSC_TV_ZERO_H_SIZE, align 8
  %324 = trunc i64 %323 to i32
  %325 = sext i32 %324 to i64
  %326 = trunc i64 %325 to i32
  %327 = mul nsw i32 %322, %326
  %328 = sdiv i32 %319, %327
  %329 = sext i32 %328 to i64
  store i64 %329, i64* %17, align 8
  br label %347

330:                                              ; preds = %307
  %331 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %19, align 8
  %332 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = mul nsw i32 %333, 4096
  %335 = load i32, i32* @PAL_TV_CLOCK_T, align 4
  %336 = mul nsw i32 %334, %335
  %337 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %338 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 8
  %340 = load i64, i64* @PAL_TV_ZERO_H_SIZE, align 8
  %341 = trunc i64 %340 to i32
  %342 = sext i32 %341 to i64
  %343 = trunc i64 %342 to i32
  %344 = mul nsw i32 %339, %343
  %345 = sdiv i32 %336, %344
  %346 = sext i32 %345 to i64
  store i64 %346, i64* %17, align 8
  br label %347

347:                                              ; preds = %330, %313
  %348 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %349 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %348, i32 0, i32 4
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @RADEON_H_INC_MASK, align 4
  %353 = xor i32 %352, -1
  %354 = and i32 %351, %353
  %355 = load i64, i64* %17, align 8
  %356 = trunc i64 %355 to i32
  %357 = load i32, i32* @RADEON_H_INC_SHIFT, align 4
  %358 = shl i32 %356, %357
  %359 = or i32 %354, %358
  %360 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %361 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %360, i32 0, i32 4
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 4
  store i32 %359, i32* %362, align 4
  %363 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %7, align 8
  %364 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 8
  %366 = load i64, i64* %17, align 8
  %367 = call i32 (i8*, i32, i64, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %365, i64 %366)
  %368 = load i32, i32* %18, align 4
  store i32 %368, i32* %2, align 4
  br label %369

369:                                              ; preds = %347, %54
  %370 = load i32, i32* %2, align 4
  ret i32 %370
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i32) #1

declare dso_local %struct.radeon_tv_mode_constants* @radeon_legacy_tv_get_std_mode(%struct.radeon_encoder*, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
