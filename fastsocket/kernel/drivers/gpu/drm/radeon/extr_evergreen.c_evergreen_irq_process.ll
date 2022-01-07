; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_irq_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_irq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__, i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32*, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
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
@LB_D3_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"IH: D3 vblank\0A\00", align 1
@LB_D3_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"IH: D3 vline\0A\00", align 1
@LB_D4_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"IH: D4 vblank\0A\00", align 1
@LB_D4_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"IH: D4 vline\0A\00", align 1
@LB_D5_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"IH: D5 vblank\0A\00", align 1
@LB_D5_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"IH: D5 vline\0A\00", align 1
@LB_D6_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"IH: D6 vblank\0A\00", align 1
@LB_D6_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"IH: D6 vline\0A\00", align 1
@DC_HPD1_INTERRUPT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"IH: HPD1\0A\00", align 1
@DC_HPD2_INTERRUPT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"IH: HPD2\0A\00", align 1
@DC_HPD3_INTERRUPT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"IH: HPD3\0A\00", align 1
@DC_HPD4_INTERRUPT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"IH: HPD4\0A\00", align 1
@DC_HPD5_INTERRUPT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"IH: HPD5\0A\00", align 1
@DC_HPD6_INTERRUPT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"IH: HPD6\0A\00", align 1
@AFMT_AZ_FORMAT_WTRIG = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"IH: HDMI0\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"IH: HDMI1\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"IH: HDMI2\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"IH: HDMI3\0A\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"IH: HDMI4\0A\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"IH: HDMI5\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"GPU fault detected: %d 0x%08x\0A\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", align 1
@VM_CONTEXT1_PROTECTION_FAULT_ADDR = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", align 1
@VM_CONTEXT1_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL2 = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [20 x i8] c"IH: CP int: 0x%08x\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"IH: CP EOP\0A\00", align 1
@CHIP_CAYMAN = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [14 x i8] c"IH: DMA trap\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [14 x i8] c"IH: GUI idle\0A\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"IH: DMA1 trap\0A\00", align 1
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i32 0, align 4
@IH_RB_RPTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_irq_process(%struct.radeon_device* %0) #0 {
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
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %1
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %2, align 4
  br label %967

