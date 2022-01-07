; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_irq_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_irq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__, i32, i32, %struct.TYPE_9__, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32*, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"si_irq_process start: rptr %d, wptr %d\0A\00", align 1
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
@.str.20 = private unnamed_addr constant [31 x i8] c"GPU fault detected: %d 0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", align 1
@VM_CONTEXT1_PROTECTION_FAULT_ADDR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", align 1
@VM_CONTEXT1_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL2 = common dso_local global i32 0, align 4
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"IH: CP EOP\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"IH: DMA trap\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [14 x i8] c"IH: GUI idle\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"IH: DMA1 trap\0A\00", align 1
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i32 0, align 4
@IH_RB_RPTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_irq_process(%struct.radeon_device* %0) #0 {
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
  store i32 0, i32* %10, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %1
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %2, align 4
  br label %820

23:                                               ; preds = %16
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = call i32 @si_get_ih_wptr(%struct.radeon_device* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %817, %23
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = call i64 @atomic_xchg(i32* %29, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %2, align 4
  br label %820

34:                                               ; preds = %26
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = call i32 (...) @rmb()
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = call i32 @si_irq_ack(%struct.radeon_device* %43)
  br label %45

45:                                               ; preds = %781, %34
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %790

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = sdiv i32 %50, 4
  store i32 %51, i32* %9, align 4
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
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
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = and i32 %71, 268435455
  store i32 %72, i32* %7, align 4
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = and i32 %82, 255
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %6, align 4
  switch i32 %84, label %777 [
    i32 1, label %85
    i32 2, label %167
    i32 3, label %249
    i32 4, label %331
    i32 5, label %413
    i32 6, label %495
    i32 42, label %577
    i32 146, label %716
    i32 147, label %716
    i32 176, label %737
    i32 177, label %741
    i32 178, label %745
    i32 181, label %749
    i32 224, label %765
    i32 233, label %770
    i32 244, label %772
  ]

85:                                               ; preds = %49
  %86 = load i32, i32* %7, align 4
  switch i32 %86, label %162 [
    i32 0, label %87
    i32 1, label %140
  ]

87:                                               ; preds = %85
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @LB_D1_VBLANK_INTERRUPT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %87
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %97
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @drm_handle_vblank(i32 %108, i32 0)
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = call i32 @wake_up(i32* %115)
  br label %117

117:                                              ; preds = %105, %97
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = call i32 @atomic_read(i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %126, i32 0)
  br label %128

128:                                              ; preds = %125, %117
  %129 = load i32, i32* @LB_D1_VBLANK_INTERRUPT, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %130
  store i32 %137, i32* %135, align 8
  %138 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %139

139:                                              ; preds = %128, %87
  br label %166

140:                                              ; preds = %85
  %141 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @LB_D1_VLINE_INTERRUPT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %140
  %151 = load i32, i32* @LB_D1_VLINE_INTERRUPT, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %154 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %152
  store i32 %159, i32* %157, align 8
  %160 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %161

161:                                              ; preds = %150, %140
  br label %166

162:                                              ; preds = %85
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %161, %139
  br label %781

167:                                              ; preds = %49
  %168 = load i32, i32* %7, align 4
  switch i32 %168, label %244 [
    i32 0, label %169
    i32 1, label %222
  ]

169:                                              ; preds = %167
  %170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @LB_D2_VBLANK_INTERRUPT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %221

179:                                              ; preds = %169
  %180 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %181 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %179
  %188 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %189 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @drm_handle_vblank(i32 %190, i32 1)
  %192 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %193 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  store i32 1, i32* %194, align 8
  %195 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %196 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 2
  %198 = call i32 @wake_up(i32* %197)
  br label %199

199:                                              ; preds = %187, %179
  %200 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %201 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = call i32 @atomic_read(i32* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %199
  %208 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %209 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %208, i32 1)
  br label %210

210:                                              ; preds = %207, %199
  %211 = load i32, i32* @LB_D2_VBLANK_INTERRUPT, align 4
  %212 = xor i32 %211, -1
  %213 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %214 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, %212
  store i32 %219, i32* %217, align 4
  %220 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %221

221:                                              ; preds = %210, %169
  br label %248

222:                                              ; preds = %167
  %223 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %224 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @LB_D2_VLINE_INTERRUPT, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %222
  %233 = load i32, i32* @LB_D2_VLINE_INTERRUPT, align 4
  %234 = xor i32 %233, -1
  %235 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %236 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, %234
  store i32 %241, i32* %239, align 4
  %242 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %243

243:                                              ; preds = %232, %222
  br label %248

244:                                              ; preds = %167
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* %7, align 4
  %247 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %244, %243, %221
  br label %781

249:                                              ; preds = %49
  %250 = load i32, i32* %7, align 4
  switch i32 %250, label %326 [
    i32 0, label %251
    i32 1, label %304
  ]

251:                                              ; preds = %249
  %252 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %253 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @LB_D3_VBLANK_INTERRUPT, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %303

261:                                              ; preds = %251
  %262 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %263 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 2
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %261
  %270 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %271 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @drm_handle_vblank(i32 %272, i32 2)
  %274 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %275 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  store i32 1, i32* %276, align 8
  %277 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %278 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 2
  %280 = call i32 @wake_up(i32* %279)
  br label %281

281:                                              ; preds = %269, %261
  %282 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %283 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 2
  %287 = call i32 @atomic_read(i32* %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %281
  %290 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %291 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %290, i32 2)
  br label %292

292:                                              ; preds = %289, %281
  %293 = load i32, i32* @LB_D3_VBLANK_INTERRUPT, align 4
  %294 = xor i32 %293, -1
  %295 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %296 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = and i32 %300, %294
  store i32 %301, i32* %299, align 8
  %302 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %303

303:                                              ; preds = %292, %251
  br label %330

304:                                              ; preds = %249
  %305 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %306 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @LB_D3_VLINE_INTERRUPT, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %325

314:                                              ; preds = %304
  %315 = load i32, i32* @LB_D3_VLINE_INTERRUPT, align 4
  %316 = xor i32 %315, -1
  %317 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %318 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %317, i32 0, i32 3
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = and i32 %322, %316
  store i32 %323, i32* %321, align 8
  %324 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %325

325:                                              ; preds = %314, %304
  br label %330

326:                                              ; preds = %249
  %327 = load i32, i32* %6, align 4
  %328 = load i32, i32* %7, align 4
  %329 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %327, i32 %328)
  br label %330

330:                                              ; preds = %326, %325, %303
  br label %781

331:                                              ; preds = %49
  %332 = load i32, i32* %7, align 4
  switch i32 %332, label %408 [
    i32 0, label %333
    i32 1, label %386
  ]

333:                                              ; preds = %331
  %334 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %335 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %334, i32 0, i32 3
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @LB_D4_VBLANK_INTERRUPT, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %385

343:                                              ; preds = %333
  %344 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %345 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %344, i32 0, i32 3
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 3
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 3
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %363

351:                                              ; preds = %343
  %352 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %353 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @drm_handle_vblank(i32 %354, i32 3)
  %356 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %357 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %356, i32 0, i32 4
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 0
  store i32 1, i32* %358, align 8
  %359 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %360 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %359, i32 0, i32 3
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 2
  %362 = call i32 @wake_up(i32* %361)
  br label %363

363:                                              ; preds = %351, %343
  %364 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %365 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %364, i32 0, i32 3
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 1
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 3
  %369 = call i32 @atomic_read(i32* %368)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %363
  %372 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %373 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %372, i32 3)
  br label %374

