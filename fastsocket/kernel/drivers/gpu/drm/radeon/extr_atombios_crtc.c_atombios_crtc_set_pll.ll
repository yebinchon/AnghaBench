; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_set_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll }
%struct.radeon_pll = type { i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_crtc = type { i32, %struct.TYPE_5__, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.radeon_encoder = type { i32, i32 }

@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_AMOUNT_V2_FBDIV_MASK = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_AMOUNT_V2_NFRAC_SHIFT = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_AMOUNT_V2_NFRAC_MASK = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_TYPE_V2_CENTRE_SPREAD = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*)* @atombios_crtc_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_crtc_set_pll(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_encoder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.radeon_pll*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %19 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %18)
  store %struct.radeon_crtc* %19, %struct.radeon_crtc** %5, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %6, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load %struct.radeon_device*, %struct.radeon_device** %24, align 8
  store %struct.radeon_device* %25, %struct.radeon_device** %7, align 8
  %26 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.radeon_encoder* @to_radeon_encoder(i32 %28)
  store %struct.radeon_encoder* %29, %struct.radeon_encoder** %8, align 8
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %33 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @atombios_get_encoder_mode(i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %38 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %49 [
    i32 130, label %40
    i32 129, label %44
    i32 131, label %48
    i32 128, label %48
  ]

40:                                               ; preds = %2
  %41 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store %struct.radeon_pll* %43, %struct.radeon_pll** %14, align 8
  br label %53

44:                                               ; preds = %2
  %45 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store %struct.radeon_pll* %47, %struct.radeon_pll** %14, align 8
  br label %53

48:                                               ; preds = %2, %2
  br label %49

49:                                               ; preds = %2, %48
  %50 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store %struct.radeon_pll* %52, %struct.radeon_pll** %14, align 8
  br label %53

53:                                               ; preds = %49, %44, %40
  %54 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %55 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %58 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %60 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %63 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %65 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %68 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %70 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %53
  %76 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %77 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %78 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @radeon_compute_pll_legacy(%struct.radeon_pll* %76, i32 %79, i32* %9, i32* %11, i32* %12, i32* %10, i32* %13)
  br label %98

81:                                               ; preds = %53
  %82 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %83 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %87 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %88 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @radeon_compute_pll_avivo(%struct.radeon_pll* %86, i32 %89, i32* %9, i32* %11, i32* %12, i32* %10, i32* %13)
  br label %97

91:                                               ; preds = %81
  %92 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %93 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %94 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @radeon_compute_pll_legacy(%struct.radeon_pll* %92, i32 %95, i32* %9, i32* %11, i32* %12, i32* %10, i32* %13)
  br label %97

97:                                               ; preds = %91, %85
  br label %98

98:                                               ; preds = %97, %75
  %99 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %100 = load i32, i32* @ATOM_DISABLE, align 4
  %101 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %102 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %105 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %108 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %107, i32 0, i32 1
  %109 = call i32 @atombios_crtc_program_ss(%struct.radeon_device* %99, i32 %100, i32 %103, i32 %106, %struct.TYPE_5__* %108)
  %110 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %111 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %112 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %115 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %119 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %122 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %129 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %132 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %135 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %134, i32 0, i32 1
  %136 = call i32 @atombios_crtc_program_pll(%struct.drm_crtc* %110, i32 %113, i32 %116, i32 %117, i32 %120, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %130, i64 %133, %struct.TYPE_5__* %135)
  %137 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %138 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %234

141:                                              ; preds = %98
  %142 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %143 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %222

145:                                              ; preds = %141
  %146 = load i32, i32* %11, align 4
  %147 = mul nsw i32 %146, 10
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %147, %148
  %150 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %151 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %149, %153
  %155 = sdiv i32 %154, 10000
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %17, align 4
  %157 = sdiv i32 %156, 10
  %158 = load i32, i32* @ATOM_PPLL_SS_AMOUNT_V2_FBDIV_MASK, align 4
  %159 = and i32 %157, %158
  %160 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %161 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %17, align 4
  %165 = sdiv i32 %164, 10
  %166 = sub nsw i32 %163, %165
  %167 = load i32, i32* @ATOM_PPLL_SS_AMOUNT_V2_NFRAC_SHIFT, align 4
  %168 = shl i32 %166, %167
  %169 = load i32, i32* @ATOM_PPLL_SS_AMOUNT_V2_NFRAC_MASK, align 4
  %170 = and i32 %168, %169
  %171 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %172 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %170
  store i32 %175, i32* %173, align 4
  %176 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %177 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @ATOM_PPLL_SS_TYPE_V2_CENTRE_SPREAD, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %145
  %184 = load i32, i32* %17, align 4
  %185 = mul nsw i32 4, %184
  %186 = load i32, i32* %10, align 4
  %187 = mul nsw i32 %185, %186
  %188 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %189 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %191, 2048
  %193 = mul nsw i32 %187, %192
  %194 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %195 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 3125, %196
  %198 = sdiv i32 %197, 100
  %199 = sdiv i32 %193, %198
  store i32 %199, i32* %16, align 4
  br label %217

200:                                              ; preds = %145
  %201 = load i32, i32* %17, align 4
  %202 = mul nsw i32 2, %201
  %203 = load i32, i32* %10, align 4
  %204 = mul nsw i32 %202, %203
  %205 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %206 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %208, 2048
  %210 = mul nsw i32 %204, %209
  %211 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %212 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 3125, %213
  %215 = sdiv i32 %214, 100
  %216 = sdiv i32 %210, %215
  store i32 %216, i32* %16, align 4
  br label %217

217:                                              ; preds = %200, %183
  %218 = load i32, i32* %16, align 4
  %219 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %220 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 4
  store i32 %218, i32* %221, align 4
  br label %222

222:                                              ; preds = %217, %141
  %223 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %224 = load i32, i32* @ATOM_ENABLE, align 4
  %225 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %226 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %229 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %232 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %231, i32 0, i32 1
  %233 = call i32 @atombios_crtc_program_ss(%struct.radeon_device* %223, i32 %224, i32 %227, i32 %230, %struct.TYPE_5__* %232)
  br label %234

234:                                              ; preds = %222, %98
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i32) #1

declare dso_local i32 @atombios_get_encoder_mode(i32) #1

declare dso_local i32 @radeon_compute_pll_legacy(%struct.radeon_pll*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_compute_pll_avivo(%struct.radeon_pll*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @atombios_crtc_program_ss(%struct.radeon_device*, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @atombios_crtc_program_pll(%struct.drm_crtc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_5__*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