23:                                               ; preds = %16
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = call i32 @evergreen_get_ih_wptr(%struct.radeon_device* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %964, %23
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = call i64 @atomic_xchg(i32* %29, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %2, align 4
  br label %967

34:                                               ; preds = %26
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = call i32 (...) @rmb()
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = call i32 @evergreen_irq_ack(%struct.radeon_device* %43)
  br label %45

45:                                               ; preds = %921, %34
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %930

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = sdiv i32 %50, 4
  store i32 %51, i32* %8, align 4
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = and i32 %60, 255
  store i32 %61, i32* %6, align 4
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = and i32 %71, 268435455
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  switch i32 %73, label %917 [
    i32 1, label %74
    i32 2, label %156
    i32 3, label %238
    i32 4, label %320
    i32 5, label %402
    i32 6, label %484
    i32 42, label %566
    i32 44, label %705
    i32 146, label %844
    i32 147, label %844
    i32 176, label %865
    i32 177, label %865
    i32 178, label %865
    i32 181, label %871
    i32 224, label %898
    i32 233, label %903
    i32 244, label %905
  ]

74:                                               ; preds = %49
  %75 = load i32, i32* %7, align 4
  switch i32 %75, label %151 [
    i32 0, label %76
    i32 1, label %129
  ]

76:                                               ; preds = %74
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @LB_D1_VBLANK_INTERRUPT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %128

86:                                               ; preds = %76
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %86
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @drm_handle_vblank(i32 %97, i32 0)
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = call i32 @wake_up(i32* %104)
  br label %106

106:                                              ; preds = %94, %86
  %107 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %108 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = call i32 @atomic_read(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %116 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %115, i32 0)
  br label %117

117:                                              ; preds = %114, %106
  %118 = load i32, i32* @LB_D1_VBLANK_INTERRUPT, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %119
  store i32 %126, i32* %124, align 8
  %127 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %117, %76
  br label %155

129:                                              ; preds = %74
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @LB_D1_VLINE_INTERRUPT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %129
  %140 = load i32, i32* @LB_D1_VLINE_INTERRUPT, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %141
  store i32 %148, i32* %146, align 8
  %149 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %150

150:                                              ; preds = %139, %129
  br label %155

151:                                              ; preds = %74
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %7, align 4
  %154 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %150, %128
  br label %921

156:                                              ; preds = %49
  %157 = load i32, i32* %7, align 4
  switch i32 %157, label %233 [
    i32 0, label %158
    i32 1, label %211
  ]

158:                                              ; preds = %156
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @LB_D2_VBLANK_INTERRUPT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %210

168:                                              ; preds = %158
  %169 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %170 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %168
  %177 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %178 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @drm_handle_vblank(i32 %179, i32 1)
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %181, i32 0, i32 6
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  store i32 1, i32* %183, align 8
  %184 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %185 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = call i32 @wake_up(i32* %186)
  br label %188

188:                                              ; preds = %176, %168
  %189 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %190 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = call i32 @atomic_read(i32* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %188
  %197 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %198 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %197, i32 1)
  br label %199

199:                                              ; preds = %196, %188
  %200 = load i32, i32* @LB_D2_VBLANK_INTERRUPT, align 4
  %201 = xor i32 %200, -1
  %202 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %203 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, %201
  store i32 %208, i32* %206, align 4
  %209 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %210

210:                                              ; preds = %199, %158
  br label %237

211:                                              ; preds = %156
  %212 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %213 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @LB_D2_VLINE_INTERRUPT, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %211
  %222 = load i32, i32* @LB_D2_VLINE_INTERRUPT, align 4
  %223 = xor i32 %222, -1
  %224 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, %223
  store i32 %230, i32* %228, align 4
  %231 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %232

232:                                              ; preds = %221, %211
  br label %237

233:                                              ; preds = %156
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* %7, align 4
  %236 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %233, %232, %210
  br label %921

238:                                              ; preds = %49
  %239 = load i32, i32* %7, align 4
  switch i32 %239, label %315 [
    i32 0, label %240
    i32 1, label %293
  ]

240:                                              ; preds = %238
  %241 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %242 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @LB_D3_VBLANK_INTERRUPT, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %292

250:                                              ; preds = %240
  %251 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %252 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 3
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 2
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %250
  %259 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %260 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @drm_handle_vblank(i32 %261, i32 2)
  %263 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %264 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %263, i32 0, i32 6
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  store i32 1, i32* %265, align 8
  %266 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %267 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 2
  %269 = call i32 @wake_up(i32* %268)
  br label %270

270:                                              ; preds = %258, %250
  %271 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %272 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %271, i32 0, i32 5
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 2
  %276 = call i32 @atomic_read(i32* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %270
  %279 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %280 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %279, i32 2)
  br label %281

281:                                              ; preds = %278, %270
  %282 = load i32, i32* @LB_D3_VBLANK_INTERRUPT, align 4
  %283 = xor i32 %282, -1
  %284 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %285 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %284, i32 0, i32 5
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = and i32 %289, %283
  store i32 %290, i32* %288, align 8
  %291 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %292

292:                                              ; preds = %281, %240
  br label %319

293:                                              ; preds = %238
  %294 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %295 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %294, i32 0, i32 5
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @LB_D3_VLINE_INTERRUPT, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %314

303:                                              ; preds = %293
  %304 = load i32, i32* @LB_D3_VLINE_INTERRUPT, align 4
  %305 = xor i32 %304, -1
  %306 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %307 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %306, i32 0, i32 5
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = and i32 %311, %305
  store i32 %312, i32* %310, align 8
  %313 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %314

314:                                              ; preds = %303, %293
  br label %319

315:                                              ; preds = %238
  %316 = load i32, i32* %6, align 4
  %317 = load i32, i32* %7, align 4
  %318 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %316, i32 %317)
  br label %319

319:                                              ; preds = %315, %314, %292
  br label %921

320:                                              ; preds = %49
  %321 = load i32, i32* %7, align 4
  switch i32 %321, label %397 [
    i32 0, label %322
    i32 1, label %375
  ]

322:                                              ; preds = %320
  %323 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %324 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %323, i32 0, i32 5
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @LB_D4_VBLANK_INTERRUPT, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %374

332:                                              ; preds = %322
  %333 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %334 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %333, i32 0, i32 5
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 3
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 3
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %352

340:                                              ; preds = %332
  %341 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %342 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %341, i32 0, i32 7
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @drm_handle_vblank(i32 %343, i32 3)
  %345 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %346 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %345, i32 0, i32 6
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 0
  store i32 1, i32* %347, align 8
  %348 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %349 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 2
  %351 = call i32 @wake_up(i32* %350)
  br label %352

352:                                              ; preds = %340, %332
  %353 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %354 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %353, i32 0, i32 5
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 1
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 3
  %358 = call i32 @atomic_read(i32* %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %352
  %361 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %362 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %361, i32 3)
  br label %363

363:                                              ; preds = %360, %352
  %364 = load i32, i32* @LB_D4_VBLANK_INTERRUPT, align 4
  %365 = xor i32 %364, -1
  %366 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %367 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %366, i32 0, i32 5
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = and i32 %371, %365
  store i32 %372, i32* %370, align 4
  %373 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %374

374:                                              ; preds = %363, %322
  br label %401

375:                                              ; preds = %320
  %376 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %377 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %376, i32 0, i32 5
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @LB_D4_VLINE_INTERRUPT, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %396

385:                                              ; preds = %375
  %386 = load i32, i32* @LB_D4_VLINE_INTERRUPT, align 4
  %387 = xor i32 %386, -1
  %388 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %389 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %388, i32 0, i32 5
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = and i32 %393, %387
  store i32 %394, i32* %392, align 4
  %395 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %396

396:                                              ; preds = %385, %375
  br label %401

397:                                              ; preds = %320
  %398 = load i32, i32* %6, align 4
  %399 = load i32, i32* %7, align 4
  %400 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %398, i32 %399)
  br label %401