374:                                              ; preds = %371, %363
  %375 = load i32, i32* @LB_D4_VBLANK_INTERRUPT, align 4
  %376 = xor i32 %375, -1
  %377 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %378 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %377, i32 0, i32 3
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 4
  %383 = and i32 %382, %376
  store i32 %383, i32* %381, align 4
  %384 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %385

385:                                              ; preds = %374, %333
  br label %412

386:                                              ; preds = %331
  %387 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %388 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %387, i32 0, i32 3
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @LB_D4_VLINE_INTERRUPT, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %407

396:                                              ; preds = %386
  %397 = load i32, i32* @LB_D4_VLINE_INTERRUPT, align 4
  %398 = xor i32 %397, -1
  %399 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %400 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = and i32 %404, %398
  store i32 %405, i32* %403, align 4
  %406 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %407

407:                                              ; preds = %396, %386
  br label %412

408:                                              ; preds = %331
  %409 = load i32, i32* %6, align 4
  %410 = load i32, i32* %7, align 4
  %411 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %409, i32 %410)
  br label %412

412:                                              ; preds = %408, %407, %385
  br label %781

413:                                              ; preds = %49
  %414 = load i32, i32* %7, align 4
  switch i32 %414, label %490 [
    i32 0, label %415
    i32 1, label %468
  ]

