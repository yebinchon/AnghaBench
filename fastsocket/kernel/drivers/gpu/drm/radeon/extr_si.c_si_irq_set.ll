; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_irq_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_irq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64*, i32*, i64*, i32*, i32 }
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
@DMA_CNTL = common dso_local global i64 0, align 8
@DMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@TRAP_ENABLE = common dso_local global i32 0, align 4
@DMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"si_irq_set: sw int gfx\0A\00", align 1
@TIME_STAMP_INT_ENABLE = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"si_irq_set: sw int cp1\0A\00", align 1
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"si_irq_set: sw int cp2\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"si_irq_set: sw int dma\0A\00", align 1
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"si_irq_set: sw int dma1\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"si_irq_set: vblank 0\0A\00", align 1
@VBLANK_INT_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"si_irq_set: vblank 1\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"si_irq_set: vblank 2\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"si_irq_set: vblank 3\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"si_irq_set: vblank 4\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"si_irq_set: vblank 5\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"si_irq_set: hpd 1\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"si_irq_set: hpd 2\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"si_irq_set: hpd 3\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"si_irq_set: hpd 4\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"si_irq_set: hpd 5\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"si_irq_set: hpd 6\0A\00", align 1
@CP_INT_CNTL_RING0 = common dso_local global i64 0, align 8
@CP_INT_CNTL_RING1 = common dso_local global i64 0, align 8
@CP_INT_CNTL_RING2 = common dso_local global i64 0, align 8
@GRBM_INT_CNTL = common dso_local global i64 0, align 8
@INT_MASK = common dso_local global i64 0, align 8
@EVERGREEN_CRTC0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC2_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC3_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC4_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC5_REGISTER_OFFSET = common dso_local global i64 0, align 8
@GRPH_INT_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_irq_set(%struct.radeon_device* %0) #0 {
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
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %28 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %29 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %4, align 4
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
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %1
  %37 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %494

40:                                               ; preds = %1
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = call i32 @si_disable_interrupts(%struct.radeon_device* %47)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = call i32 @si_disable_interrupt_state(%struct.radeon_device* %49)
  store i32 0, i32* %2, align 4
  br label %494