401:                                              ; preds = %397, %396, %374
  br label %921

402:                                              ; preds = %49
  %403 = load i32, i32* %7, align 4
  switch i32 %403, label %479 [
    i32 0, label %404
    i32 1, label %457
  ]

404:                                              ; preds = %402
  %405 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %406 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %405, i32 0, i32 5
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %408, i32 0, i32 4
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @LB_D5_VBLANK_INTERRUPT, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %456

414:                                              ; preds = %404
  %415 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %416 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %415, i32 0, i32 5
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 3
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 4
  %420 = load i32, i32* %419, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %434

422:                                              ; preds = %414
  %423 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %424 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %423, i32 0, i32 7
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @drm_handle_vblank(i32 %425, i32 4)
  %427 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %428 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %427, i32 0, i32 6
  %429 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %428, i32 0, i32 0
  store i32 1, i32* %429, align 8
  %430 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %431 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %430, i32 0, i32 5
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i32 0, i32 2
  %433 = call i32 @wake_up(i32* %432)
  br label %434

434:                                              ; preds = %422, %414
  %435 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %436 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %435, i32 0, i32 5
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 1
  %438 = load i32*, i32** %437, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 4
  %440 = call i32 @atomic_read(i32* %439)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %434
  %443 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %444 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %443, i32 4)
  br label %445

445:                                              ; preds = %442, %434
  %446 = load i32, i32* @LB_D5_VBLANK_INTERRUPT, align 4
  %447 = xor i32 %446, -1
  %448 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %449 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %448, i32 0, i32 5
  %450 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %451, i32 0, i32 4
  %453 = load i32, i32* %452, align 8
  %454 = and i32 %453, %447
  store i32 %454, i32* %452, align 8
  %455 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %456

456:                                              ; preds = %445, %404
  br label %483

457:                                              ; preds = %402
  %458 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %459 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %458, i32 0, i32 5
  %460 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %461, i32 0, i32 4
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @LB_D5_VLINE_INTERRUPT, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %478

467:                                              ; preds = %457
  %468 = load i32, i32* @LB_D5_VLINE_INTERRUPT, align 4
  %469 = xor i32 %468, -1
  %470 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %471 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %470, i32 0, i32 5
  %472 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %473, i32 0, i32 4
  %475 = load i32, i32* %474, align 8
  %476 = and i32 %475, %469
  store i32 %476, i32* %474, align 8
  %477 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %478

478:                                              ; preds = %467, %457
  br label %483

479:                                              ; preds = %402
  %480 = load i32, i32* %6, align 4
  %481 = load i32, i32* %7, align 4
  %482 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %480, i32 %481)
  br label %483

483:                                              ; preds = %479, %478, %456
  br label %921

484:                                              ; preds = %49
  %485 = load i32, i32* %7, align 4
  switch i32 %485, label %561 [
    i32 0, label %486
    i32 1, label %539
  ]