415:                                              ; preds = %413
  %416 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %417 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %416, i32 0, i32 3
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* @LB_D5_VBLANK_INTERRUPT, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %467

425:                                              ; preds = %415
  %426 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %427 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %426, i32 0, i32 3
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 3
  %429 = load i32*, i32** %428, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 4
  %431 = load i32, i32* %430, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %445

433:                                              ; preds = %425
  %434 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %435 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %434, i32 0, i32 5
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @drm_handle_vblank(i32 %436, i32 4)
  %438 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %439 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %438, i32 0, i32 4
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 0
  store i32 1, i32* %440, align 8
  %441 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %442 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %441, i32 0, i32 3
  %443 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %442, i32 0, i32 2
  %444 = call i32 @wake_up(i32* %443)
  br label %445

445:                                              ; preds = %433, %425
  %446 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %447 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %446, i32 0, i32 3
  %448 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %447, i32 0, i32 1
  %449 = load i32*, i32** %448, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 4
  %451 = call i32 @atomic_read(i32* %450)
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %445
  %454 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %455 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %454, i32 4)
  br label %456

456:                                              ; preds = %453, %445
  %457 = load i32, i32* @LB_D5_VBLANK_INTERRUPT, align 4
  %458 = xor i32 %457, -1
  %459 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %460 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %459, i32 0, i32 3
  %461 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 4
  %464 = load i32, i32* %463, align 8
  %465 = and i32 %464, %458
  store i32 %465, i32* %463, align 8
  %466 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %467

467:                                              ; preds = %456, %415
  br label %494

468:                                              ; preds = %413
  %469 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %470 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %469, i32 0, i32 3
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %472, i32 0, i32 4
  %474 = load i32, i32* %473, align 8
  %475 = load i32, i32* @LB_D5_VLINE_INTERRUPT, align 4
  %476 = and i32 %474, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %489

478:                                              ; preds = %468
  %479 = load i32, i32* @LB_D5_VLINE_INTERRUPT, align 4
  %480 = xor i32 %479, -1
  %481 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %482 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %481, i32 0, i32 3
  %483 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %484, i32 0, i32 4
  %486 = load i32, i32* %485, align 8
  %487 = and i32 %486, %480
  store i32 %487, i32* %485, align 8
  %488 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %489

489:                                              ; preds = %478, %468
  br label %494

490:                                              ; preds = %413
  %491 = load i32, i32* %6, align 4
  %492 = load i32, i32* %7, align 4
  %493 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %491, i32 %492)
  br label %494

494:                                              ; preds = %490, %489, %467
  br label %781

495:                                              ; preds = %49
  %496 = load i32, i32* %7, align 4
  switch i32 %496, label %572 [
    i32 0, label %497
    i32 1, label %550
  ]

497:                                              ; preds = %495
  %498 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %499 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %498, i32 0, i32 3
  %500 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %501, i32 0, i32 5
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* @LB_D6_VBLANK_INTERRUPT, align 4
  %505 = and i32 %503, %504
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %549

507:                                              ; preds = %497
  %508 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %509 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %508, i32 0, i32 3
  %510 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %509, i32 0, i32 3
  %511 = load i32*, i32** %510, align 8
  %512 = getelementptr inbounds i32, i32* %511, i64 5
  %513 = load i32, i32* %512, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %527

515:                                              ; preds = %507
  %516 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %517 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %516, i32 0, i32 5
  %518 = load i32, i32* %517, align 4
  %519 = call i32 @drm_handle_vblank(i32 %518, i32 5)
  %520 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %521 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %520, i32 0, i32 4
  %522 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %521, i32 0, i32 0
  store i32 1, i32* %522, align 8
  %523 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %524 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %523, i32 0, i32 3
  %525 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %524, i32 0, i32 2
  %526 = call i32 @wake_up(i32* %525)
  br label %527

527:                                              ; preds = %515, %507
  %528 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %529 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %528, i32 0, i32 3
  %530 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %529, i32 0, i32 1
  %531 = load i32*, i32** %530, align 8
  %532 = getelementptr inbounds i32, i32* %531, i64 5
  %533 = call i32 @atomic_read(i32* %532)
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %538

535:                                              ; preds = %527
  %536 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %537 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %536, i32 5)
  br label %538

