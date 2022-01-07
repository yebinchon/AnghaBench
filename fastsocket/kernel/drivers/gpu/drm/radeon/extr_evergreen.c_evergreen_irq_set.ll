; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_irq_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_irq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64*, i64*, i32*, i64*, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

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
@EVERGREEN_CRTC0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@AFMT_AZ_FORMAT_WTRIG_MASK = common dso_local global i32 0, align 4
@EVERGREEN_CRTC1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC2_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC3_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC4_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC5_REGISTER_OFFSET = common dso_local global i64 0, align 8
@DMA_CNTL = common dso_local global i64 0, align 8
@TRAP_ENABLE = common dso_local global i32 0, align 4
@CHIP_CAYMAN = common dso_local global i64 0, align 8
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"evergreen_irq_set: sw int gfx\0A\00", align 1
@TIME_STAMP_INT_ENABLE = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"evergreen_irq_set: sw int cp1\0A\00", align 1
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"evergreen_irq_set: sw int cp2\0A\00", align 1
@RB_INT_ENABLE = common dso_local global i32 0, align 4
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"r600_irq_set: sw int dma\0A\00", align 1
@CAYMAN_DMA1_CNTL = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"r600_irq_set: sw int dma1\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"evergreen_irq_set: vblank 0\0A\00", align 1
@VBLANK_INT_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"evergreen_irq_set: vblank 1\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"evergreen_irq_set: vblank 2\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"evergreen_irq_set: vblank 3\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"evergreen_irq_set: vblank 4\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"evergreen_irq_set: vblank 5\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"evergreen_irq_set: hpd 1\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"evergreen_irq_set: hpd 2\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"evergreen_irq_set: hpd 3\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"evergreen_irq_set: hpd 4\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"evergreen_irq_set: hpd 5\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"evergreen_irq_set: hpd 6\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"evergreen_irq_set: hdmi 0\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"evergreen_irq_set: hdmi 1\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"evergreen_irq_set: hdmi 2\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"evergreen_irq_set: hdmi 3\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"evergreen_irq_set: hdmi 4\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"evergreen_irq_set: hdmi 5\0A\00", align 1
@CP_INT_CNTL = common dso_local global i64 0, align 8
@GRBM_INT_CNTL = common dso_local global i64 0, align 8
@INT_MASK = common dso_local global i64 0, align 8
@GRPH_INT_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_irq_set(%struct.radeon_device* %0) #0 {
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %34 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %35 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %33, align 4
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %1
  %43 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %692

46:                                               ; preds = %1
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = call i32 @r600_disable_interrupts(%struct.radeon_device* %53)
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = call i32 @evergreen_disable_interrupt_state(%struct.radeon_device* %55)
  store i32 0, i32* %2, align 4
  br label %692

57:                                               ; preds = %46
  %58 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %59 = call i32 @RREG32(i64 %58)
  %60 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  store i32 %62, i32* %13, align 4
  %63 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %64 = call i32 @RREG32(i64 %63)
  %65 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  store i32 %67, i32* %14, align 4
  %68 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %69 = call i32 @RREG32(i64 %68)
  %70 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  store i32 %72, i32* %15, align 4
  %73 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %74 = call i32 @RREG32(i64 %73)
  %75 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  store i32 %77, i32* %16, align 4
  %78 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %79 = call i32 @RREG32(i64 %78)
  %80 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  store i32 %82, i32* %17, align 4
  %83 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %84 = call i32 @RREG32(i64 %83)
  %85 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  store i32 %87, i32* %18, align 4
  %88 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %89 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @RREG32(i64 %90)
  %92 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  store i32 %94, i32* %26, align 4
  %95 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %96 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @RREG32(i64 %97)
  %99 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %100 = xor i32 %99, -1
  %101 = and i32 %98, %100
  store i32 %101, i32* %27, align 4
  %102 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %103 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @RREG32(i64 %104)
  %106 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  store i32 %108, i32* %28, align 4
  %109 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %110 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @RREG32(i64 %111)
  %113 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  store i32 %115, i32* %29, align 4
  %116 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %117 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @RREG32(i64 %118)
  %120 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  store i32 %122, i32* %30, align 4
  %123 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %124 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @RREG32(i64 %125)
  %127 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  store i32 %129, i32* %31, align 4
  %130 = load i64, i64* @DMA_CNTL, align 8
  %131 = call i32 @RREG32(i64 %130)
  %132 = load i32, i32* @TRAP_ENABLE, align 4
  %133 = xor i32 %132, -1
  %134 = and i32 %131, %133
  store i32 %134, i32* %32, align 4
  %135 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %136 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @CHIP_CAYMAN, align 8
  %139 = icmp sge i64 %137, %138
  br i1 %139, label %140, label %183

