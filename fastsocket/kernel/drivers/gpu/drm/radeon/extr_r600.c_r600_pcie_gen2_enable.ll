; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_pcie_gen2_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_pcie_gen2_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@radeon_pcie_gen2 = common dso_local global i64 0, align 8
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i64 0, align 8
@PCIE_SPEED_5_0GT = common dso_local global i64 0, align 8
@PCIE_SPEED_8_0GT = common dso_local global i64 0, align 8
@PCIE_LC_SPEED_CNTL = common dso_local global i32 0, align 4
@LC_CURRENT_DATA_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PCIE gen 2 link speeds already enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"enabling PCIE gen 2 link speeds, disable with radeon.pcie_gen2=0\0A\00", align 1
@CHIP_RV670 = common dso_local global i64 0, align 8
@CHIP_RV620 = common dso_local global i64 0, align 8
@CHIP_RV635 = common dso_local global i64 0, align 8
@PCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@LC_UPCONFIGURE_DIS = common dso_local global i32 0, align 4
@LC_RENEGOTIATION_SUPPORT = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_RD_MASK = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_RD_SHIFT = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@LC_RECONFIG_ARC_MISSING_ESCAPE = common dso_local global i32 0, align 4
@LC_RECONFIG_NOW = common dso_local global i32 0, align 4
@LC_RENEGOTIATE_EN = common dso_local global i32 0, align 4
@LC_OTHER_SIDE_EVER_SENT_GEN2 = common dso_local global i32 0, align 4
@LC_OTHER_SIDE_SUPPORTS_GEN2 = common dso_local global i32 0, align 4
@MM_CFGREGS_CNTL = common dso_local global i32 0, align 4
@SELECTABLE_DEEMPHASIS = common dso_local global i32 0, align 4
@LC_SPEED_CHANGE_ATTEMPTS_ALLOWED_MASK = common dso_local global i32 0, align 4
@LC_SPEED_CHANGE_ATTEMPTS_ALLOWED_SHIFT = common dso_local global i32 0, align 4
@LC_VOLTAGE_TIMER_SEL_MASK = common dso_local global i32 0, align 4
@LC_FORCE_DIS_HW_SPEED_CHANGE = common dso_local global i32 0, align 4
@LC_FORCE_EN_HW_SPEED_CHANGE = common dso_local global i32 0, align 4
@MM_WR_TO_CFG_EN = common dso_local global i32 0, align 4
@TARGET_LINK_SPEED_MASK = common dso_local global i32 0, align 4
@PCIE_LC_TRAINING_CNTL = common dso_local global i32 0, align 4
@LC_POINT_7_PLUS_EN = common dso_local global i32 0, align 4
@LC_TARGET_LINK_SPEED_OVERRIDE_EN = common dso_local global i32 0, align 4
@LC_GEN2_EN_STRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @r600_pcie_gen2_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_pcie_gen2_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %9 = load i64, i64* @radeon_pcie_gen2, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %273

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RADEON_IS_IGP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %273

20:                                               ; preds = %12
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RADEON_IS_PCIE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %273