486:                                              ; preds = %484
  %487 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %488 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %487, i32 0, i32 5
  %489 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 5
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* @LB_D6_VBLANK_INTERRUPT, align 4
  %494 = and i32 %492, %493
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %538

496:                                              ; preds = %486
  %497 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %498 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %497, i32 0, i32 5
  %499 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %498, i32 0, i32 3
  %500 = load i32*, i32** %499, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 5
  %502 = load i32, i32* %501, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %516

504:                                              ; preds = %496
  %505 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %506 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %505, i32 0, i32 7
  %507 = load i32, i32* %506, align 4
  %508 = call i32 @drm_handle_vblank(i32 %507, i32 5)
  %509 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %510 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %509, i32 0, i32 6
  %511 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %510, i32 0, i32 0
  store i32 1, i32* %511, align 8
  %512 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %513 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %512, i32 0, i32 5
  %514 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %513, i32 0, i32 2
  %515 = call i32 @wake_up(i32* %514)
  br label %516

516:                                              ; preds = %504, %496
  %517 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %518 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %517, i32 0, i32 5
  %519 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %518, i32 0, i32 1
  %520 = load i32*, i32** %519, align 8
  %521 = getelementptr inbounds i32, i32* %520, i64 5
  %522 = call i32 @atomic_read(i32* %521)
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %527

524:                                              ; preds = %516
  %525 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %526 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %525, i32 5)
  br label %527

527:                                              ; preds = %524, %516
  %528 = load i32, i32* @LB_D6_VBLANK_INTERRUPT, align 4
  %529 = xor i32 %528, -1
  %530 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %531 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %530, i32 0, i32 5
  %532 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %533, i32 0, i32 5
  %535 = load i32, i32* %534, align 4
  %536 = and i32 %535, %529
  store i32 %536, i32* %534, align 4
  %537 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %538

538:                                              ; preds = %527, %486
  br label %565

539:                                              ; preds = %484
  %540 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %541 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %540, i32 0, i32 5
  %542 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %543, i32 0, i32 5
  %545 = load i32, i32* %544, align 4
  %546 = load i32, i32* @LB_D6_VLINE_INTERRUPT, align 4
  %547 = and i32 %545, %546
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %560

549:                                              ; preds = %539
  %550 = load i32, i32* @LB_D6_VLINE_INTERRUPT, align 4
  %551 = xor i32 %550, -1
  %552 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %553 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %552, i32 0, i32 5
  %554 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %555, i32 0, i32 5
  %557 = load i32, i32* %556, align 4
  %558 = and i32 %557, %551
  store i32 %558, i32* %556, align 4
  %559 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %560

560:                                              ; preds = %549, %539
  br label %565

561:                                              ; preds = %484
  %562 = load i32, i32* %6, align 4
  %563 = load i32, i32* %7, align 4
  %564 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %562, i32 %563)
  br label %565

565:                                              ; preds = %561, %560, %538
  br label %921

566:                                              ; preds = %49
  %567 = load i32, i32* %7, align 4
  switch i32 %567, label %700 [
    i32 0, label %568
    i32 1, label %590
    i32 2, label %612
    i32 3, label %634
    i32 4, label %656
    i32 5, label %678
  ]

568:                                              ; preds = %566
  %569 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %570 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %569, i32 0, i32 5
  %571 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %570, i32 0, i32 0
  %572 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %571, i32 0, i32 0
  %573 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 8
  %575 = load i32, i32* @DC_HPD1_INTERRUPT, align 4
  %576 = and i32 %574, %575
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %589

578:                                              ; preds = %568
  %579 = load i32, i32* @DC_HPD1_INTERRUPT, align 4
  %580 = xor i32 %579, -1
  %581 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %582 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %581, i32 0, i32 5
  %583 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 8
  %587 = and i32 %586, %580
  store i32 %587, i32* %585, align 8
  store i32 1, i32* %9, align 4
  %588 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %589

589:                                              ; preds = %578, %568
  br label %704

590:                                              ; preds = %566
  %591 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %592 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %591, i32 0, i32 5
  %593 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %592, i32 0, i32 0
  %594 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %593, i32 0, i32 0
  %595 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %594, i32 0, i32 1
  %596 = load i32, i32* %595, align 4
  %597 = load i32, i32* @DC_HPD2_INTERRUPT, align 4
  %598 = and i32 %596, %597
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %611