538:                                              ; preds = %535, %527
  %539 = load i32, i32* @LB_D6_VBLANK_INTERRUPT, align 4
  %540 = xor i32 %539, -1
  %541 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %542 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %541, i32 0, i32 3
  %543 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %544, i32 0, i32 5
  %546 = load i32, i32* %545, align 4
  %547 = and i32 %546, %540
  store i32 %547, i32* %545, align 4
  %548 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %549

549:                                              ; preds = %538, %497
  br label %576

550:                                              ; preds = %495
  %551 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %552 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %551, i32 0, i32 3
  %553 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %554, i32 0, i32 5
  %556 = load i32, i32* %555, align 4
  %557 = load i32, i32* @LB_D6_VLINE_INTERRUPT, align 4
  %558 = and i32 %556, %557
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %571

560:                                              ; preds = %550
  %561 = load i32, i32* @LB_D6_VLINE_INTERRUPT, align 4
  %562 = xor i32 %561, -1
  %563 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %564 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %563, i32 0, i32 3
  %565 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %566, i32 0, i32 5
  %568 = load i32, i32* %567, align 4
  %569 = and i32 %568, %562
  store i32 %569, i32* %567, align 4
  %570 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %571

571:                                              ; preds = %560, %550
  br label %576

572:                                              ; preds = %495
  %573 = load i32, i32* %6, align 4
  %574 = load i32, i32* %7, align 4
  %575 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %573, i32 %574)
  br label %576

576:                                              ; preds = %572, %571, %549
  br label %781

577:                                              ; preds = %49
  %578 = load i32, i32* %7, align 4
  switch i32 %578, label %711 [
    i32 0, label %579
    i32 1, label %601
    i32 2, label %623
    i32 3, label %645
    i32 4, label %667
    i32 5, label %689
  ]

579:                                              ; preds = %577
  %580 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %581 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %580, i32 0, i32 3
  %582 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 8
  %586 = load i32, i32* @DC_HPD1_INTERRUPT, align 4
  %587 = and i32 %585, %586
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %600

589:                                              ; preds = %579
  %590 = load i32, i32* @DC_HPD1_INTERRUPT, align 4
  %591 = xor i32 %590, -1
  %592 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %593 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %592, i32 0, i32 3
  %594 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %593, i32 0, i32 0
  %595 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = and i32 %597, %591
  store i32 %598, i32* %596, align 8
  store i32 1, i32* %10, align 4
  %599 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %600

600:                                              ; preds = %589, %579
  br label %715

601:                                              ; preds = %577
  %602 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %603 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %602, i32 0, i32 3
  %604 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %603, i32 0, i32 0
  %605 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %604, i32 0, i32 0
  %606 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %605, i32 0, i32 1
  %607 = load i32, i32* %606, align 4
  %608 = load i32, i32* @DC_HPD2_INTERRUPT, align 4
  %609 = and i32 %607, %608
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %622

611:                                              ; preds = %601
  %612 = load i32, i32* @DC_HPD2_INTERRUPT, align 4
  %613 = xor i32 %612, -1
  %614 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %615 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %614, i32 0, i32 3
  %616 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %615, i32 0, i32 0
  %617 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %616, i32 0, i32 0
  %618 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %617, i32 0, i32 1
  %619 = load i32, i32* %618, align 4
  %620 = and i32 %619, %613
  store i32 %620, i32* %618, align 4
  store i32 1, i32* %10, align 4
  %621 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %622

622:                                              ; preds = %611, %601
  br label %715

623:                                              ; preds = %577
  %624 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %625 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %624, i32 0, i32 3
  %626 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %625, i32 0, i32 0
  %627 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %626, i32 0, i32 0
  %628 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %627, i32 0, i32 2
  %629 = load i32, i32* %628, align 8
  %630 = load i32, i32* @DC_HPD3_INTERRUPT, align 4
  %631 = and i32 %629, %630
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %644

633:                                              ; preds = %623
  %634 = load i32, i32* @DC_HPD3_INTERRUPT, align 4
  %635 = xor i32 %634, -1
  %636 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %637 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %636, i32 0, i32 3
  %638 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %637, i32 0, i32 0
  %639 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %638, i32 0, i32 0
  %640 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %639, i32 0, i32 2
  %641 = load i32, i32* %640, align 8
  %642 = and i32 %641, %635
  store i32 %642, i32* %640, align 8
  store i32 1, i32* %10, align 4
  %643 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %644

644:                                              ; preds = %633, %623
  br label %715

