; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_adjust_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_adjust_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_crtc = type { i32, i32, i64, %struct.TYPE_12__, i64, %struct.drm_encoder* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.drm_encoder = type { i64 }
%struct.radeon_encoder = type { i32, i64, i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i32 }
%union.adjust_pixel_clock = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i64, i32, i64, i32, i8* }
%struct.TYPE_7__ = type { i64, i32, i8*, i32 }

@CHIP_RS600 = common dso_local global i64 0, align 8
@CHIP_RS690 = common dso_local global i64 0, align 8
@CHIP_RS740 = common dso_local global i64 0, align 8
@RADEON_PLL_PREFER_CLOSEST_LOWER = common dso_local global i32 0, align 4
@RADEON_PLL_PREFER_HIGH_FB_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_PREFER_LOW_REF_DIV = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i64 0, align 8
@RADEON_PLL_PREFER_MINM_OVER_MAXP = common dso_local global i32 0, align 4
@RADEON_PLL_USE_FRAC_FB_DIV = common dso_local global i32 0, align 4
@CHIP_RS780 = common dso_local global i64 0, align 8
@CHIP_RS880 = common dso_local global i64 0, align 8
@RADEON_PLL_LEGACY = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@RADEON_PLL_USE_REF_DIV = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1 = common dso_local global i64 0, align 8
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@RADEON_PLL_IS_LCD = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DAC = common dso_local global i64 0, align 8
@RADEON_PLL_NO_ODD_POST_DIV = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_LVDS = common dso_local global i64 0, align 8
@COMMAND = common dso_local global i32 0, align 4
@AdjustDisplayPll = common dso_local global i32 0, align 4
@ADJUST_DISPLAY_CONFIG_SS_ENABLE = common dso_local global i32 0, align 4
@DISPPLL_CONFIG_SS_ENABLE = common dso_local global i32 0, align 4
@DISPPLL_CONFIG_COHERENT_MODE = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_HDMI = common dso_local global i32 0, align 4
@DISPPLL_CONFIG_DUAL_LINK = common dso_local global i32 0, align 4
@RADEON_PLL_USE_POST_DIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown table version %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*)* @atombios_adjust_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atombios_adjust_pll(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.radeon_crtc*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.radeon_encoder*, align 8
  %11 = alloca %struct.drm_connector*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.radeon_connector*, align 8
  %18 = alloca %struct.radeon_connector_atom_dig*, align 8
  %19 = alloca %union.adjust_pixel_clock, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.radeon_encoder_atom_dig*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %25 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %24)
  store %struct.radeon_crtc* %25, %struct.radeon_crtc** %6, align 8
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %26, i32 0, i32 0
  %28 = load %struct.drm_device*, %struct.drm_device** %27, align 8
  store %struct.drm_device* %28, %struct.drm_device** %7, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load %struct.radeon_device*, %struct.radeon_device** %30, align 8
  store %struct.radeon_device* %31, %struct.radeon_device** %8, align 8
  %32 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %33 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %32, i32 0, i32 5
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %33, align 8
  store %struct.drm_encoder* %34, %struct.drm_encoder** %9, align 8
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %36 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %35)
  store %struct.radeon_encoder* %36, %struct.radeon_encoder** %10, align 8
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %38 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %37)
  store %struct.drm_connector* %38, %struct.drm_connector** %11, align 8
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %43 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  %47 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %48 = call i32 @radeon_get_monitor_bpc(%struct.drm_connector* %47)
  store i32 %48, i32* %15, align 4
  %49 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %49, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %55 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %57 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %164