600:                                              ; preds = %590
  %601 = load i32, i32* @DC_HPD2_INTERRUPT, align 4
  %602 = xor i32 %601, -1
  %603 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %604 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %603, i32 0, i32 5
  %605 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %604, i32 0, i32 0
  %606 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %605, i32 0, i32 0
  %607 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %606, i32 0, i32 1
  %608 = load i32, i32* %607, align 4
  %609 = and i32 %608, %602
  store i32 %609, i32* %607, align 4
  store i32 1, i32* %9, align 4
  %610 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %611

611:                                              ; preds = %600, %590
  br label %704

612:                                              ; preds = %566
  %613 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %614 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %613, i32 0, i32 5
  %615 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %614, i32 0, i32 0
  %616 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %615, i32 0, i32 0
  %617 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %616, i32 0, i32 2
  %618 = load i32, i32* %617, align 8
  %619 = load i32, i32* @DC_HPD3_INTERRUPT, align 4
  %620 = and i32 %618, %619
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %633

622:                                              ; preds = %612
  %623 = load i32, i32* @DC_HPD3_INTERRUPT, align 4
  %624 = xor i32 %623, -1
  %625 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %626 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %625, i32 0, i32 5
  %627 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %626, i32 0, i32 0
  %628 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %627, i32 0, i32 0
  %629 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %628, i32 0, i32 2
  %630 = load i32, i32* %629, align 8
  %631 = and i32 %630, %624
  store i32 %631, i32* %629, align 8
  store i32 1, i32* %9, align 4
  %632 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %633

633:                                              ; preds = %622, %612
  br label %704

634:                                              ; preds = %566
  %635 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %636 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %635, i32 0, i32 5
  %637 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %636, i32 0, i32 0
  %638 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %637, i32 0, i32 0
  %639 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %638, i32 0, i32 3
  %640 = load i32, i32* %639, align 4
  %641 = load i32, i32* @DC_HPD4_INTERRUPT, align 4
  %642 = and i32 %640, %641
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %655

644:                                              ; preds = %634
  %645 = load i32, i32* @DC_HPD4_INTERRUPT, align 4
  %646 = xor i32 %645, -1
  %647 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %648 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %647, i32 0, i32 5
  %649 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %648, i32 0, i32 0
  %650 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %649, i32 0, i32 0
  %651 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %650, i32 0, i32 3
  %652 = load i32, i32* %651, align 4
  %653 = and i32 %652, %646
  store i32 %653, i32* %651, align 4
  store i32 1, i32* %9, align 4
  %654 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  br label %655

655:                                              ; preds = %644, %634
  br label %704

656:                                              ; preds = %566
  %657 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %658 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %657, i32 0, i32 5
  %659 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %658, i32 0, i32 0
  %660 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %659, i32 0, i32 0
  %661 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %660, i32 0, i32 4
  %662 = load i32, i32* %661, align 8
  %663 = load i32, i32* @DC_HPD5_INTERRUPT, align 4
  %664 = and i32 %662, %663
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %677

666:                                              ; preds = %656
  %667 = load i32, i32* @DC_HPD5_INTERRUPT, align 4
  %668 = xor i32 %667, -1
  %669 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %670 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %669, i32 0, i32 5
  %671 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %670, i32 0, i32 0
  %672 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %671, i32 0, i32 0
  %673 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %672, i32 0, i32 4
  %674 = load i32, i32* %673, align 8
  %675 = and i32 %674, %668
  store i32 %675, i32* %673, align 8
  store i32 1, i32* %9, align 4
  %676 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  br label %677

677:                                              ; preds = %666, %656
  br label %704

678:                                              ; preds = %566
  %679 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %680 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %679, i32 0, i32 5
  %681 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %680, i32 0, i32 0
  %682 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %681, i32 0, i32 0
  %683 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %682, i32 0, i32 5
  %684 = load i32, i32* %683, align 4
  %685 = load i32, i32* @DC_HPD6_INTERRUPT, align 4
  %686 = and i32 %684, %685
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %699

688:                                              ; preds = %678
  %689 = load i32, i32* @DC_HPD6_INTERRUPT, align 4
  %690 = xor i32 %689, -1
  %691 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %692 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %691, i32 0, i32 5
  %693 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %693, i32 0, i32 0
  %695 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %694, i32 0, i32 5
  %696 = load i32, i32* %695, align 4
  %697 = and i32 %696, %690
  store i32 %697, i32* %695, align 4
  store i32 1, i32* %9, align 4
  %698 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  br label %699