645:                                              ; preds = %577
  %646 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %647 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %646, i32 0, i32 3
  %648 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %647, i32 0, i32 0
  %649 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %648, i32 0, i32 0
  %650 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %649, i32 0, i32 3
  %651 = load i32, i32* %650, align 4
  %652 = load i32, i32* @DC_HPD4_INTERRUPT, align 4
  %653 = and i32 %651, %652
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %655, label %666

655:                                              ; preds = %645
  %656 = load i32, i32* @DC_HPD4_INTERRUPT, align 4
  %657 = xor i32 %656, -1
  %658 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %659 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %658, i32 0, i32 3
  %660 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %659, i32 0, i32 0
  %661 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %660, i32 0, i32 0
  %662 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %661, i32 0, i32 3
  %663 = load i32, i32* %662, align 4
  %664 = and i32 %663, %657
  store i32 %664, i32* %662, align 4
  store i32 1, i32* %10, align 4
  %665 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  br label %666

666:                                              ; preds = %655, %645
  br label %715

667:                                              ; preds = %577
  %668 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %669 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %668, i32 0, i32 3
  %670 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %669, i32 0, i32 0
  %671 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %670, i32 0, i32 0
  %672 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %671, i32 0, i32 4
  %673 = load i32, i32* %672, align 8
  %674 = load i32, i32* @DC_HPD5_INTERRUPT, align 4
  %675 = and i32 %673, %674
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %677, label %688

677:                                              ; preds = %667
  %678 = load i32, i32* @DC_HPD5_INTERRUPT, align 4
  %679 = xor i32 %678, -1
  %680 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %681 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %680, i32 0, i32 3
  %682 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %681, i32 0, i32 0
  %683 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %682, i32 0, i32 0
  %684 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %683, i32 0, i32 4
  %685 = load i32, i32* %684, align 8
  %686 = and i32 %685, %679
  store i32 %686, i32* %684, align 8
  store i32 1, i32* %10, align 4
  %687 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  br label %688

688:                                              ; preds = %677, %667
  br label %715

689:                                              ; preds = %577
  %690 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %691 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %690, i32 0, i32 3
  %692 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %693, i32 0, i32 5
  %695 = load i32, i32* %694, align 4
  %696 = load i32, i32* @DC_HPD6_INTERRUPT, align 4
  %697 = and i32 %695, %696
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %710

699:                                              ; preds = %689
  %700 = load i32, i32* @DC_HPD6_INTERRUPT, align 4
  %701 = xor i32 %700, -1
  %702 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %703 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %702, i32 0, i32 3
  %704 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %703, i32 0, i32 0
  %705 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %704, i32 0, i32 0
  %706 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %705, i32 0, i32 5
  %707 = load i32, i32* %706, align 4
  %708 = and i32 %707, %701
  store i32 %708, i32* %706, align 4
  store i32 1, i32* %10, align 4
  %709 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  br label %710

710:                                              ; preds = %699, %689
  br label %715

711:                                              ; preds = %577
  %712 = load i32, i32* %6, align 4
  %713 = load i32, i32* %7, align 4
  %714 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %712, i32 %713)
  br label %715

715:                                              ; preds = %711, %710, %688, %666, %644, %622, %600
  br label %781

716:                                              ; preds = %49, %49
  %717 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %718 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %717, i32 0, i32 2
  %719 = load i32, i32* %718, align 4
  %720 = load i32, i32* %6, align 4
  %721 = load i32, i32* %7, align 4
  %722 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %719, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %720, i32 %721)
  %723 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %724 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %723, i32 0, i32 2
  %725 = load i32, i32* %724, align 4
  %726 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_ADDR, align 4
  %727 = call i32 @RREG32(i32 %726)
  %728 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %725, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i32 %727)
  %729 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %730 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %729, i32 0, i32 2
  %731 = load i32, i32* %730, align 4
  %732 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %733 = call i32 @RREG32(i32 %732)
  %734 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %731, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0), i32 %733)
  %735 = load i32, i32* @VM_CONTEXT1_CNTL2, align 4
  %736 = call i32 @WREG32_P(i32 %735, i32 1, i32 -2)
  br label %781

737:                                              ; preds = %49
  %738 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %739 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %740 = call i32 @radeon_fence_process(%struct.radeon_device* %738, i32 %739)
  br label %781

741:                                              ; preds = %49
  %742 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %743 = load i32, i32* @CAYMAN_RING_TYPE_CP1_INDEX, align 4
  %744 = call i32 @radeon_fence_process(%struct.radeon_device* %742, i32 %743)
  br label %781