140:                                              ; preds = %57
  %141 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = call i64 @atomic_read(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %140
  %150 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %151 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %152 = load i32, i32* %4, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %149, %140
  %155 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %156 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = call i64 @atomic_read(i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %154
  %164 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %165 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %166 = load i32, i32* %5, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %163, %154
  %169 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %170 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = call i64 @atomic_read(i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %168
  %178 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %179 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %180 = load i32, i32* %6, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %177, %168
  br label %201

183:                                              ; preds = %57
  %184 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %185 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = call i64 @atomic_read(i32* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %183
  %193 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %194 = load i32, i32* @RB_INT_ENABLE, align 4
  %195 = load i32, i32* %4, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %4, align 4
  %197 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %198 = load i32, i32* %4, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %192, %183
  br label %201

201:                                              ; preds = %200, %182
  %202 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %203 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = call i64 @atomic_read(i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %201
  %211 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %212 = load i32, i32* @TRAP_ENABLE, align 4
  %213 = load i32, i32* %32, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %32, align 4
  br label %215

215:                                              ; preds = %210, %201
  %216 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %217 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @CHIP_CAYMAN, align 8
  %220 = icmp sge i64 %218, %219
  br i1 %220, label %221, label %241

221:                                              ; preds = %215
  %222 = load i64, i64* @CAYMAN_DMA1_CNTL, align 8
  %223 = call i32 @RREG32(i64 %222)
  %224 = load i32, i32* @TRAP_ENABLE, align 4
  %225 = xor i32 %224, -1
  %226 = and i32 %223, %225
  store i32 %226, i32* %33, align 4
  %227 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %228 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 4
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  %233 = call i64 @atomic_read(i32* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %221
  %236 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %237 = load i32, i32* @TRAP_ENABLE, align 4
  %238 = load i32, i32* %33, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %33, align 4
  br label %240

240:                                              ; preds = %235, %221
  br label %241

241:                                              ; preds = %240, %215
  %242 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %243 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 3
  %245 = load i64*, i64** %244, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %257, label %249

249:                                              ; preds = %241
  %250 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %251 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = call i64 @atomic_read(i32* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %249, %241
  %258 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %259 = load i32, i32* @VBLANK_INT_MASK, align 4
  %260 = load i32, i32* %7, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %7, align 4
  br label %262

262:                                              ; preds = %257, %249
  %263 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %264 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 3
  %266 = load i64*, i64** %265, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 1
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %278, label %270

270:                                              ; preds = %262
  %271 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %272 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  %276 = call i64 @atomic_read(i32* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %270, %262
  %279 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %280 = load i32, i32* @VBLANK_INT_MASK, align 4
  %281 = load i32, i32* %8, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %8, align 4
  br label %283

283:                                              ; preds = %278, %270
  %284 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %285 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 3
  %287 = load i64*, i64** %286, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 2
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %299, label %291

291:                                              ; preds = %283
  %292 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %293 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 2
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 2
  %297 = call i64 @atomic_read(i32* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %291, %283
  %300 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %301 = load i32, i32* @VBLANK_INT_MASK, align 4
  %302 = load i32, i32* %9, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %9, align 4
  br label %304

304:                                              ; preds = %299, %291
  %305 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %306 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 3
  %308 = load i64*, i64** %307, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 3
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %320, label %312

312:                                              ; preds = %304
  %313 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %314 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 3
  %318 = call i64 @atomic_read(i32* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %312, %304
  %321 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %322 = load i32, i32* @VBLANK_INT_MASK, align 4
  %323 = load i32, i32* %10, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %10, align 4
  br label %325

325:                                              ; preds = %320, %312
  %326 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %327 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 3
  %329 = load i64*, i64** %328, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 4
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %341, label %333

333:                                              ; preds = %325
  %334 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %335 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 2
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 4
  %339 = call i64 @atomic_read(i32* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %333, %325
  %342 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %343 = load i32, i32* @VBLANK_INT_MASK, align 4
  %344 = load i32, i32* %11, align 4
  %345 = or i32 %344, %343
  store i32 %345, i32* %11, align 4
  br label %346

346:                                              ; preds = %341, %333
  %347 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %348 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 3
  %350 = load i64*, i64** %349, align 8
  %351 = getelementptr inbounds i64, i64* %350, i64 5
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %362, label %354

354:                                              ; preds = %346
  %355 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %356 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 2
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 5
  %360 = call i64 @atomic_read(i32* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %367

362:                                              ; preds = %354, %346
  %363 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %364 = load i32, i32* @VBLANK_INT_MASK, align 4
  %365 = load i32, i32* %12, align 4
  %366 = or i32 %365, %364
  store i32 %366, i32* %12, align 4
  br label %367

367:                                              ; preds = %362, %354
  %368 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %369 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 1
  %371 = load i64*, i64** %370, align 8
  %372 = getelementptr inbounds i64, i64* %371, i64 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %380

375:                                              ; preds = %367
  %376 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %377 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %378 = load i32, i32* %13, align 4
  %379 = or i32 %378, %377
  store i32 %379, i32* %13, align 4
  br label %380

380:                                              ; preds = %375, %367
  %381 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %382 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %382, i32 0, i32 1
  %384 = load i64*, i64** %383, align 8
  %385 = getelementptr inbounds i64, i64* %384, i64 1
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %393

388:                                              ; preds = %380
  %389 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %390 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %391 = load i32, i32* %14, align 4
  %392 = or i32 %391, %390
  store i32 %392, i32* %14, align 4
  br label %393

393:                                              ; preds = %388, %380
  %394 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %395 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %395, i32 0, i32 1
  %397 = load i64*, i64** %396, align 8
  %398 = getelementptr inbounds i64, i64* %397, i64 2
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %406

401:                                              ; preds = %393
  %402 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %403 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %404 = load i32, i32* %15, align 4
  %405 = or i32 %404, %403
  store i32 %405, i32* %15, align 4
  br label %406

406:                                              ; preds = %401, %393
  %407 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %408 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %407, i32 0, i32 2
  %409 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %408, i32 0, i32 1
  %410 = load i64*, i64** %409, align 8
  %411 = getelementptr inbounds i64, i64* %410, i64 3
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %419

414:                                              ; preds = %406
  %415 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %416 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %417 = load i32, i32* %16, align 4
  %418 = or i32 %417, %416
  store i32 %418, i32* %16, align 4
  br label %419

419:                                              ; preds = %414, %406
  %420 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %421 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %420, i32 0, i32 2
  %422 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %421, i32 0, i32 1
  %423 = load i64*, i64** %422, align 8
  %424 = getelementptr inbounds i64, i64* %423, i64 4
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %432

427:                                              ; preds = %419
  %428 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %429 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %430 = load i32, i32* %17, align 4
  %431 = or i32 %430, %429
  store i32 %431, i32* %17, align 4
  br label %432

432:                                              ; preds = %427, %419
  %433 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %434 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %433, i32 0, i32 2
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i32 0, i32 1
  %436 = load i64*, i64** %435, align 8
  %437 = getelementptr inbounds i64, i64* %436, i64 5
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %445

440:                                              ; preds = %432
  %441 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  %442 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %443 = load i32, i32* %18, align 4
  %444 = or i32 %443, %442
  store i32 %444, i32* %18, align 4
  br label %445

445:                                              ; preds = %440, %432
  %446 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %447 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %446, i32 0, i32 2
  %448 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %447, i32 0, i32 0
  %449 = load i64*, i64** %448, align 8
  %450 = getelementptr inbounds i64, i64* %449, i64 0
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %458

453:                                              ; preds = %445
  %454 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  %455 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %456 = load i32, i32* %26, align 4
  %457 = or i32 %456, %455
  store i32 %457, i32* %26, align 4
  br label %458

458:                                              ; preds = %453, %445
  %459 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %460 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %459, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %460, i32 0, i32 0
  %462 = load i64*, i64** %461, align 8
  %463 = getelementptr inbounds i64, i64* %462, i64 1
  %464 = load i64, i64* %463, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %471

466:                                              ; preds = %458
  %467 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %468 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %469 = load i32, i32* %27, align 4
  %470 = or i32 %469, %468
  store i32 %470, i32* %27, align 4
  br label %471

471:                                              ; preds = %466, %458
  %472 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %473 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %472, i32 0, i32 2
  %474 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %473, i32 0, i32 0
  %475 = load i64*, i64** %474, align 8
  %476 = getelementptr inbounds i64, i64* %475, i64 2
  %477 = load i64, i64* %476, align 8
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %484

479:                                              ; preds = %471
  %480 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  %481 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %482 = load i32, i32* %28, align 4
  %483 = or i32 %482, %481
  store i32 %483, i32* %28, align 4
  br label %484

484:                                              ; preds = %479, %471
  %485 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %486 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %485, i32 0, i32 2
  %487 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %486, i32 0, i32 0
  %488 = load i64*, i64** %487, align 8
  %489 = getelementptr inbounds i64, i64* %488, i64 3
  %490 = load i64, i64* %489, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %497

492:                                              ; preds = %484
  %493 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  %494 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %495 = load i32, i32* %29, align 4
  %496 = or i32 %495, %494
  store i32 %496, i32* %29, align 4
  br label %497

497:                                              ; preds = %492, %484
  %498 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %499 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %498, i32 0, i32 2
  %500 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %499, i32 0, i32 0
  %501 = load i64*, i64** %500, align 8
  %502 = getelementptr inbounds i64, i64* %501, i64 4
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %510

505:                                              ; preds = %497
  %506 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0))
  %507 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %508 = load i32, i32* %30, align 4
  %509 = or i32 %508, %507
  store i32 %509, i32* %30, align 4
  br label %510

510:                                              ; preds = %505, %497
  %511 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %512 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %511, i32 0, i32 2
  %513 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %512, i32 0, i32 0
  %514 = load i64*, i64** %513, align 8
  %515 = getelementptr inbounds i64, i64* %514, i64 5
  %516 = load i64, i64* %515, align 8
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %523

518:                                              ; preds = %510
  %519 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0))
  %520 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_MASK, align 4
  %521 = load i32, i32* %31, align 4
  %522 = or i32 %521, %520
  store i32 %522, i32* %31, align 4
  br label %523

523:                                              ; preds = %518, %510
  %524 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %525 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %524, i32 0, i32 0
  %526 = load i64, i64* %525, align 8
  %527 = load i64, i64* @CHIP_CAYMAN, align 8
  %528 = icmp sge i64 %526, %527
  br i1 %528, label %529, label %539

529:                                              ; preds = %523
  %530 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %531 = load i32, i32* %4, align 4
  %532 = call i32 @cayman_cp_int_cntl_setup(%struct.radeon_device* %530, i32 0, i32 %531)
  %533 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %534 = load i32, i32* %5, align 4
  %535 = call i32 @cayman_cp_int_cntl_setup(%struct.radeon_device* %533, i32 1, i32 %534)
  %536 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %537 = load i32, i32* %6, align 4
  %538 = call i32 @cayman_cp_int_cntl_setup(%struct.radeon_device* %536, i32 2, i32 %537)
  br label %543

539:                                              ; preds = %523
  %540 = load i64, i64* @CP_INT_CNTL, align 8
  %541 = load i32, i32* %4, align 4
  %542 = call i32 @WREG32(i64 %540, i32 %541)
  br label %543

543:                                              ; preds = %539, %529
  %544 = load i64, i64* @DMA_CNTL, align 8
  %545 = load i32, i32* %32, align 4
  %546 = call i32 @WREG32(i64 %544, i32 %545)
  %547 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %548 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %547, i32 0, i32 0
  %549 = load i64, i64* %548, align 8
  %550 = load i64, i64* @CHIP_CAYMAN, align 8
  %551 = icmp sge i64 %549, %550
  br i1 %551, label %552, label %556

552:                                              ; preds = %543
  %553 = load i64, i64* @CAYMAN_DMA1_CNTL, align 8
  %554 = load i32, i32* %33, align 4
  %555 = call i32 @WREG32(i64 %553, i32 %554)
  br label %556

556:                                              ; preds = %552, %543
  %557 = load i64, i64* @GRBM_INT_CNTL, align 8
  %558 = load i32, i32* %19, align 4
  %559 = call i32 @WREG32(i64 %557, i32 %558)
  %560 = load i64, i64* @INT_MASK, align 8
  %561 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %562 = add nsw i64 %560, %561
  %563 = load i32, i32* %7, align 4
  %564 = call i32 @WREG32(i64 %562, i32 %563)
  %565 = load i64, i64* @INT_MASK, align 8
  %566 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %567 = add nsw i64 %565, %566
  %568 = load i32, i32* %8, align 4
  %569 = call i32 @WREG32(i64 %567, i32 %568)
  %570 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %571 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 8
  %573 = icmp sge i32 %572, 4
  br i1 %573, label %574, label %585

574:                                              ; preds = %556
  %575 = load i64, i64* @INT_MASK, align 8
  %576 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %577 = add nsw i64 %575, %576
  %578 = load i32, i32* %9, align 4
  %579 = call i32 @WREG32(i64 %577, i32 %578)
  %580 = load i64, i64* @INT_MASK, align 8
  %581 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %582 = add nsw i64 %580, %581
  %583 = load i32, i32* %10, align 4
  %584 = call i32 @WREG32(i64 %582, i32 %583)
  br label %585

585:                                              ; preds = %574, %556
  %586 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %587 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 8
  %589 = icmp sge i32 %588, 6
  br i1 %589, label %590, label %601

590:                                              ; preds = %585
  %591 = load i64, i64* @INT_MASK, align 8
  %592 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %593 = add nsw i64 %591, %592
  %594 = load i32, i32* %11, align 4
  %595 = call i32 @WREG32(i64 %593, i32 %594)
  %596 = load i64, i64* @INT_MASK, align 8
  %597 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %598 = add nsw i64 %596, %597
  %599 = load i32, i32* %12, align 4
  %600 = call i32 @WREG32(i64 %598, i32 %599)
  br label %601

601:                                              ; preds = %590, %585
  %602 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %603 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %604 = add nsw i64 %602, %603
  %605 = load i32, i32* %20, align 4
  %606 = call i32 @WREG32(i64 %604, i32 %605)
  %607 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %608 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %609 = add nsw i64 %607, %608
  %610 = load i32, i32* %21, align 4
  %611 = call i32 @WREG32(i64 %609, i32 %610)
  %612 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %613 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %612, i32 0, i32 1
  %614 = load i32, i32* %613, align 8
  %615 = icmp sge i32 %614, 4
  br i1 %615, label %616, label %627

616:                                              ; preds = %601
  %617 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %618 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %619 = add nsw i64 %617, %618
  %620 = load i32, i32* %22, align 4
  %621 = call i32 @WREG32(i64 %619, i32 %620)
  %622 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %623 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %624 = add nsw i64 %622, %623
  %625 = load i32, i32* %23, align 4
  %626 = call i32 @WREG32(i64 %624, i32 %625)
  br label %627

627:                                              ; preds = %616, %601
  %628 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %629 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 8
  %631 = icmp sge i32 %630, 6
  br i1 %631, label %632, label %643

632:                                              ; preds = %627
  %633 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %634 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %635 = add nsw i64 %633, %634
  %636 = load i32, i32* %24, align 4
  %637 = call i32 @WREG32(i64 %635, i32 %636)
  %638 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %639 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %640 = add nsw i64 %638, %639
  %641 = load i32, i32* %25, align 4
  %642 = call i32 @WREG32(i64 %640, i32 %641)
  br label %643

643:                                              ; preds = %632, %627
  %644 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %645 = load i32, i32* %13, align 4
  %646 = call i32 @WREG32(i64 %644, i32 %645)
  %647 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %648 = load i32, i32* %14, align 4
  %649 = call i32 @WREG32(i64 %647, i32 %648)
  %650 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %651 = load i32, i32* %15, align 4
  %652 = call i32 @WREG32(i64 %650, i32 %651)
  %653 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %654 = load i32, i32* %16, align 4
  %655 = call i32 @WREG32(i64 %653, i32 %654)
  %656 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %657 = load i32, i32* %17, align 4
  %658 = call i32 @WREG32(i64 %656, i32 %657)
  %659 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %660 = load i32, i32* %18, align 4
  %661 = call i32 @WREG32(i64 %659, i32 %660)
  %662 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %663 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %664 = add nsw i64 %662, %663
  %665 = load i32, i32* %26, align 4
  %666 = call i32 @WREG32(i64 %664, i32 %665)
  %667 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %668 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %669 = add nsw i64 %667, %668
  %670 = load i32, i32* %27, align 4
  %671 = call i32 @WREG32(i64 %669, i32 %670)
  %672 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %673 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %674 = add nsw i64 %672, %673
  %675 = load i32, i32* %28, align 4
  %676 = call i32 @WREG32(i64 %674, i32 %675)
  %677 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %678 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %679 = add nsw i64 %677, %678
  %680 = load i32, i32* %29, align 4
  %681 = call i32 @WREG32(i64 %679, i32 %680)
  %682 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %683 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %684 = add nsw i64 %682, %683
  %685 = load i32, i32* %30, align 4
  %686 = call i32 @WREG32(i64 %684, i32 %685)
  %687 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %688 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %689 = add nsw i64 %687, %688
  %690 = load i32, i32* %31, align 4
  %691 = call i32 @WREG32(i64 %689, i32 %690)
  store i32 0, i32* %2, align 4
  br label %692

692:                                              ; preds = %643, %52, %42
  %693 = load i32, i32* %2, align 4
  ret i32 %693
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @r600_disable_interrupts(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_disable_interrupt_state(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @cayman_cp_int_cntl_setup(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