699:                                              ; preds = %688, %678
  br label %704

700:                                              ; preds = %566
  %701 = load i32, i32* %6, align 4
  %702 = load i32, i32* %7, align 4
  %703 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %701, i32 %702)
  br label %704

704:                                              ; preds = %700, %699, %677, %655, %633, %611, %589
  br label %921

705:                                              ; preds = %49
  %706 = load i32, i32* %7, align 4
  switch i32 %706, label %839 [
    i32 0, label %707
    i32 1, label %729
    i32 2, label %751
    i32 3, label %773
    i32 4, label %795
    i32 5, label %817
  ]

707:                                              ; preds = %705
  %708 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %709 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %708, i32 0, i32 5
  %710 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %709, i32 0, i32 0
  %711 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %710, i32 0, i32 0
  %712 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %711, i32 0, i32 6
  %713 = load i32, i32* %712, align 8
  %714 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %715 = and i32 %713, %714
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %728

717:                                              ; preds = %707
  %718 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %719 = xor i32 %718, -1
  %720 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %721 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %720, i32 0, i32 5
  %722 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %721, i32 0, i32 0
  %723 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %722, i32 0, i32 0
  %724 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %723, i32 0, i32 6
  %725 = load i32, i32* %724, align 8
  %726 = and i32 %725, %719
  store i32 %726, i32* %724, align 8
  store i32 1, i32* %10, align 4
  %727 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  br label %728

728:                                              ; preds = %717, %707
  br label %843

729:                                              ; preds = %705
  %730 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %731 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %730, i32 0, i32 5
  %732 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %731, i32 0, i32 0
  %733 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %732, i32 0, i32 0
  %734 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %733, i32 0, i32 7
  %735 = load i32, i32* %734, align 4
  %736 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %737 = and i32 %735, %736
  %738 = icmp ne i32 %737, 0
  br i1 %738, label %739, label %750

739:                                              ; preds = %729
  %740 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %741 = xor i32 %740, -1
  %742 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %743 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %742, i32 0, i32 5
  %744 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %743, i32 0, i32 0
  %745 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %744, i32 0, i32 0
  %746 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %745, i32 0, i32 7
  %747 = load i32, i32* %746, align 4
  %748 = and i32 %747, %741
  store i32 %748, i32* %746, align 4
  store i32 1, i32* %10, align 4
  %749 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  br label %750

750:                                              ; preds = %739, %729
  br label %843

751:                                              ; preds = %705
  %752 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %753 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %752, i32 0, i32 5
  %754 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %753, i32 0, i32 0
  %755 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %754, i32 0, i32 0
  %756 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %755, i32 0, i32 8
  %757 = load i32, i32* %756, align 8
  %758 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %759 = and i32 %757, %758
  %760 = icmp ne i32 %759, 0
  br i1 %760, label %761, label %772

761:                                              ; preds = %751
  %762 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %763 = xor i32 %762, -1
  %764 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %765 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %764, i32 0, i32 5
  %766 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %765, i32 0, i32 0
  %767 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %766, i32 0, i32 0
  %768 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %767, i32 0, i32 8
  %769 = load i32, i32* %768, align 8
  %770 = and i32 %769, %763
  store i32 %770, i32* %768, align 8
  store i32 1, i32* %10, align 4
  %771 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  br label %772

772:                                              ; preds = %761, %751
  br label %843

773:                                              ; preds = %705
  %774 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %775 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %774, i32 0, i32 5
  %776 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %775, i32 0, i32 0
  %777 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %776, i32 0, i32 0
  %778 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %777, i32 0, i32 9
  %779 = load i32, i32* %778, align 4
  %780 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %781 = and i32 %779, %780
  %782 = icmp ne i32 %781, 0
  br i1 %782, label %783, label %794

783:                                              ; preds = %773
  %784 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %785 = xor i32 %784, -1
  %786 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %787 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %786, i32 0, i32 5
  %788 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %787, i32 0, i32 0
  %789 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %788, i32 0, i32 0
  %790 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %789, i32 0, i32 9
  %791 = load i32, i32* %790, align 4
  %792 = and i32 %791, %785
  store i32 %792, i32* %790, align 4
  store i32 1, i32* %10, align 4
  %793 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  br label %794

794:                                              ; preds = %783, %773
  br label %843