59:                                               ; preds = %2
  %60 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CHIP_RS600, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CHIP_RS690, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CHIP_RS740, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71, %65, %59
  %78 = load i32, i32* @RADEON_PLL_PREFER_CLOSEST_LOWER, align 4
  %79 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %80 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %85 = call i64 @ASIC_IS_DCE32(%struct.radeon_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %89 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 200000
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32, i32* @RADEON_PLL_PREFER_HIGH_FB_DIV, align 4
  %94 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %95 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %104

98:                                               ; preds = %87, %83
  %99 = load i32, i32* @RADEON_PLL_PREFER_LOW_REF_DIV, align 4
  %100 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %101 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %92
  %105 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CHIP_RV770, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i32, i32* @RADEON_PLL_PREFER_MINM_OVER_MAXP, align 4
  %112 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %113 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %104
  %117 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %118 = call i64 @ASIC_IS_DCE41(%struct.radeon_device* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %122 = call i64 @ASIC_IS_DCE61(%struct.radeon_device* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %120, %116
  %125 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %126 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %127 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %120
  %131 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CHIP_RS780, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @CHIP_RS880, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %136, %130
  %143 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %144 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %145 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %142, %136
  %149 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %150 = call i64 @ASIC_IS_DCE32(%struct.radeon_device* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %148
  %153 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %154 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %155, 165000
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %159 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %160 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %157, %152, %148
  br label %187

164:                                              ; preds = %2
  %165 = load i32, i32* @RADEON_PLL_LEGACY, align 4
  %166 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %167 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %171 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %172, 200000
  br i1 %173, label %174, label %180

174:                                              ; preds = %164
  %175 = load i32, i32* @RADEON_PLL_PREFER_HIGH_FB_DIV, align 4
  %176 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %177 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %186

180:                                              ; preds = %164
  %181 = load i32, i32* @RADEON_PLL_PREFER_LOW_REF_DIV, align 4
  %182 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %183 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %180, %174
  br label %187

187:                                              ; preds = %186, %163
  %188 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %189 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %192 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %193 = or i32 %191, %192
  %194 = and i32 %190, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %187
  %197 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %198 = call i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %197)
  %199 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %214

201:                                              ; preds = %196, %187
  %202 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %203 = icmp ne %struct.drm_connector* %202, null
  br i1 %203, label %204, label %213

204:                                              ; preds = %201
  %205 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %206 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %205)
  store %struct.radeon_connector* %206, %struct.radeon_connector** %17, align 8
  %207 = load %struct.radeon_connector*, %struct.radeon_connector** %17, align 8
  %208 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %207, i32 0, i32 0
  %209 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %208, align 8
  store %struct.radeon_connector_atom_dig* %209, %struct.radeon_connector_atom_dig** %18, align 8
  %210 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %18, align 8
  %211 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %14, align 4
  br label %213

213:                                              ; preds = %204, %201
  br label %214

214:                                              ; preds = %213, %196
  %215 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %216 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %256

221:                                              ; preds = %214
  %222 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %223 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %255

226:                                              ; preds = %221
  %227 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %228 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %254

232:                                              ; preds = %226
  %233 = load i32, i32* @RADEON_PLL_USE_REF_DIV, align 4
  %234 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %235 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 4
  %238 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %239 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %243 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %242, i32 0, i32 2
  store i64 %241, i64* %243, align 8
  %244 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %245 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %232
  %248 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %249 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %250 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %247, %232
  br label %254

254:                                              ; preds = %253, %226
  br label %255

255:                                              ; preds = %254, %221
  br label %256

256:                                              ; preds = %255, %214
  %257 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %258 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %298

260:                                              ; preds = %256
  %261 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %262 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %260
  %267 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %268 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = mul nsw i32 %269, 2
  store i32 %270, i32* %12, align 4
  br label %271

271:                                              ; preds = %266, %260
  %272 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %273 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %271
  %279 = load i32, i32* @RADEON_PLL_PREFER_CLOSEST_LOWER, align 4
  %280 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %281 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %278, %271
  %285 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %286 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %284
  %292 = load i32, i32* @RADEON_PLL_IS_LCD, align 4
  %293 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %294 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 4
  br label %297

297:                                              ; preds = %291, %284
  br label %323

298:                                              ; preds = %256
  %299 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %300 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @DRM_MODE_ENCODER_DAC, align 8
  %303 = icmp ne i64 %301, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %298
  %305 = load i32, i32* @RADEON_PLL_NO_ODD_POST_DIV, align 4
  %306 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %307 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %304, %298
  %311 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %312 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @DRM_MODE_ENCODER_LVDS, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %322

316:                                              ; preds = %310
  %317 = load i32, i32* @RADEON_PLL_USE_REF_DIV, align 4
  %318 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %319 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 4
  br label %322

322:                                              ; preds = %316, %310
  br label %323

323:                                              ; preds = %322, %297
  %324 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %325 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %583

327:                                              ; preds = %323
  %328 = load i32, i32* @COMMAND, align 4
  %329 = load i32, i32* @AdjustDisplayPll, align 4
  %330 = call i32 @GetIndexIntoMasterTable(i32 %328, i32 %329)
  store i32 %330, i32* %22, align 4
  %331 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %332 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* %22, align 4
  %336 = call i32 @atom_parse_cmd_header(i32 %334, i32 %335, i32* %20, i32* %21)
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %340, label %338

338:                                              ; preds = %327
  %339 = load i32, i32* %12, align 4
  store i32 %339, i32* %3, align 4
  br label %585

340:                                              ; preds = %327
  %341 = call i32 @memset(%union.adjust_pixel_clock* %19, i32 0, i32 64)
  %342 = load i32, i32* %20, align 4
  switch i32 %342, label %577 [
    i32 1, label %343
  ]

343:                                              ; preds = %340
  %344 = load i32, i32* %21, align 4
  switch i32 %344, label %571 [
    i32 1, label %345
    i32 2, label %345
    i32 3, label %390
  ]

345:                                              ; preds = %343, %343
  %346 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %347 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = sdiv i32 %348, 10
  %350 = call i8* @cpu_to_le16(i32 %349)
  %351 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_7__*
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 2
  store i8* %350, i8** %352, align 8
  %353 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %354 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_7__*
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 0
  store i64 %355, i64* %357, align 8
  %358 = load i32, i32* %13, align 4
  %359 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_7__*
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 1
  store i32 %358, i32* %360, align 8
  %361 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %362 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %361, i32 0, i32 4
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %377

365:                                              ; preds = %345
  %366 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %367 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %377

371:                                              ; preds = %365
  %372 = load i32, i32* @ADJUST_DISPLAY_CONFIG_SS_ENABLE, align 4
  %373 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_7__*
  %374 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 8
  %376 = or i32 %375, %372
  store i32 %376, i32* %374, align 8
  br label %377

377:                                              ; preds = %371, %365, %345
  %378 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %379 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* %22, align 4
  %383 = bitcast %union.adjust_pixel_clock* %19 to i32*
  %384 = call i32 @atom_execute_table(i32 %381, i32 %382, i32* %383)
  %385 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_7__*
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 2
  %387 = load i8*, i8** %386, align 8
  %388 = call i32 @le16_to_cpu(i8* %387)
  %389 = mul nsw i32 %388, 10
  store i32 %389, i32* %12, align 4
  br label %576

390:                                              ; preds = %343
  %391 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %392 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = sdiv i32 %393, 10
  %395 = call i8* @cpu_to_le16(i32 %394)
  %396 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 4
  store i8* %395, i8** %398, align 8
  %399 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %400 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i32 0, i32 0
  store i64 %401, i64* %404, align 8
  %405 = load i32, i32* %13, align 4
  %406 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 1
  store i32 %405, i32* %408, align 8
  %409 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 3
  store i32 0, i32* %411, align 8
  %412 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %413 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %412, i32 0, i32 4
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %429

416:                                              ; preds = %390
  %417 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %418 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %417, i32 0, i32 3
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %429

422:                                              ; preds = %416
  %423 = load i32, i32* @DISPPLL_CONFIG_SS_ENABLE, align 4
  %424 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %425 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 8
  %428 = or i32 %427, %423
  store i32 %428, i32* %426, align 8
  br label %429

429:                                              ; preds = %422, %416, %390
  %430 = load i32, i32* %13, align 4
  %431 = call i32 @ENCODER_MODE_IS_DP(i32 %430)
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %446

433:                                              ; preds = %429
  %434 = load i32, i32* @DISPPLL_CONFIG_COHERENT_MODE, align 4
  %435 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 8
  %439 = or i32 %438, %434
  store i32 %439, i32* %437, align 8
  %440 = load i32, i32* %14, align 4
  %441 = sdiv i32 %440, 10
  %442 = call i8* @cpu_to_le16(i32 %441)
  %443 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i32 0, i32 4
  store i8* %442, i8** %445, align 8
  br label %496

446:                                              ; preds = %429
  %447 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %448 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %495

453:                                              ; preds = %446
  %454 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %455 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %454, i32 0, i32 3
  %456 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %455, align 8
  store %struct.radeon_encoder_atom_dig* %456, %struct.radeon_encoder_atom_dig** %23, align 8
  %457 = load i32, i32* %13, align 4
  %458 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %459 = icmp eq i32 %457, %458
  br i1 %459, label %460, label %472

460:                                              ; preds = %453
  %461 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %462 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* %15, align 4
  %465 = mul nsw i32 %463, %464
  %466 = sdiv i32 %465, 8
  %467 = sdiv i32 %466, 10
  %468 = call i8* @cpu_to_le16(i32 %467)
  %469 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %470 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %470, i32 0, i32 4
  store i8* %468, i8** %471, align 8
  br label %472

472:                                              ; preds = %460, %453
  %473 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %23, align 8
  %474 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %484

477:                                              ; preds = %472
  %478 = load i32, i32* @DISPPLL_CONFIG_COHERENT_MODE, align 4
  %479 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %480 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %479, i32 0, i32 1
  %481 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %480, i32 0, i32 3
  %482 = load i32, i32* %481, align 8
  %483 = or i32 %482, %478
  store i32 %483, i32* %481, align 8
  br label %484

484:                                              ; preds = %477, %472
  %485 = load i32, i32* %16, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %494

487:                                              ; preds = %484
  %488 = load i32, i32* @DISPPLL_CONFIG_DUAL_LINK, align 4
  %489 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %490 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %490, i32 0, i32 3
  %492 = load i32, i32* %491, align 8
  %493 = or i32 %492, %488
  store i32 %493, i32* %491, align 8
  br label %494

494:                                              ; preds = %487, %484
  br label %495

495:                                              ; preds = %494, %446
  br label %496

496:                                              ; preds = %495, %433
  %497 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %498 = call i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %497)
  %499 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %500 = icmp ne i64 %498, %499
  br i1 %500, label %501, label %507

501:                                              ; preds = %496
  %502 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %503 = call i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %502)
  %504 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %505 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %505, i32 0, i32 2
  store i64 %503, i64* %506, align 8
  br label %511

