; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_irq_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_irq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_10__, %struct.TYPE_7__, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32*, i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IH_RB_WPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"r600_irq_process start: rptr %d, wptr %d\0A\00", align 1
@LB_D1_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"IH: D1 vblank\0A\00", align 1
@LB_D1_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"IH: D1 vline\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unhandled interrupt: %d %d\0A\00", align 1
@LB_D2_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"IH: D2 vblank\0A\00", align 1
@LB_D2_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"IH: D2 vline\0A\00", align 1
@DC_HPD1_INTERRUPT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"IH: HPD1\0A\00", align 1
@DC_HPD2_INTERRUPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"IH: HPD2\0A\00", align 1
@DC_HPD3_INTERRUPT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"IH: HPD3\0A\00", align 1
@DC_HPD4_INTERRUPT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"IH: HPD4\0A\00", align 1
@DC_HPD5_INTERRUPT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"IH: HPD5\0A\00", align 1
@DC_HPD6_INTERRUPT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"IH: HPD6\0A\00", align 1
@HDMI0_AZ_FORMAT_WTRIG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"IH: HDMI0\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"IH: HDMI1\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"IH: CP int: 0x%08x\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"IH: CP EOP\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"IH: DMA trap\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"IH: GUI idle\0A\00", align 1
@IH_RB_RPTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_irq_process(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %1
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %2, align 4
  br label %504

23:                                               ; preds = %16
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @IH_RB_WPTR, align 4
  %30 = call i32 @RREG32(i32 %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = call i32 @r600_get_ih_wptr(%struct.radeon_device* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %501, %31
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = call i64 @atomic_xchg(i32* %37, i32 1)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %2, align 4
  br label %504

42:                                               ; preds = %34
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = call i32 (...) @rmb()
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = call i32 @r600_irq_ack(%struct.radeon_device* %51)
  br label %53

53:                                               ; preds = %458, %42
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %467

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = sdiv i32 %58, 4
  store i32 %59, i32* %8, align 4
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = and i32 %68, 255
  store i32 %69, i32* %6, align 4
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = and i32 %79, 268435455
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  switch i32 %81, label %454 [
    i32 1, label %82
    i32 5, label %164
    i32 19, label %246
    i32 21, label %385
    i32 176, label %436
    i32 177, label %436
    i32 178, label %436
    i32 181, label %442
    i32 224, label %447
    i32 233, label %452
  ]

82:                                               ; preds = %57
  %83 = load i32, i32* %7, align 4
  switch i32 %83, label %159 [
    i32 0, label %84
    i32 1, label %137
  ]

84:                                               ; preds = %82
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @LB_D1_VBLANK_INTERRUPT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %136

94:                                               ; preds = %84
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %94
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @drm_handle_vblank(i32 %105, i32 0)
  %107 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %108 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = call i32 @wake_up(i32* %112)
  br label %114

114:                                              ; preds = %102, %94
  %115 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = call i32 @atomic_read(i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %123, i32 0)
  br label %125

125:                                              ; preds = %122, %114
  %126 = load i32, i32* @LB_D1_VBLANK_INTERRUPT, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %127
  store i32 %134, i32* %132, align 8
  %135 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %136

136:                                              ; preds = %125, %84
  br label %163

137:                                              ; preds = %82
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @LB_D1_VLINE_INTERRUPT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %137
  %148 = load i32, i32* @LB_D1_VLINE_INTERRUPT, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, %149
  store i32 %156, i32* %154, align 8
  %157 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %158

158:                                              ; preds = %147, %137
  br label %163

159:                                              ; preds = %82
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %159, %158, %136
  br label %458

164:                                              ; preds = %57
  %165 = load i32, i32* %7, align 4
  switch i32 %165, label %241 [
    i32 0, label %166
    i32 1, label %219
  ]

166:                                              ; preds = %164
  %167 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %168 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @LB_D2_VBLANK_INTERRUPT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %218

176:                                              ; preds = %166
  %177 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %178 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %196

184:                                              ; preds = %176
  %185 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %186 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @drm_handle_vblank(i32 %187, i32 1)
  %189 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %190 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  store i32 1, i32* %191, align 8
  %192 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %193 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = call i32 @wake_up(i32* %194)
  br label %196

196:                                              ; preds = %184, %176
  %197 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %198 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = call i32 @atomic_read(i32* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %196
  %205 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %206 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %205, i32 1)
  br label %207

207:                                              ; preds = %204, %196
  %208 = load i32, i32* @LB_D2_VBLANK_INTERRUPT, align 4
  %209 = xor i32 %208, -1
  %210 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %211 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, %209
  store i32 %216, i32* %214, align 8
  %217 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %218

218:                                              ; preds = %207, %166
  br label %245

219:                                              ; preds = %164
  %220 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %221 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @LB_D2_VLINE_INTERRUPT, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %219
  %230 = load i32, i32* @LB_D2_VLINE_INTERRUPT, align 4
  %231 = xor i32 %230, -1
  %232 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %233 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = and i32 %237, %231
  store i32 %238, i32* %236, align 8
  %239 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %240

240:                                              ; preds = %229, %219
  br label %245

241:                                              ; preds = %164
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* %7, align 4
  %244 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %241, %240, %218
  br label %458

246:                                              ; preds = %57
  %247 = load i32, i32* %7, align 4
  switch i32 %247, label %380 [
    i32 0, label %248
    i32 1, label %270
    i32 4, label %292
    i32 5, label %314
    i32 10, label %336
    i32 12, label %358
  ]

248:                                              ; preds = %246
  %249 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %250 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @DC_HPD1_INTERRUPT, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %248
  %259 = load i32, i32* @DC_HPD1_INTERRUPT, align 4
  %260 = xor i32 %259, -1
  %261 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %262 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, %260
  store i32 %267, i32* %265, align 8
  store i32 1, i32* %9, align 4
  %268 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %269

269:                                              ; preds = %258, %248
  br label %384

270:                                              ; preds = %246
  %271 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %272 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @DC_HPD2_INTERRUPT, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %291

280:                                              ; preds = %270
  %281 = load i32, i32* @DC_HPD2_INTERRUPT, align 4
  %282 = xor i32 %281, -1
  %283 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %284 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = and i32 %288, %282
  store i32 %289, i32* %287, align 8
  store i32 1, i32* %9, align 4
  %290 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %291

291:                                              ; preds = %280, %270
  br label %384

292:                                              ; preds = %246
  %293 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %294 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %293, i32 0, i32 3
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @DC_HPD3_INTERRUPT, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %313

302:                                              ; preds = %292
  %303 = load i32, i32* @DC_HPD3_INTERRUPT, align 4
  %304 = xor i32 %303, -1
  %305 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %306 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = and i32 %310, %304
  store i32 %311, i32* %309, align 4
  store i32 1, i32* %9, align 4
  %312 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %313

313:                                              ; preds = %302, %292
  br label %384

314:                                              ; preds = %246
  %315 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %316 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @DC_HPD4_INTERRUPT, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %335

324:                                              ; preds = %314
  %325 = load i32, i32* @DC_HPD4_INTERRUPT, align 4
  %326 = xor i32 %325, -1
  %327 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %328 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %327, i32 0, i32 3
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = and i32 %332, %326
  store i32 %333, i32* %331, align 4
  store i32 1, i32* %9, align 4
  %334 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %335

335:                                              ; preds = %324, %314
  br label %384

336:                                              ; preds = %246
  %337 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %338 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @DC_HPD5_INTERRUPT, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %357

346:                                              ; preds = %336
  %347 = load i32, i32* @DC_HPD5_INTERRUPT, align 4
  %348 = xor i32 %347, -1
  %349 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %350 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %349, i32 0, i32 3
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = and i32 %354, %348
  store i32 %355, i32* %353, align 8
  store i32 1, i32* %9, align 4
  %356 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %357

357:                                              ; preds = %346, %336
  br label %384

358:                                              ; preds = %246
  %359 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %360 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %359, i32 0, i32 3
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @DC_HPD6_INTERRUPT, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %379

368:                                              ; preds = %358
  %369 = load i32, i32* @DC_HPD6_INTERRUPT, align 4
  %370 = xor i32 %369, -1
  %371 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %372 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %371, i32 0, i32 3
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = and i32 %376, %370
  store i32 %377, i32* %375, align 8
  store i32 1, i32* %9, align 4
  %378 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %379

379:                                              ; preds = %368, %358
  br label %384

380:                                              ; preds = %246
  %381 = load i32, i32* %6, align 4
  %382 = load i32, i32* %7, align 4
  %383 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %381, i32 %382)
  br label %384

384:                                              ; preds = %380, %379, %357, %335, %313, %291, %269
  br label %458

385:                                              ; preds = %57
  %386 = load i32, i32* %7, align 4
  switch i32 %386, label %431 [
    i32 4, label %387
    i32 5, label %409
  ]

387:                                              ; preds = %385
  %388 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %389 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %388, i32 0, i32 3
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %408

397:                                              ; preds = %387
  %398 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG, align 4
  %399 = xor i32 %398, -1
  %400 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %401 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %400, i32 0, i32 3
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 4
  %406 = and i32 %405, %399
  store i32 %406, i32* %404, align 4
  store i32 1, i32* %10, align 4
  %407 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %408

408:                                              ; preds = %397, %387
  br label %435

409:                                              ; preds = %385
  %410 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %411 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %410, i32 0, i32 3
  %412 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %430

419:                                              ; preds = %409
  %420 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG, align 4
  %421 = xor i32 %420, -1
  %422 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %423 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %422, i32 0, i32 3
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i32 0, i32 4
  %427 = load i32, i32* %426, align 8
  %428 = and i32 %427, %421
  store i32 %428, i32* %426, align 8
  store i32 1, i32* %10, align 4
  %429 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %430

430:                                              ; preds = %419, %409
  br label %435

431:                                              ; preds = %385
  %432 = load i32, i32* %6, align 4
  %433 = load i32, i32* %7, align 4
  %434 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %432, i32 %433)
  br label %435

435:                                              ; preds = %431, %430, %408
  br label %458

436:                                              ; preds = %57, %57, %57
  %437 = load i32, i32* %7, align 4
  %438 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %437)
  %439 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %440 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %441 = call i32 @radeon_fence_process(%struct.radeon_device* %439, i32 %440)
  br label %458