795:                                              ; preds = %705
  %796 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %797 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %796, i32 0, i32 5
  %798 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %797, i32 0, i32 0
  %799 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %798, i32 0, i32 0
  %800 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %799, i32 0, i32 10
  %801 = load i32, i32* %800, align 8
  %802 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %803 = and i32 %801, %802
  %804 = icmp ne i32 %803, 0
  br i1 %804, label %805, label %816

805:                                              ; preds = %795
  %806 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %807 = xor i32 %806, -1
  %808 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %809 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %808, i32 0, i32 5
  %810 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %809, i32 0, i32 0
  %811 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %810, i32 0, i32 0
  %812 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %811, i32 0, i32 10
  %813 = load i32, i32* %812, align 8
  %814 = and i32 %813, %807
  store i32 %814, i32* %812, align 8
  store i32 1, i32* %10, align 4
  %815 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  br label %816

816:                                              ; preds = %805, %795
  br label %843

817:                                              ; preds = %705
  %818 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %819 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %818, i32 0, i32 5
  %820 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %819, i32 0, i32 0
  %821 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %820, i32 0, i32 0
  %822 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %821, i32 0, i32 11
  %823 = load i32, i32* %822, align 4
  %824 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %825 = and i32 %823, %824
  %826 = icmp ne i32 %825, 0
  br i1 %826, label %827, label %838

827:                                              ; preds = %817
  %828 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %829 = xor i32 %828, -1
  %830 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %831 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %830, i32 0, i32 5
  %832 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %831, i32 0, i32 0
  %833 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %832, i32 0, i32 0
  %834 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %833, i32 0, i32 11
  %835 = load i32, i32* %834, align 4
  %836 = and i32 %835, %829
  store i32 %836, i32* %834, align 4
  store i32 1, i32* %10, align 4
  %837 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  br label %838

838:                                              ; preds = %827, %817
  br label %843

839:                                              ; preds = %705
  %840 = load i32, i32* %6, align 4
  %841 = load i32, i32* %7, align 4
  %842 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %840, i32 %841)
  br label %843

843:                                              ; preds = %839, %838, %816, %794, %772, %750, %728
  br label %921

844:                                              ; preds = %49, %49
  %845 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %846 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %845, i32 0, i32 4
  %847 = load i32, i32* %846, align 4
  %848 = load i32, i32* %6, align 4
  %849 = load i32, i32* %7, align 4
  %850 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %847, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 %848, i32 %849)
  %851 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %852 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %851, i32 0, i32 4
  %853 = load i32, i32* %852, align 4
  %854 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_ADDR, align 4
  %855 = call i32 @RREG32(i32 %854)
  %856 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %853, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i64 0, i64 0), i32 %855)
  %857 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %858 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %857, i32 0, i32 4
  %859 = load i32, i32* %858, align 4
  %860 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %861 = call i32 @RREG32(i32 %860)
  %862 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %859, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %861)
  %863 = load i32, i32* @VM_CONTEXT1_CNTL2, align 4
  %864 = call i32 @WREG32_P(i32 %863, i32 1, i32 -2)
  br label %921

865:                                              ; preds = %49, %49, %49
  %866 = load i32, i32* %7, align 4
  %867 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i32 %866)
  %868 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %869 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %870 = call i32 @radeon_fence_process(%struct.radeon_device* %868, i32 %869)
  br label %921

871:                                              ; preds = %49
  %872 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0))
  %873 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %874 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %873, i32 0, i32 3
  %875 = load i32, i32* %874, align 8
  %876 = load i32, i32* @CHIP_CAYMAN, align 4
  %877 = icmp sge i32 %875, %876
  br i1 %877, label %878, label %893

878:                                              ; preds = %871
  %879 = load i32, i32* %7, align 4
  switch i32 %879, label %892 [
    i32 0, label %880
    i32 1, label %884
    i32 2, label %888
  ]

880:                                              ; preds = %878
  %881 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %882 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %883 = call i32 @radeon_fence_process(%struct.radeon_device* %881, i32 %882)
  br label %892

884:                                              ; preds = %878
  %885 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %886 = load i32, i32* @CAYMAN_RING_TYPE_CP1_INDEX, align 4
  %887 = call i32 @radeon_fence_process(%struct.radeon_device* %885, i32 %886)
  br label %892

