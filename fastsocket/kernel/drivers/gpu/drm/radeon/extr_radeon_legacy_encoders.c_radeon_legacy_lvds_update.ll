; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_lvds_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_lvds_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_encoder = type { %struct.radeon_encoder_lvds* }
%struct.radeon_encoder_lvds = type { i32, i32, i64 }
%struct.radeon_encoder_atom_dig = type { i32, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RADEON_LVDS_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_LVDS_BL_MOD_LEVEL_SHIFT = common dso_local global i32 0, align 4
@CT_IBOOK = common dso_local global i64 0, align 8
@CT_POWERBOOK_EXTERNAL = common dso_local global i64 0, align 8
@CT_POWERBOOK_INTERNAL = common dso_local global i64 0, align 8
@CT_POWERBOOK_VGA = common dso_local global i64 0, align 8
@RADEON_DISP_PWR_MAN = common dso_local global i32 0, align 4
@RADEON_AUTO_PWRUP_EN = common dso_local global i32 0, align 4
@RADEON_LVDS_PLL_CNTL = common dso_local global i32 0, align 4
@RADEON_LVDS_PLL_EN = common dso_local global i32 0, align 4
@RADEON_LVDS_PLL_RESET = common dso_local global i32 0, align 4
@RADEON_LVDS_DISPLAY_DIS = common dso_local global i32 0, align 4
@RADEON_LVDS_BL_MOD_LEVEL_MASK = common dso_local global i32 0, align 4
@RADEON_LVDS_ON = common dso_local global i32 0, align 4
@RADEON_LVDS_EN = common dso_local global i32 0, align 4
@RADEON_LVDS_DIGON = common dso_local global i32 0, align 4
@RADEON_LVDS_BLON = common dso_local global i32 0, align 4
@RADEON_LVDS_BL_MOD_EN = common dso_local global i32 0, align 4
@RADEON_PIXCLKS_CNTL = common dso_local global i32 0, align 4
@RADEON_PIXCLK_LVDS_ALWAYS_ONb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @radeon_legacy_lvds_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_legacy_lvds_update(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %16 = alloca %struct.radeon_encoder_lvds*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %18 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %5, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.radeon_device*, %struct.radeon_device** %21, align 8
  store %struct.radeon_device* %22, %struct.radeon_device** %6, align 8
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %24 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %23)
  store %struct.radeon_encoder* %24, %struct.radeon_encoder** %7, align 8
  store i32 2000, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @RADEON_LVDS_GEN_CNTL, align 4
  %27 = call i32 @RREG32(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @RADEON_LVDS_BL_MOD_LEVEL_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = and i32 %30, 255
  store i32 %31, i32* %14, align 4
  %32 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %33 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %32, i32 0, i32 0
  %34 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %33, align 8
  %35 = icmp ne %struct.radeon_encoder_lvds* %34, null
  br i1 %35, label %36, label %75

36:                                               ; preds = %2
  %37 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %43 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %42, i32 0, i32 0
  %44 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %43, align 8
  %45 = bitcast %struct.radeon_encoder_lvds* %44 to %struct.radeon_encoder_atom_dig*
  store %struct.radeon_encoder_atom_dig* %45, %struct.radeon_encoder_atom_dig** %15, align 8
  %46 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %15, align 8
  %47 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %12, align 4
  %49 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %15, align 8
  %50 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %15, align 8
  %55 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %53, %41
  br label %74

58:                                               ; preds = %36
  %59 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %60 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %59, i32 0, i32 0
  %61 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %60, align 8
  store %struct.radeon_encoder_lvds* %61, %struct.radeon_encoder_lvds** %16, align 8
  %62 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %16, align 8
  %63 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %12, align 4
  %65 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %16, align 8
  %66 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %16, align 8
  %71 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %69, %58
  br label %74

74:                                               ; preds = %73, %57
  br label %75

75:                                               ; preds = %74, %2
  %76 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CT_IBOOK, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %103, label %82

82:                                               ; preds = %75
  %83 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CT_POWERBOOK_EXTERNAL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %103, label %89

89:                                               ; preds = %82
  %90 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @CT_POWERBOOK_INTERNAL, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CT_POWERBOOK_VGA, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %89, %82, %75
  store i32 1, i32* %13, align 4
  br label %104

104:                                              ; preds = %103, %96
  %105 = load i32, i32* %4, align 4
  switch i32 %105, label %215 [
    i32 130, label %106
    i32 129, label %164
    i32 128, label %164
    i32 131, label %164
  ]

106:                                              ; preds = %104
  %107 = load i32, i32* @RADEON_DISP_PWR_MAN, align 4
  %108 = call i32 @RREG32(i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* @RADEON_AUTO_PWRUP_EN, align 4
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* @RADEON_DISP_PWR_MAN, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @WREG32(i32 %112, i32 %113)
  %115 = load i32, i32* @RADEON_LVDS_PLL_CNTL, align 4
  %116 = call i32 @RREG32(i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* @RADEON_LVDS_PLL_EN, align 4
  %118 = load i32, i32* %9, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* @RADEON_LVDS_PLL_CNTL, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @WREG32(i32 %120, i32 %121)
  %123 = call i32 @mdelay(i32 1)
  %124 = load i32, i32* @RADEON_LVDS_PLL_CNTL, align 4
  %125 = call i32 @RREG32(i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* @RADEON_LVDS_PLL_RESET, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %9, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* @RADEON_LVDS_PLL_CNTL, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @WREG32(i32 %130, i32 %131)
  %133 = load i32, i32* @RADEON_LVDS_DISPLAY_DIS, align 4
  %134 = load i32, i32* @RADEON_LVDS_BL_MOD_LEVEL_MASK, align 4
  %135 = or i32 %133, %134
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* @RADEON_LVDS_ON, align 4
  %140 = load i32, i32* @RADEON_LVDS_EN, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @RADEON_LVDS_DIGON, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @RADEON_LVDS_BLON, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @RADEON_LVDS_BL_MOD_LEVEL_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = or i32 %145, %148
  %150 = load i32, i32* %8, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %106
  %155 = load i32, i32* @RADEON_LVDS_BL_MOD_EN, align 4
  %156 = load i32, i32* %8, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %154, %106
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @mdelay(i32 %159)
  %161 = load i32, i32* @RADEON_LVDS_GEN_CNTL, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @WREG32(i32 %161, i32 %162)
  br label %215

164:                                              ; preds = %104, %104, %104
  %165 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %166 = call i32 @RREG32_PLL(i32 %165)
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %168 = load i32, i32* @RADEON_PIXCLK_LVDS_ALWAYS_ONb, align 4
  %169 = xor i32 %168, -1
  %170 = call i32 @WREG32_PLL_P(i32 %167, i32 0, i32 %169)
  %171 = load i32, i32* @RADEON_LVDS_DISPLAY_DIS, align 4
  %172 = load i32, i32* %8, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %190

176:                                              ; preds = %164
  %177 = load i32, i32* @RADEON_LVDS_BL_MOD_EN, align 4
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %8, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* @RADEON_LVDS_GEN_CNTL, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @WREG32(i32 %181, i32 %182)
  %184 = load i32, i32* @RADEON_LVDS_ON, align 4
  %185 = load i32, i32* @RADEON_LVDS_EN, align 4
  %186 = or i32 %184, %185
  %187 = xor i32 %186, -1
  %188 = load i32, i32* %8, align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* %8, align 4
  br label %204

190:                                              ; preds = %164
  %191 = load i32, i32* @RADEON_LVDS_GEN_CNTL, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @WREG32(i32 %191, i32 %192)
  %194 = load i32, i32* @RADEON_LVDS_ON, align 4
  %195 = load i32, i32* @RADEON_LVDS_BLON, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @RADEON_LVDS_EN, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @RADEON_LVDS_DIGON, align 4
  %200 = or i32 %198, %199
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %8, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %8, align 4
  br label %204

204:                                              ; preds = %190, %176
  %205 = load i32, i32* %12, align 4
  %206 = call i32 @mdelay(i32 %205)
  %207 = load i32, i32* @RADEON_LVDS_GEN_CNTL, align 4
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @WREG32(i32 %207, i32 %208)
  %210 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @WREG32_PLL(i32 %210, i32 %211)
  %213 = load i32, i32* %12, align 4
  %214 = call i32 @mdelay(i32 %213)
  br label %215

215:                                              ; preds = %104, %204, %158
  %216 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %217 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %215
  %221 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %222 = load i32, i32* %4, align 4
  %223 = icmp eq i32 %222, 130
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 1, i32 0
  %226 = call i32 @radeon_atombios_encoder_dpms_scratch_regs(%struct.drm_encoder* %221, i32 %225)
  br label %234

227:                                              ; preds = %215
  %228 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %229 = load i32, i32* %4, align 4
  %230 = icmp eq i32 %229, 130
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i32 1, i32 0
  %233 = call i32 @radeon_combios_encoder_dpms_scratch_regs(%struct.drm_encoder* %228, i32 %232)
  br label %234

234:                                              ; preds = %227, %220
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @RREG32_PLL(i32) #1

declare dso_local i32 @WREG32_PLL_P(i32, i32, i32) #1

declare dso_local i32 @WREG32_PLL(i32, i32) #1

declare dso_local i32 @radeon_atombios_encoder_dpms_scratch_regs(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_combios_encoder_dpms_scratch_regs(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