442:                                              ; preds = %57
  %443 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %444 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %445 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %446 = call i32 @radeon_fence_process(%struct.radeon_device* %444, i32 %445)
  br label %458

447:                                              ; preds = %57
  %448 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %449 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %450 = load i32, i32* @R600_RING_TYPE_DMA_INDEX, align 4
  %451 = call i32 @radeon_fence_process(%struct.radeon_device* %449, i32 %450)
  br label %458

452:                                              ; preds = %57
  %453 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  br label %458

454:                                              ; preds = %57
  %455 = load i32, i32* %6, align 4
  %456 = load i32, i32* %7, align 4
  %457 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %455, i32 %456)
  br label %458

458:                                              ; preds = %454, %452, %447, %442, %436, %435, %384, %245, %163
  %459 = load i32, i32* %5, align 4
  %460 = add nsw i32 %459, 16
  store i32 %460, i32* %5, align 4
  %461 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %462 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* %5, align 4
  %466 = and i32 %465, %464
  store i32 %466, i32* %5, align 4
  br label %53

467:                                              ; preds = %53
  %468 = load i32, i32* %9, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %467
  %471 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %472 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %471, i32 0, i32 2
  %473 = call i32 @schedule_work(i32* %472)
  br label %474

474:                                              ; preds = %470, %467
  %475 = load i32, i32* %10, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %481