507:                                              ; preds = %496
  %508 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %509 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %509, i32 0, i32 2
  store i64 0, i64* %510, align 8
  br label %511

511:                                              ; preds = %507, %501
  %512 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %513 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = load i32, i32* %22, align 4
  %517 = bitcast %union.adjust_pixel_clock* %19 to i32*
  %518 = call i32 @atom_execute_table(i32 %515, i32 %516, i32* %517)
  %519 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %520 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %520, i32 0, i32 2
  %522 = load i32, i32* %521, align 8
  %523 = call i32 @le32_to_cpu(i32 %522)
  %524 = mul nsw i32 %523, 10
  store i32 %524, i32* %12, align 4
  %525 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %526 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %526, i32 0, i32 1
  %528 = load i64, i64* %527, align 8
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %547

530:                                              ; preds = %511
  %531 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %532 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %533 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 4
  %535 = or i32 %534, %531
  store i32 %535, i32* %533, align 4
  %536 = load i32, i32* @RADEON_PLL_USE_REF_DIV, align 4
  %537 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %538 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 4
  %540 = or i32 %539, %536
  store i32 %540, i32* %538, align 4
  %541 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %542 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %542, i32 0, i32 1
  %544 = load i64, i64* %543, align 8
  %545 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %546 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %545, i32 0, i32 2
  store i64 %544, i64* %546, align 8
  br label %547