745:                                              ; preds = %49
  %746 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %747 = load i32, i32* @CAYMAN_RING_TYPE_CP2_INDEX, align 4
  %748 = call i32 @radeon_fence_process(%struct.radeon_device* %746, i32 %747)
  br label %781

749:                                              ; preds = %49
  %750 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  %751 = load i32, i32* %8, align 4
  switch i32 %751, label %764 [
    i32 0, label %752
    i32 1, label %756
    i32 2, label %760
  ]

752:                                              ; preds = %749
  %753 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %754 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %755 = call i32 @radeon_fence_process(%struct.radeon_device* %753, i32 %754)
  br label %764

756:                                              ; preds = %749
  %757 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %758 = load i32, i32* @CAYMAN_RING_TYPE_CP1_INDEX, align 4
  %759 = call i32 @radeon_fence_process(%struct.radeon_device* %757, i32 %758)
  br label %764

760:                                              ; preds = %749
  %761 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %762 = load i32, i32* @CAYMAN_RING_TYPE_CP2_INDEX, align 4
  %763 = call i32 @radeon_fence_process(%struct.radeon_device* %761, i32 %762)
  br label %764

764:                                              ; preds = %749, %760, %756, %752
  br label %781

765:                                              ; preds = %49
  %766 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  %767 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %768 = load i32, i32* @R600_RING_TYPE_DMA_INDEX, align 4
  %769 = call i32 @radeon_fence_process(%struct.radeon_device* %767, i32 %768)
  br label %781

770:                                              ; preds = %49
  %771 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  br label %781

772:                                              ; preds = %49
  %773 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %774 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %775 = load i32, i32* @CAYMAN_RING_TYPE_DMA1_INDEX, align 4
  %776 = call i32 @radeon_fence_process(%struct.radeon_device* %774, i32 %775)
  br label %781

777:                                              ; preds = %49
  %778 = load i32, i32* %6, align 4
  %779 = load i32, i32* %7, align 4
  %780 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %778, i32 %779)
  br label %781

781:                                              ; preds = %777, %772, %770, %765, %764, %745, %741, %737, %716, %715, %576, %494, %412, %330, %248, %166
  %782 = load i32, i32* %5, align 4
  %783 = add nsw i32 %782, 16
  store i32 %783, i32* %5, align 4
  %784 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %785 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %784, i32 0, i32 0
  %786 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %785, i32 0, i32 1
  %787 = load i32, i32* %786, align 4
  %788 = load i32, i32* %5, align 4
  %789 = and i32 %788, %787
  store i32 %789, i32* %5, align 4
  br label %45

790:                                              ; preds = %45
  %791 = load i32, i32* %10, align 4
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %793, label %797

793:                                              ; preds = %790
  %794 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %795 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %794, i32 0, i32 1
  %796 = call i32 @schedule_work(i32* %795)
  br label %797

797:                                              ; preds = %793, %790
  %798 = load i32, i32* %5, align 4
  %799 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %800 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %799, i32 0, i32 0
  %801 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %800, i32 0, i32 0
  store i32 %798, i32* %801, align 8
  %802 = load i32, i32* @IH_RB_RPTR, align 4
  %803 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %804 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %803, i32 0, i32 0
  %805 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %804, i32 0, i32 0
  %806 = load i32, i32* %805, align 8
  %807 = call i32 @WREG32(i32 %802, i32 %806)
  %808 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %809 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %808, i32 0, i32 0
  %810 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %809, i32 0, i32 2
  %811 = call i32 @atomic_set(i32* %810, i32 0)
  %812 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %813 = call i32 @si_get_ih_wptr(%struct.radeon_device* %812)
  store i32 %813, i32* %4, align 4
  %814 = load i32, i32* %4, align 4
  %815 = load i32, i32* %5, align 4
  %816 = icmp ne i32 %814, %815
  br i1 %816, label %817, label %818

817:                                              ; preds = %797
  br label %26

818:                                              ; preds = %797
  %819 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %819, i32* %2, align 4
  br label %820

820:                                              ; preds = %818, %32, %21
  %821 = load i32, i32* %2, align 4
  ret i32 %821
}

declare dso_local i32 @si_get_ih_wptr(%struct.radeon_device*) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @si_irq_ack(%struct.radeon_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @drm_handle_vblank(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @radeon_crtc_handle_flip(%struct.radeon_device*, i32) #1

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