477:                                              ; preds = %474
  %478 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %479 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %478, i32 0, i32 1
  %480 = call i32 @schedule_work(i32* %479)
  br label %481

481:                                              ; preds = %477, %474
  %482 = load i32, i32* %5, align 4
  %483 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %484 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %484, i32 0, i32 0
  store i32 %482, i32* %485, align 8
  %486 = load i32, i32* @IH_RB_RPTR, align 4
  %487 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %488 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = call i32 @WREG32(i32 %486, i32 %490)
  %492 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %493 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %493, i32 0, i32 2
  %495 = call i32 @atomic_set(i32* %494, i32 0)
  %496 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %497 = call i32 @r600_get_ih_wptr(%struct.radeon_device* %496)
  store i32 %497, i32* %4, align 4
  %498 = load i32, i32* %4, align 4
  %499 = load i32, i32* %5, align 4
  %500 = icmp ne i32 %498, %499
  br i1 %500, label %501, label %502

501:                                              ; preds = %481
  br label %34

502:                                              ; preds = %481
  %503 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %503, i32* %2, align 4
  br label %504

504:                                              ; preds = %502, %40, %21
  %505 = load i32, i32* %2, align 4
  ret i32 %505
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @r600_get_ih_wptr(%struct.radeon_device*) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @r600_irq_ack(%struct.radeon_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @drm_handle_vblank(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @radeon_crtc_handle_flip(%struct.radeon_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @radeon_fence_process(%struct.radeon_device*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