51:                                               ; preds = %40
  %52 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %53 = call i32 @RREG32(i64 %52)
  %54 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  store i32 %56, i32* %13, align 4
  %57 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %58 = call i32 @RREG32(i64 %57)
  %59 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  store i32 %61, i32* %14, align 4
  %62 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %63 = call i32 @RREG32(i64 %62)
  %64 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  store i32 %66, i32* %15, align 4
  %67 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %68 = call i32 @RREG32(i64 %67)
  %69 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  store i32 %71, i32* %16, align 4
  %72 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %73 = call i32 @RREG32(i64 %72)
  %74 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  store i32 %76, i32* %17, align 4
  %77 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %78 = call i32 @RREG32(i64 %77)
  %79 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  store i32 %81, i32* %18, align 4
  %82 = load i64, i64* @DMA_CNTL, align 8
  %83 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @RREG32(i64 %84)
  %86 = load i32, i32* @TRAP_ENABLE, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  store i32 %88, i32* %26, align 4
  %89 = load i64, i64* @DMA_CNTL, align 8
  %90 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @RREG32(i64 %91)
  %93 = load i32, i32* @TRAP_ENABLE, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %92, %94
  store i32 %95, i32* %27, align 4
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = call i64 @atomic_read(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %51
  %105 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %107 = load i32, i32* %4, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %104, %51
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = call i64 @atomic_read(i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %109
  %119 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %121 = load i32, i32* %5, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %118, %109
  %124 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = call i64 @atomic_read(i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %123
  %133 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %132, %123
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = call i64 @atomic_read(i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %137
  %147 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %148 = load i32, i32* @TRAP_ENABLE, align 4
  %149 = load i32, i32* %26, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %26, align 4
  br label %151

151:                                              ; preds = %146, %137
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = call i64 @atomic_read(i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %151
  %161 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %162 = load i32, i32* @TRAP_ENABLE, align 4
  %163 = load i32, i32* %27, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %27, align 4
  br label %165

165:                                              ; preds = %160, %151
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %165
  %174 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %175 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = call i64 @atomic_read(i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %173, %165
  %182 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %183 = load i32, i32* @VBLANK_INT_MASK, align 4
  %184 = load i32, i32* %7, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %181, %173
  %187 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %188 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  %190 = load i64*, i64** %189, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %186
  %195 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %196 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = call i64 @atomic_read(i32* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %194, %186
  %203 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %204 = load i32, i32* @VBLANK_INT_MASK, align 4
  %205 = load i32, i32* %8, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %8, align 4
  br label %207

207:                                              ; preds = %202, %194
  %208 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %209 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %223, label %215

215:                                              ; preds = %207
  %216 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %217 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 2
  %221 = call i64 @atomic_read(i32* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %215, %207
  %224 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %225 = load i32, i32* @VBLANK_INT_MASK, align 4
  %226 = load i32, i32* %9, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %9, align 4
  br label %228

228:                                              ; preds = %223, %215
  %229 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %230 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 2
  %232 = load i64*, i64** %231, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 3
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %228
  %237 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %238 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 3
  %242 = call i64 @atomic_read(i32* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %236, %228
  %245 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %246 = load i32, i32* @VBLANK_INT_MASK, align 4
  %247 = load i32, i32* %10, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %10, align 4
  br label %249

249:                                              ; preds = %244, %236
  %250 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %251 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 2
  %253 = load i64*, i64** %252, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 4
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %265, label %257

257:                                              ; preds = %249
  %258 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %259 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 4
  %263 = call i64 @atomic_read(i32* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %257, %249
  %266 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %267 = load i32, i32* @VBLANK_INT_MASK, align 4
  %268 = load i32, i32* %11, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %11, align 4
  br label %270

270:                                              ; preds = %265, %257
  %271 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %272 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 2
  %274 = load i64*, i64** %273, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 5
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %286, label %278

278:                                              ; preds = %270
  %279 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %280 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 5
  %284 = call i64 @atomic_read(i32* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %278, %270
  %287 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %288 = load i32, i32* @VBLANK_INT_MASK, align 4
  %289 = load i32, i32* %12, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %12, align 4
  br label %291

291:                                              ; preds = %286, %278
  %292 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %293 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  %295 = load i64*, i64** %294, align 8
  %296 = getelementptr inbounds i64, i64* %295, i64 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %291
  %300 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %301 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %302 = load i32, i32* %13, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %13, align 4
  br label %304

304:                                              ; preds = %299, %291
  %305 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %306 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = load i64*, i64** %307, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 1
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %304
  %313 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %314 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %315 = load i32, i32* %14, align 4
  %316 = or i32 %315, %314
  store i32 %316, i32* %14, align 4
  br label %317

317:                                              ; preds = %312, %304
  %318 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %319 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i64*, i64** %320, align 8
  %322 = getelementptr inbounds i64, i64* %321, i64 2
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %317
  %326 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %327 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %328 = load i32, i32* %15, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %15, align 4
  br label %330

330:                                              ; preds = %325, %317
  %331 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %332 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 0
  %334 = load i64*, i64** %333, align 8
  %335 = getelementptr inbounds i64, i64* %334, i64 3
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %330
  %339 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %340 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %341 = load i32, i32* %16, align 4
  %342 = or i32 %341, %340
  store i32 %342, i32* %16, align 4
  br label %343

343:                                              ; preds = %338, %330
  %344 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %345 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 0
  %347 = load i64*, i64** %346, align 8
  %348 = getelementptr inbounds i64, i64* %347, i64 4
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %343
  %352 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %353 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %354 = load i32, i32* %17, align 4
  %355 = or i32 %354, %353
  store i32 %355, i32* %17, align 4
  br label %356

356:                                              ; preds = %351, %343
  %357 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %358 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 0
  %360 = load i64*, i64** %359, align 8
  %361 = getelementptr inbounds i64, i64* %360, i64 5
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %356
  %365 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %366 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %367 = load i32, i32* %18, align 4
  %368 = or i32 %367, %366
  store i32 %368, i32* %18, align 4
  br label %369

369:                                              ; preds = %364, %356
  %370 = load i64, i64* @CP_INT_CNTL_RING0, align 8
  %371 = load i32, i32* %4, align 4
  %372 = call i32 @WREG32(i64 %370, i32 %371)
  %373 = load i64, i64* @CP_INT_CNTL_RING1, align 8
  %374 = load i32, i32* %5, align 4
  %375 = call i32 @WREG32(i64 %373, i32 %374)
  %376 = load i64, i64* @CP_INT_CNTL_RING2, align 8
  %377 = load i32, i32* %6, align 4
  %378 = call i32 @WREG32(i64 %376, i32 %377)
  %379 = load i64, i64* @DMA_CNTL, align 8
  %380 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %381 = add nsw i64 %379, %380
  %382 = load i32, i32* %26, align 4
  %383 = call i32 @WREG32(i64 %381, i32 %382)
  %384 = load i64, i64* @DMA_CNTL, align 8
  %385 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %386 = add nsw i64 %384, %385
  %387 = load i32, i32* %27, align 4
  %388 = call i32 @WREG32(i64 %386, i32 %387)
  %389 = load i64, i64* @GRBM_INT_CNTL, align 8
  %390 = load i32, i32* %19, align 4
  %391 = call i32 @WREG32(i64 %389, i32 %390)
  %392 = load i64, i64* @INT_MASK, align 8
  %393 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %394 = add nsw i64 %392, %393
  %395 = load i32, i32* %7, align 4
  %396 = call i32 @WREG32(i64 %394, i32 %395)
  %397 = load i64, i64* @INT_MASK, align 8
  %398 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %399 = add nsw i64 %397, %398
  %400 = load i32, i32* %8, align 4
  %401 = call i32 @WREG32(i64 %399, i32 %400)
  %402 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %403 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = icmp sge i32 %404, 4
  br i1 %405, label %406, label %417

406:                                              ; preds = %369
  %407 = load i64, i64* @INT_MASK, align 8
  %408 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %409 = add nsw i64 %407, %408
  %410 = load i32, i32* %9, align 4
  %411 = call i32 @WREG32(i64 %409, i32 %410)
  %412 = load i64, i64* @INT_MASK, align 8
  %413 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %414 = add nsw i64 %412, %413
  %415 = load i32, i32* %10, align 4
  %416 = call i32 @WREG32(i64 %414, i32 %415)
  br label %417

417:                                              ; preds = %406, %369
  %418 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %419 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = icmp sge i32 %420, 6
  br i1 %421, label %422, label %433

422:                                              ; preds = %417
  %423 = load i64, i64* @INT_MASK, align 8
  %424 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %425 = add nsw i64 %423, %424
  %426 = load i32, i32* %11, align 4
  %427 = call i32 @WREG32(i64 %425, i32 %426)
  %428 = load i64, i64* @INT_MASK, align 8
  %429 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %430 = add nsw i64 %428, %429
  %431 = load i32, i32* %12, align 4
  %432 = call i32 @WREG32(i64 %430, i32 %431)
  br label %433

433:                                              ; preds = %422, %417
  %434 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %435 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %436 = add nsw i64 %434, %435
  %437 = load i32, i32* %20, align 4
  %438 = call i32 @WREG32(i64 %436, i32 %437)
  %439 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %440 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %441 = add nsw i64 %439, %440
  %442 = load i32, i32* %21, align 4
  %443 = call i32 @WREG32(i64 %441, i32 %442)
  %444 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %445 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = icmp sge i32 %446, 4
  br i1 %447, label %448, label %459

448:                                              ; preds = %433
  %449 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %450 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %451 = add nsw i64 %449, %450
  %452 = load i32, i32* %22, align 4
  %453 = call i32 @WREG32(i64 %451, i32 %452)
  %454 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %455 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %456 = add nsw i64 %454, %455
  %457 = load i32, i32* %23, align 4
  %458 = call i32 @WREG32(i64 %456, i32 %457)
  br label %459

459:                                              ; preds = %448, %433
  %460 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %461 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = icmp sge i32 %462, 6
  br i1 %463, label %464, label %475

464:                                              ; preds = %459
  %465 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %466 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %467 = add nsw i64 %465, %466
  %468 = load i32, i32* %24, align 4
  %469 = call i32 @WREG32(i64 %467, i32 %468)
  %470 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %471 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %472 = add nsw i64 %470, %471
  %473 = load i32, i32* %25, align 4
  %474 = call i32 @WREG32(i64 %472, i32 %473)
  br label %475

475:                                              ; preds = %464, %459
  %476 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %477 = load i32, i32* %13, align 4
  %478 = call i32 @WREG32(i64 %476, i32 %477)
  %479 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %480 = load i32, i32* %14, align 4
  %481 = call i32 @WREG32(i64 %479, i32 %480)
  %482 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %483 = load i32, i32* %15, align 4
  %484 = call i32 @WREG32(i64 %482, i32 %483)
  %485 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %486 = load i32, i32* %16, align 4
  %487 = call i32 @WREG32(i64 %485, i32 %486)
  %488 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %489 = load i32, i32* %17, align 4
  %490 = call i32 @WREG32(i64 %488, i32 %489)
  %491 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %492 = load i32, i32* %18, align 4
  %493 = call i32 @WREG32(i64 %491, i32 %492)
  store i32 0, i32* %2, align 4
  br label %494

494:                                              ; preds = %475, %46, %36
  %495 = load i32, i32* %2, align 4
  ret i32 %495
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @si_disable_interrupts(%struct.radeon_device*) #1

declare dso_local i32 @si_disable_interrupt_state(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