28:                                               ; preds = %20
  %29 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %30 = call i64 @ASIC_IS_X2(%struct.radeon_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %273

33:                                               ; preds = %28
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CHIP_R600, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %273

40:                                               ; preds = %33
  %41 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PCIE_SPEED_5_0GT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %40
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PCIE_SPEED_8_0GT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %273

61:                                               ; preds = %50, %40
  %62 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %63 = call i32 @RREG32_PCIE_P(i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @LC_CURRENT_DATA_RATE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = call i32 @DRM_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %273

70:                                               ; preds = %61
  %71 = call i32 @DRM_INFO(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CHIP_RV670, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %70
  %78 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CHIP_RV620, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CHIP_RV635, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %135

89:                                               ; preds = %83, %77, %70
  %90 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %91 = call i32 @RREG32_PCIE_P(i32 %90)
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* @LC_UPCONFIGURE_DIS, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %3, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @WREG32_PCIE_P(i32 %96, i32 %97)
  %99 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %100 = call i32 @RREG32_PCIE_P(i32 %99)
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @LC_RENEGOTIATION_SUPPORT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %89
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @LC_LINK_WIDTH_RD_MASK, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @LC_LINK_WIDTH_RD_SHIFT, align 4
  %110 = ashr i32 %108, %109
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* @LC_LINK_WIDTH_MASK, align 4
  %112 = load i32, i32* @LC_RECONFIG_ARC_MISSING_ESCAPE, align 4
  %113 = or i32 %111, %112
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %3, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @LC_RECONFIG_NOW, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @LC_RENEGOTIATE_EN, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %3, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @WREG32_PCIE_P(i32 %124, i32 %125)
  br label %134

127:                                              ; preds = %89
  %128 = load i32, i32* @LC_UPCONFIGURE_DIS, align 4
  %129 = load i32, i32* %3, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %3, align 4
  %131 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @WREG32_PCIE_P(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %127, %105
  br label %135

135:                                              ; preds = %134, %83
  %136 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %137 = call i32 @RREG32_PCIE_P(i32 %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @LC_OTHER_SIDE_EVER_SENT_GEN2, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %264

142:                                              ; preds = %135
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @LC_OTHER_SIDE_SUPPORTS_GEN2, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %264

147:                                              ; preds = %142
  %148 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CHIP_RV670, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %165, label %153

153:                                              ; preds = %147
  %154 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %155 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @CHIP_RV620, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %165, label %159

159:                                              ; preds = %153
  %160 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %161 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @CHIP_RV635, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %159, %153, %147
  %166 = load i32, i32* @MM_CFGREGS_CNTL, align 4
  %167 = call i32 @WREG32(i32 %166, i32 8)
  %168 = call i32 @RREG32(i32 16520)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* @MM_CFGREGS_CNTL, align 4
  %170 = call i32 @WREG32(i32 %169, i32 0)
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @SELECTABLE_DEEMPHASIS, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  br label %273

176:                                              ; preds = %165
  br label %177

177:                                              ; preds = %176, %159
  %178 = load i32, i32* @LC_SPEED_CHANGE_ATTEMPTS_ALLOWED_MASK, align 4
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %5, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* @LC_SPEED_CHANGE_ATTEMPTS_ALLOWED_SHIFT, align 4
  %183 = shl i32 3, %182
  %184 = load i32, i32* %5, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* @LC_VOLTAGE_TIMER_SEL_MASK, align 4
  %187 = xor i32 %186, -1
  %188 = load i32, i32* %5, align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* @LC_FORCE_DIS_HW_SPEED_CHANGE, align 4
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %5, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* @LC_FORCE_EN_HW_SPEED_CHANGE, align 4
  %195 = load i32, i32* %5, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %198 = load i32, i32* %5, align 4
  %199 = call i32 @WREG32_PCIE_P(i32 %197, i32 %198)
  %200 = call i32 @RREG32(i32 21532)
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %7, align 4
  %202 = or i32 %201, 8
  %203 = call i32 @WREG32(i32 21532, i32 %202)
  %204 = load i32, i32* @MM_CFGREGS_CNTL, align 4
  %205 = load i32, i32* @MM_WR_TO_CFG_EN, align 4
  %206 = call i32 @WREG32(i32 %204, i32 %205)
  %207 = call i32 @RREG16(i32 16520)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* @TARGET_LINK_SPEED_MASK, align 4
  %209 = xor i32 %208, -1
  %210 = load i32, i32* %8, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = or i32 %212, 2
  store i32 %213, i32* %8, align 4
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @WREG16(i32 16520, i32 %214)
  %216 = load i32, i32* @MM_CFGREGS_CNTL, align 4
  %217 = call i32 @WREG32(i32 %216, i32 0)
  %218 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %219 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @CHIP_RV670, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %235, label %223

223:                                              ; preds = %177
  %224 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @CHIP_RV620, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %235, label %229

229:                                              ; preds = %223
  %230 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %231 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @CHIP_RV635, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %245

235:                                              ; preds = %229, %223, %177
  %236 = load i32, i32* @PCIE_LC_TRAINING_CNTL, align 4
  %237 = call i32 @RREG32_PCIE_P(i32 %236)
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* @LC_POINT_7_PLUS_EN, align 4
  %239 = xor i32 %238, -1
  %240 = load i32, i32* %6, align 4
  %241 = and i32 %240, %239
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* @PCIE_LC_TRAINING_CNTL, align 4
  %243 = load i32, i32* %6, align 4
  %244 = call i32 @WREG32_PCIE_P(i32 %242, i32 %243)
  br label %255

245:                                              ; preds = %229
  %246 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %247 = call i32 @RREG32_PCIE_P(i32 %246)
  store i32 %247, i32* %5, align 4
  %248 = load i32, i32* @LC_TARGET_LINK_SPEED_OVERRIDE_EN, align 4
  %249 = xor i32 %248, -1
  %250 = load i32, i32* %5, align 4
  %251 = and i32 %250, %249
  store i32 %251, i32* %5, align 4
  %252 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %253 = load i32, i32* %5, align 4
  %254 = call i32 @WREG32_PCIE_P(i32 %252, i32 %253)
  br label %255

255:                                              ; preds = %245, %235
  %256 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %257 = call i32 @RREG32_PCIE_P(i32 %256)
  store i32 %257, i32* %5, align 4
  %258 = load i32, i32* @LC_GEN2_EN_STRAP, align 4
  %259 = load i32, i32* %5, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %5, align 4
  %261 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %262 = load i32, i32* %5, align 4
  %263 = call i32 @WREG32_PCIE_P(i32 %261, i32 %262)
  br label %273

264:                                              ; preds = %142, %135
  %265 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %266 = call i32 @RREG32_PCIE_P(i32 %265)
  store i32 %266, i32* %3, align 4
  %267 = load i32, i32* @LC_UPCONFIGURE_DIS, align 4
  %268 = load i32, i32* %3, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %3, align 4
  %270 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %271 = load i32, i32* %3, align 4
  %272 = call i32 @WREG32_PCIE_P(i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %11, %19, %27, %32, %39, %60, %68, %175, %264, %255
  ret void
}

declare dso_local i64 @ASIC_IS_X2(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_PCIE_P(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @WREG32_PCIE_P(i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @RREG16(i32) #1

declare dso_local i32 @WREG16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