547:                                              ; preds = %530, %511
  %548 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %549 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %570

553:                                              ; preds = %547
  %554 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %555 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %556 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 4
  %558 = or i32 %557, %554
  store i32 %558, i32* %556, align 4
  %559 = load i32, i32* @RADEON_PLL_USE_POST_DIV, align 4
  %560 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %561 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 4
  %563 = or i32 %562, %559
  store i32 %563, i32* %561, align 4
  %564 = bitcast %union.adjust_pixel_clock* %19 to %struct.TYPE_11__*
  %565 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %569 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %568, i32 0, i32 0
  store i32 %567, i32* %569, align 8
  br label %570

570:                                              ; preds = %553, %547
  br label %576

571:                                              ; preds = %343
  %572 = load i32, i32* %20, align 4
  %573 = load i32, i32* %21, align 4
  %574 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %572, i32 %573)
  %575 = load i32, i32* %12, align 4
  store i32 %575, i32* %3, align 4
  br label %585

576:                                              ; preds = %570, %377
  br label %582

577:                                              ; preds = %340
  %578 = load i32, i32* %20, align 4
  %579 = load i32, i32* %21, align 4
  %580 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %578, i32 %579)
  %581 = load i32, i32* %12, align 4
  store i32 %581, i32* %3, align 4
  br label %585

582:                                              ; preds = %576
  br label %583

583:                                              ; preds = %582, %323
  %584 = load i32, i32* %12, align 4
  store i32 %584, i32* %3, align 4
  br label %585

585:                                              ; preds = %583, %577, %571, %338
  %586 = load i32, i32* %3, align 4
  ret i32 %586
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @atombios_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_get_monitor_bpc(%struct.drm_connector*) #1

declare dso_local i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder*, i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE32(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE41(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE61(%struct.radeon_device*) #1

declare dso_local i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i32 @memset(%union.adjust_pixel_clock*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