888:                                              ; preds = %878
  %889 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %890 = load i32, i32* @CAYMAN_RING_TYPE_CP2_INDEX, align 4
  %891 = call i32 @radeon_fence_process(%struct.radeon_device* %889, i32 %890)
  br label %892

892:                                              ; preds = %878, %888, %884, %880
  br label %897

893:                                              ; preds = %871
  %894 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %895 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %896 = call i32 @radeon_fence_process(%struct.radeon_device* %894, i32 %895)
  br label %897

897:                                              ; preds = %893, %892
  br label %921

898:                                              ; preds = %49
  %899 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0))
  %900 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %901 = load i32, i32* @R600_RING_TYPE_DMA_INDEX, align 4
  %902 = call i32 @radeon_fence_process(%struct.radeon_device* %900, i32 %901)
  br label %921

903:                                              ; preds = %49
  %904 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0))
  br label %921

905:                                              ; preds = %49
  %906 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %907 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %906, i32 0, i32 3
  %908 = load i32, i32* %907, align 8
  %909 = load i32, i32* @CHIP_CAYMAN, align 4
  %910 = icmp sge i32 %908, %909
  br i1 %910, label %911, label %916

911:                                              ; preds = %905
  %912 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0))
  %913 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %914 = load i32, i32* @CAYMAN_RING_TYPE_DMA1_INDEX, align 4
  %915 = call i32 @radeon_fence_process(%struct.radeon_device* %913, i32 %914)
  br label %916

916:                                              ; preds = %911, %905
  br label %921

917:                                              ; preds = %49
  %918 = load i32, i32* %6, align 4
  %919 = load i32, i32* %7, align 4
  %920 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %918, i32 %919)
  br label %921

921:                                              ; preds = %917, %916, %903, %898, %897, %865, %844, %843, %704, %565, %483, %401, %319, %237, %155
  %922 = load i32, i32* %5, align 4
  %923 = add nsw i32 %922, 16
  store i32 %923, i32* %5, align 4
  %924 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %925 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %924, i32 0, i32 0
  %926 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %925, i32 0, i32 1
  %927 = load i32, i32* %926, align 4
  %928 = load i32, i32* %5, align 4
  %929 = and i32 %928, %927
  store i32 %929, i32* %5, align 4
  br label %45

930:                                              ; preds = %45
  %931 = load i32, i32* %9, align 4
  %932 = icmp ne i32 %931, 0
  br i1 %932, label %933, label %937

933:                                              ; preds = %930
  %934 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %935 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %934, i32 0, i32 2
  %936 = call i32 @schedule_work(i32* %935)
  br label %937

937:                                              ; preds = %933, %930
  %938 = load i32, i32* %10, align 4
  %939 = icmp ne i32 %938, 0
  br i1 %939, label %940, label %944

940:                                              ; preds = %937
  %941 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %942 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %941, i32 0, i32 1
  %943 = call i32 @schedule_work(i32* %942)
  br label %944

944:                                              ; preds = %940, %937
  %945 = load i32, i32* %5, align 4
  %946 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %947 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %946, i32 0, i32 0
  %948 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %947, i32 0, i32 0
  store i32 %945, i32* %948, align 8
  %949 = load i32, i32* @IH_RB_RPTR, align 4
  %950 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %951 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %950, i32 0, i32 0
  %952 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %951, i32 0, i32 0
  %953 = load i32, i32* %952, align 8
  %954 = call i32 @WREG32(i32 %949, i32 %953)
  %955 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %956 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %955, i32 0, i32 0
  %957 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %956, i32 0, i32 2
  %958 = call i32 @atomic_set(i32* %957, i32 0)
  %959 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %960 = call i32 @evergreen_get_ih_wptr(%struct.radeon_device* %959)
  store i32 %960, i32* %4, align 4
  %961 = load i32, i32* %4, align 4
  %962 = load i32, i32* %5, align 4
  %963 = icmp ne i32 %961, %962
  br i1 %963, label %964, label %965

964:                                              ; preds = %944
  br label %26

965:                                              ; preds = %944
  %966 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %966, i32* %2, align 4
  br label %967

967:                                              ; preds = %965, %32, %21
  %968 = load i32, i32* %2, align 4
  ret i32 %968
}

declare dso_local i32 @evergreen_get_ih_wptr(%struct.radeon_device*) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @evergreen_irq_ack(%struct.radeon_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @drm_handle_vblank(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @radeon_crtc_handle_flip(%struct.radeon_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

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
