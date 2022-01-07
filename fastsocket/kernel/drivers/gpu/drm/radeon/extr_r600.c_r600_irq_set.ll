; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_irq_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_irq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64*, i64*, i32*, i64*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@CNTX_BUSY_INT_ENABLE = common dso_local global i32 0, align 4
@CNTX_EMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Can't enable IRQ/MSI because no handler is installed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DC_HPD1_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPDx_INT_EN = common dso_local global i32 0, align 4
@DC_HPD2_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD3_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD4_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD5_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD6_INT_CONTROL = common dso_local global i64 0, align 8
@AFMT_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@DCE3_HDMI_OFFSET0 = common dso_local global i64 0, align 8
@AFMT_AZ_FORMAT_WTRIG_MASK = common dso_local global i32 0, align 4
@DCE3_HDMI_OFFSET1 = common dso_local global i64 0, align 8
@HDMI0_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI0_AZ_FORMAT_WTRIG_MASK = common dso_local global i32 0, align 4
@DCE3_HDMI1_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@DC_HOT_PLUG_DETECT1_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HOT_PLUG_DETECT2_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HOT_PLUG_DETECT3_INT_CONTROL = common dso_local global i64 0, align 8
@HDMI1_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@DMA_CNTL = common dso_local global i64 0, align 8
@TRAP_ENABLE = common dso_local global i32 0, align 4
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"r600_irq_set: sw int\0A\00", align 1
@RB_INT_ENABLE = common dso_local global i32 0, align 4
@TIME_STAMP_INT_ENABLE = common dso_local global i32 0, align 4
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"r600_irq_set: sw int dma\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"r600_irq_set: vblank 0\0A\00", align 1
@D1MODE_VBLANK_INT_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"r600_irq_set: vblank 1\0A\00", align 1
@D2MODE_VBLANK_INT_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"r600_irq_set: hpd 1\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"r600_irq_set: hpd 2\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"r600_irq_set: hpd 3\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"r600_irq_set: hpd 4\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"r600_irq_set: hpd 5\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"r600_irq_set: hpd 6\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"r600_irq_set: hdmi 0\0A\00", align 1
@CP_INT_CNTL = common dso_local global i64 0, align 8
@DxMODE_INT_MASK = common dso_local global i64 0, align 8
@D1GRPH_INTERRUPT_CONTROL = common dso_local global i64 0, align 8
@D2GRPH_INTERRUPT_CONTROL = common dso_local global i64 0, align 8
@GRBM_INT_CNTL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_irq_set(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %18 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %19 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %394

30:                                               ; preds = %1
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @r600_disable_interrupts(%struct.radeon_device* %37)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = call i32 @r600_disable_interrupt_state(%struct.radeon_device* %39)
  store i32 0, i32* %2, align 4
  br label %394

41:                                               ; preds = %30
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %106

45:                                               ; preds = %41
  %46 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %47 = call i32 @RREG32(i64 %46)
  %48 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  store i32 %50, i32* %6, align 4
  %51 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %52 = call i32 @RREG32(i64 %51)
  %53 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  store i32 %55, i32* %7, align 4
  %56 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %57 = call i32 @RREG32(i64 %56)
  %58 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  store i32 %60, i32* %8, align 4
  %61 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %62 = call i32 @RREG32(i64 %61)
  %63 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = call i64 @ASIC_IS_DCE32(%struct.radeon_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %45
  %70 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %71 = call i32 @RREG32(i64 %70)
  %72 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  store i32 %74, i32* %10, align 4
  %75 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %76 = call i32 @RREG32(i64 %75)
  %77 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  store i32 %79, i32* %11, align 4
  %80 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %81 = load i64, i64* @DCE3_HDMI_OFFSET0, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @RREG32(i64 %82)
  %84 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  store i32 %86, i32* %13, align 4
  %87 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %88 = load i64, i64* @DCE3_HDMI_OFFSET1, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @RREG32(i64 %89)
  %91 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  store i32 %93, i32* %14, align 4
  br label %105

94:                                               ; preds = %45
  %95 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %96 = call i32 @RREG32(i64 %95)
  %97 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  store i32 %99, i32* %13, align 4
  %100 = load i64, i64* @DCE3_HDMI1_AUDIO_PACKET_CONTROL, align 8
  %101 = call i32 @RREG32(i64 %100)
  %102 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %94, %69
  br label %132

106:                                              ; preds = %41
  %107 = load i64, i64* @DC_HOT_PLUG_DETECT1_INT_CONTROL, align 8
  %108 = call i32 @RREG32(i64 %107)
  %109 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  store i32 %111, i32* %6, align 4
  %112 = load i64, i64* @DC_HOT_PLUG_DETECT2_INT_CONTROL, align 8
  %113 = call i32 @RREG32(i64 %112)
  %114 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  store i32 %116, i32* %7, align 4
  %117 = load i64, i64* @DC_HOT_PLUG_DETECT3_INT_CONTROL, align 8
  %118 = call i32 @RREG32(i64 %117)
  %119 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %120 = xor i32 %119, -1
  %121 = and i32 %118, %120
  store i32 %121, i32* %8, align 4
  %122 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %123 = call i32 @RREG32(i64 %122)
  %124 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %125 = xor i32 %124, -1
  %126 = and i32 %123, %125
  store i32 %126, i32* %13, align 4
  %127 = load i64, i64* @HDMI1_AUDIO_PACKET_CONTROL, align 8
  %128 = call i32 @RREG32(i64 %127)
  %129 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %106, %105
  %133 = load i64, i64* @DMA_CNTL, align 8
  %134 = call i32 @RREG32(i64 %133)
  %135 = load i32, i32* @TRAP_ENABLE, align 4
  %136 = xor i32 %135, -1
  %137 = and i32 %134, %136
  store i32 %137, i32* %17, align 4
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = call i64 @atomic_read(i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %132
  %147 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %148 = load i32, i32* @RB_INT_ENABLE, align 4
  %149 = load i32, i32* %4, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %152 = load i32, i32* %4, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %146, %132
  %155 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %156 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = call i64 @atomic_read(i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %154
  %164 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %165 = load i32, i32* @TRAP_ENABLE, align 4
  %166 = load i32, i32* %17, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %17, align 4
  br label %168

168:                                              ; preds = %163, %154
  %169 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %170 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 3
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %168
  %177 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %178 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = call i64 @atomic_read(i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %176, %168
  %185 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %186 = load i32, i32* @D1MODE_VBLANK_INT_MASK, align 4
  %187 = load i32, i32* %5, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %184, %176
  %190 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %191 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 3
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %189
  %198 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %199 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = call i64 @atomic_read(i32* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %197, %189
  %206 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %207 = load i32, i32* @D2MODE_VBLANK_INT_MASK, align 4
  %208 = load i32, i32* %5, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %5, align 4
  br label %210

210:                                              ; preds = %205, %197
  %211 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %212 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %210
  %219 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %220 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %221 = load i32, i32* %6, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %6, align 4
  br label %223

223:                                              ; preds = %218, %210
  %224 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %223
  %232 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %233 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %234 = load i32, i32* %7, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %231, %223
  %237 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %238 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load i64*, i64** %239, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 2
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %236
  %245 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %246 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %247 = load i32, i32* %8, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %8, align 4
  br label %249

249:                                              ; preds = %244, %236
  %250 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %251 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  %253 = load i64*, i64** %252, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 3
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %249
  %258 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %259 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %260 = load i32, i32* %9, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %9, align 4
  br label %262

262:                                              ; preds = %257, %249
  %263 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %264 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 1
  %266 = load i64*, i64** %265, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 4
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %262
  %271 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %272 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %273 = load i32, i32* %10, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %10, align 4
  br label %275

275:                                              ; preds = %270, %262
  %276 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %277 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 1
  %279 = load i64*, i64** %278, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 5
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %275
  %284 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %285 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %286 = load i32, i32* %11, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %11, align 4
  br label %288

288:                                              ; preds = %283, %275
  %289 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %290 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 0
  %292 = load i64*, i64** %291, align 8
  %293 = getelementptr inbounds i64, i64* %292, i64 0
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %288
  %297 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %298 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %299 = load i32, i32* %13, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %13, align 4
  br label %301

301:                                              ; preds = %296, %288
  %302 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %303 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  %305 = load i64*, i64** %304, align 8
  %306 = getelementptr inbounds i64, i64* %305, i64 1
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %301
  %310 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %311 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %312 = load i32, i32* %14, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %14, align 4
  br label %314

314:                                              ; preds = %309, %301
  %315 = load i64, i64* @CP_INT_CNTL, align 8
  %316 = load i32, i32* %4, align 4
  %317 = call i32 @WREG32(i64 %315, i32 %316)
  %318 = load i64, i64* @DMA_CNTL, align 8
  %319 = load i32, i32* %17, align 4
  %320 = call i32 @WREG32(i64 %318, i32 %319)
  %321 = load i64, i64* @DxMODE_INT_MASK, align 8
  %322 = load i32, i32* %5, align 4
  %323 = call i32 @WREG32(i64 %321, i32 %322)
  %324 = load i64, i64* @D1GRPH_INTERRUPT_CONTROL, align 8
  %325 = load i32, i32* %15, align 4
  %326 = call i32 @WREG32(i64 %324, i32 %325)
  %327 = load i64, i64* @D2GRPH_INTERRUPT_CONTROL, align 8
  %328 = load i32, i32* %16, align 4
  %329 = call i32 @WREG32(i64 %327, i32 %328)
  %330 = load i64, i64* @GRBM_INT_CNTL, align 8
  %331 = load i32, i32* %12, align 4
  %332 = call i32 @WREG32(i64 %330, i32 %331)
  %333 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %334 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %377

336:                                              ; preds = %314
  %337 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %338 = load i32, i32* %6, align 4
  %339 = call i32 @WREG32(i64 %337, i32 %338)
  %340 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %341 = load i32, i32* %7, align 4
  %342 = call i32 @WREG32(i64 %340, i32 %341)
  %343 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %344 = load i32, i32* %8, align 4
  %345 = call i32 @WREG32(i64 %343, i32 %344)
  %346 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %347 = load i32, i32* %9, align 4
  %348 = call i32 @WREG32(i64 %346, i32 %347)
  %349 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %350 = call i64 @ASIC_IS_DCE32(%struct.radeon_device* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %369

352:                                              ; preds = %336
  %353 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %354 = load i32, i32* %10, align 4
  %355 = call i32 @WREG32(i64 %353, i32 %354)
  %356 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %357 = load i32, i32* %11, align 4
  %358 = call i32 @WREG32(i64 %356, i32 %357)
  %359 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %360 = load i64, i64* @DCE3_HDMI_OFFSET0, align 8
  %361 = add nsw i64 %359, %360
  %362 = load i32, i32* %13, align 4
  %363 = call i32 @WREG32(i64 %361, i32 %362)
  %364 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %365 = load i64, i64* @DCE3_HDMI_OFFSET1, align 8
  %366 = add nsw i64 %364, %365
  %367 = load i32, i32* %14, align 4
  %368 = call i32 @WREG32(i64 %366, i32 %367)
  br label %376

369:                                              ; preds = %336
  %370 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %371 = load i32, i32* %13, align 4
  %372 = call i32 @WREG32(i64 %370, i32 %371)
  %373 = load i64, i64* @DCE3_HDMI1_AUDIO_PACKET_CONTROL, align 8
  %374 = load i32, i32* %14, align 4
  %375 = call i32 @WREG32(i64 %373, i32 %374)
  br label %376

376:                                              ; preds = %369, %352
  br label %393

377:                                              ; preds = %314
  %378 = load i64, i64* @DC_HOT_PLUG_DETECT1_INT_CONTROL, align 8
  %379 = load i32, i32* %6, align 4
  %380 = call i32 @WREG32(i64 %378, i32 %379)
  %381 = load i64, i64* @DC_HOT_PLUG_DETECT2_INT_CONTROL, align 8
  %382 = load i32, i32* %7, align 4
  %383 = call i32 @WREG32(i64 %381, i32 %382)
  %384 = load i64, i64* @DC_HOT_PLUG_DETECT3_INT_CONTROL, align 8
  %385 = load i32, i32* %8, align 4
  %386 = call i32 @WREG32(i64 %384, i32 %385)
  %387 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %388 = load i32, i32* %13, align 4
  %389 = call i32 @WREG32(i64 %387, i32 %388)
  %390 = load i64, i64* @HDMI1_AUDIO_PACKET_CONTROL, align 8
  %391 = load i32, i32* %14, align 4
  %392 = call i32 @WREG32(i64 %390, i32 %391)
  br label %393

393:                                              ; preds = %377, %376
  store i32 0, i32* %2, align 4
  br label %394

394:                                              ; preds = %393, %36, %26
  %395 = load i32, i32* %2, align 4
  ret i32 %395
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @r600_disable_interrupts(%struct.radeon_device*) #1

declare dso_local i32 @r600_disable_interrupt_state(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @ASIC_IS_DCE32(%struct.radeon_device*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
