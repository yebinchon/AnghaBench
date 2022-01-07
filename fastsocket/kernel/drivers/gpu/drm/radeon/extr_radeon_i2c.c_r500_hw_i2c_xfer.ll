; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_r500_hw_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_r500_hw_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.radeon_i2c_chan = type { %struct.radeon_i2c_bus_rec, %struct.TYPE_3__* }
%struct.radeon_i2c_bus_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RADEON_BIOS_6_SCRATCH = common dso_local global i32 0, align 4
@ATOM_S6_HW_I2C_BUSY_STATE = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_CONTROL1 = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_ARBITRATION = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_SW_WANTS_TO_USE_I2C = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_SW_CAN_USE_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to get i2c bus\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_START = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_STOP = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_EN = common dso_local global i32 0, align 4
@AVIVO_SEL_DDC1 = common dso_local global i32 0, align 4
@AVIVO_SEL_DDC2 = common dso_local global i32 0, align 4
@AVIVO_SEL_DDC3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"gpio not supported with hw i2c\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_STATUS1 = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_DONE = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_NACK = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_HALT = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_RESET = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_SOFT_RESET = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_DATA = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_CONTROL3 = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_CONTROL2 = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_GO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"i2c write error 0x%08x\0A\00", align 1
@AVIVO_DC_I2C_ABORT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@AVIVO_DC_I2C_RECEIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"i2c read error 0x%08x\0A\00", align 1
@AVIVO_DC_I2C_SW_DONE_USING_I2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @r500_hw_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r500_hw_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_i2c_chan*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_i2c_bus_rec*, align 8
  %10 = alloca %struct.i2c_msg*, align 8
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
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %23 = call %struct.radeon_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter* %22)
  store %struct.radeon_i2c_chan* %23, %struct.radeon_i2c_chan** %7, align 8
  %24 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %7, align 8
  %25 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.radeon_device*, %struct.radeon_device** %27, align 8
  store %struct.radeon_device* %28, %struct.radeon_device** %8, align 8
  %29 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %7, align 8
  %30 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %29, i32 0, i32 0
  store %struct.radeon_i2c_bus_rec* %30, %struct.radeon_i2c_bus_rec** %9, align 8
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %16, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %40 = call i32 @radeon_get_i2c_prescale(%struct.radeon_device* %39)
  store i32 %40, i32* %17, align 4
  %41 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %42 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @RREG32(i32 %43)
  store i32 %44, i32* %18, align 4
  %45 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %46 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %18, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %18, align 4
  %51 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %52 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %18, align 4
  %55 = call i32 @WREG32(i32 %53, i32 %54)
  %56 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %57 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @RREG32(i32 %58)
  store i32 %59, i32* %18, align 4
  %60 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %61 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @RREG32(i32 %62)
  store i32 %63, i32* %18, align 4
  %64 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %65 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %18, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %18, align 4
  %70 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %71 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @WREG32(i32 %72, i32 %73)
  %75 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %76 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @RREG32(i32 %77)
  store i32 %78, i32* %18, align 4
  %79 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %80 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @RREG32(i32 %81)
  store i32 %82, i32* %18, align 4
  %83 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %84 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %18, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %18, align 4
  %89 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %90 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @WREG32(i32 %91, i32 %92)
  %94 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %95 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @RREG32(i32 %96)
  store i32 %97, i32* %18, align 4
  %98 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %99 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @RREG32(i32 %100)
  store i32 %101, i32* %18, align 4
  %102 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %103 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %18, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %18, align 4
  %108 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %109 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %18, align 4
  %112 = call i32 @WREG32(i32 %110, i32 %111)
  %113 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %114 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @RREG32(i32 %115)
  store i32 %116, i32* %18, align 4
  %117 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %118 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @RREG32(i32 %119)
  store i32 %120, i32* %18, align 4
  %121 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %122 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %18, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %18, align 4
  %127 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %128 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @WREG32(i32 %129, i32 %130)
  %132 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %133 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @RREG32(i32 %134)
  store i32 %135, i32* %18, align 4
  %136 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %137 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @RREG32(i32 %138)
  store i32 %139, i32* %18, align 4
  %140 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %141 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %140, i32 0, i32 11
  %142 = load i32, i32* %141, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %18, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %18, align 4
  %146 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %147 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %18, align 4
  %150 = call i32 @WREG32(i32 %148, i32 %149)
  %151 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %152 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @RREG32(i32 %153)
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %156 = call i32 @RREG32(i32 %155)
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* @ATOM_S6_HW_I2C_BUSY_STATE, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @WREG32(i32 %157, i32 %160)
  %162 = load i32, i32* @AVIVO_DC_I2C_CONTROL1, align 4
  %163 = call i32 @RREG32(i32 %162)
  store i32 %163, i32* %20, align 4
  %164 = call i32 @RREG32(i32 1172)
  store i32 %164, i32* %21, align 4
  %165 = load i32, i32* %21, align 4
  %166 = or i32 %165, 1
  %167 = call i32 @WREG32(i32 1172, i32 %166)
  %168 = load i32, i32* @AVIVO_DC_I2C_ARBITRATION, align 4
  %169 = load i32, i32* @AVIVO_DC_I2C_SW_WANTS_TO_USE_I2C, align 4
  %170 = call i32 @WREG32(i32 %168, i32 %169)
  store i32 0, i32* %11, align 4
  br label %171

171:                                              ; preds = %183, %3
  %172 = load i32, i32* %11, align 4
  %173 = icmp slt i32 %172, 50
  br i1 %173, label %174, label %186

174:                                              ; preds = %171
  %175 = call i32 @udelay(i32 1)
  %176 = load i32, i32* @AVIVO_DC_I2C_ARBITRATION, align 4
  %177 = call i32 @RREG32(i32 %176)
  %178 = load i32, i32* @AVIVO_DC_I2C_SW_CAN_USE_I2C, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %186

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %11, align 4
  br label %171

186:                                              ; preds = %181, %171
  %187 = load i32, i32* %11, align 4
  %188 = icmp eq i32 %187, 50
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %191 = load i32, i32* @EBUSY, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %16, align 4
  br label %546

193:                                              ; preds = %186
  %194 = load i32, i32* @AVIVO_DC_I2C_START, align 4
  %195 = load i32, i32* @AVIVO_DC_I2C_STOP, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @AVIVO_DC_I2C_EN, align 4
  %198 = or i32 %196, %197
  store i32 %198, i32* %19, align 4
  %199 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %200 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  switch i32 %201, label %217 [
    i32 130, label %202
    i32 129, label %207
    i32 128, label %212
  ]

202:                                              ; preds = %193
  %203 = load i32, i32* @AVIVO_SEL_DDC1, align 4
  %204 = call i32 @AVIVO_DC_I2C_PIN_SELECT(i32 %203)
  %205 = load i32, i32* %19, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %19, align 4
  br label %221

207:                                              ; preds = %193
  %208 = load i32, i32* @AVIVO_SEL_DDC2, align 4
  %209 = call i32 @AVIVO_DC_I2C_PIN_SELECT(i32 %208)
  %210 = load i32, i32* %19, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %19, align 4
  br label %221

212:                                              ; preds = %193
  %213 = load i32, i32* @AVIVO_SEL_DDC3, align 4
  %214 = call i32 @AVIVO_DC_I2C_PIN_SELECT(i32 %213)
  %215 = load i32, i32* %19, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %19, align 4
  br label %221

217:                                              ; preds = %193
  %218 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %16, align 4
  br label %546

221:                                              ; preds = %212, %207, %202
  %222 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %223 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %222, i64 0
  store %struct.i2c_msg* %223, %struct.i2c_msg** %10, align 8
  %224 = load i32, i32* %6, align 4
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %303

226:                                              ; preds = %221
  %227 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %228 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %303

231:                                              ; preds = %226
  %232 = load i32, i32* @AVIVO_DC_I2C_STATUS1, align 4
  %233 = load i32, i32* @AVIVO_DC_I2C_DONE, align 4
  %234 = load i32, i32* @AVIVO_DC_I2C_NACK, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @AVIVO_DC_I2C_HALT, align 4
  %237 = or i32 %235, %236
  %238 = call i32 @WREG32(i32 %232, i32 %237)
  %239 = load i32, i32* @AVIVO_DC_I2C_RESET, align 4
  %240 = load i32, i32* @AVIVO_DC_I2C_SOFT_RESET, align 4
  %241 = call i32 @WREG32(i32 %239, i32 %240)
  %242 = call i32 @udelay(i32 1)
  %243 = load i32, i32* @AVIVO_DC_I2C_RESET, align 4
  %244 = call i32 @WREG32(i32 %243, i32 0)
  %245 = load i32, i32* @AVIVO_DC_I2C_DATA, align 4
  %246 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %247 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = shl i32 %248, 1
  %250 = and i32 %249, 255
  %251 = call i32 @WREG32(i32 %245, i32 %250)
  %252 = load i32, i32* @AVIVO_DC_I2C_DATA, align 4
  %253 = call i32 @WREG32(i32 %252, i32 0)
  %254 = load i32, i32* @AVIVO_DC_I2C_CONTROL3, align 4
  %255 = call i32 @AVIVO_DC_I2C_TIME_LIMIT(i32 48)
  %256 = call i32 @WREG32(i32 %254, i32 %255)
  %257 = load i32, i32* @AVIVO_DC_I2C_CONTROL2, align 4
  %258 = call i32 @AVIVO_DC_I2C_ADDR_COUNT(i32 1)
  %259 = call i32 @AVIVO_DC_I2C_DATA_COUNT(i32 1)
  %260 = or i32 %258, %259
  %261 = load i32, i32* %17, align 4
  %262 = shl i32 %261, 16
  %263 = or i32 %260, %262
  %264 = call i32 @WREG32(i32 %257, i32 %263)
  %265 = load i32, i32* @AVIVO_DC_I2C_CONTROL1, align 4
  %266 = load i32, i32* %19, align 4
  %267 = call i32 @WREG32(i32 %265, i32 %266)
  %268 = load i32, i32* @AVIVO_DC_I2C_STATUS1, align 4
  %269 = load i32, i32* @AVIVO_DC_I2C_GO, align 4
  %270 = call i32 @WREG32(i32 %268, i32 %269)
  store i32 0, i32* %12, align 4
  br label %271

271:                                              ; preds = %299, %231
  %272 = load i32, i32* %12, align 4
  %273 = icmp slt i32 %272, 200
  br i1 %273, label %274, label %302

274:                                              ; preds = %271
  %275 = call i32 @udelay(i32 50)
  %276 = load i32, i32* @AVIVO_DC_I2C_STATUS1, align 4
  %277 = call i32 @RREG32(i32 %276)
  store i32 %277, i32* %18, align 4
  %278 = load i32, i32* %18, align 4
  %279 = load i32, i32* @AVIVO_DC_I2C_GO, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  br label %299

283:                                              ; preds = %274
  %284 = load i32, i32* @AVIVO_DC_I2C_STATUS1, align 4
  %285 = call i32 @RREG32(i32 %284)
  store i32 %285, i32* %18, align 4
  %286 = load i32, i32* %18, align 4
  %287 = load i32, i32* @AVIVO_DC_I2C_DONE, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  br label %302

291:                                              ; preds = %283
  %292 = load i32, i32* %18, align 4
  %293 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %292)
  %294 = load i32, i32* @AVIVO_DC_I2C_RESET, align 4
  %295 = load i32, i32* @AVIVO_DC_I2C_ABORT, align 4
  %296 = call i32 @WREG32(i32 %294, i32 %295)
  %297 = load i32, i32* @EIO, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %16, align 4
  br label %546

299:                                              ; preds = %282
  %300 = load i32, i32* %12, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %12, align 4
  br label %271

302:                                              ; preds = %290, %271
  br label %546

303:                                              ; preds = %226, %221
  store i32 0, i32* %11, align 4
  br label %304

304:                                              ; preds = %542, %303
  %305 = load i32, i32* %11, align 4
  %306 = load i32, i32* %6, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %545

308:                                              ; preds = %304
  %309 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %310 = load i32, i32* %11, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %309, i64 %311
  store %struct.i2c_msg* %312, %struct.i2c_msg** %10, align 8
  %313 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %314 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  store i32 %315, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %316 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %317 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @I2C_M_RD, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %433

322:                                              ; preds = %308
  br label %323

323:                                              ; preds = %425, %322
  %324 = load i32, i32* %13, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %432

326:                                              ; preds = %323
  %327 = load i32, i32* %13, align 4
  %328 = icmp sgt i32 %327, 15
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  store i32 15, i32* %14, align 4
  br label %332

330:                                              ; preds = %326
  %331 = load i32, i32* %13, align 4
  store i32 %331, i32* %14, align 4
  br label %332

332:                                              ; preds = %330, %329
  %333 = load i32, i32* @AVIVO_DC_I2C_STATUS1, align 4
  %334 = load i32, i32* @AVIVO_DC_I2C_DONE, align 4
  %335 = load i32, i32* @AVIVO_DC_I2C_NACK, align 4
  %336 = or i32 %334, %335
  %337 = load i32, i32* @AVIVO_DC_I2C_HALT, align 4
  %338 = or i32 %336, %337
  %339 = call i32 @WREG32(i32 %333, i32 %338)
  %340 = load i32, i32* @AVIVO_DC_I2C_RESET, align 4
  %341 = load i32, i32* @AVIVO_DC_I2C_SOFT_RESET, align 4
  %342 = call i32 @WREG32(i32 %340, i32 %341)
  %343 = call i32 @udelay(i32 1)
  %344 = load i32, i32* @AVIVO_DC_I2C_RESET, align 4
  %345 = call i32 @WREG32(i32 %344, i32 0)
  %346 = load i32, i32* @AVIVO_DC_I2C_DATA, align 4
  %347 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %348 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = shl i32 %349, 1
  %351 = and i32 %350, 255
  %352 = or i32 %351, 1
  %353 = call i32 @WREG32(i32 %346, i32 %352)
  %354 = load i32, i32* @AVIVO_DC_I2C_CONTROL3, align 4
  %355 = call i32 @AVIVO_DC_I2C_TIME_LIMIT(i32 48)
  %356 = call i32 @WREG32(i32 %354, i32 %355)
  %357 = load i32, i32* @AVIVO_DC_I2C_CONTROL2, align 4
  %358 = call i32 @AVIVO_DC_I2C_ADDR_COUNT(i32 1)
  %359 = load i32, i32* %14, align 4
  %360 = call i32 @AVIVO_DC_I2C_DATA_COUNT(i32 %359)
  %361 = or i32 %358, %360
  %362 = load i32, i32* %17, align 4
  %363 = shl i32 %362, 16
  %364 = or i32 %361, %363
  %365 = call i32 @WREG32(i32 %357, i32 %364)
  %366 = load i32, i32* @AVIVO_DC_I2C_CONTROL1, align 4
  %367 = load i32, i32* %19, align 4
  %368 = load i32, i32* @AVIVO_DC_I2C_RECEIVE, align 4
  %369 = or i32 %367, %368
  %370 = call i32 @WREG32(i32 %366, i32 %369)
  %371 = load i32, i32* @AVIVO_DC_I2C_STATUS1, align 4
  %372 = load i32, i32* @AVIVO_DC_I2C_GO, align 4
  %373 = call i32 @WREG32(i32 %371, i32 %372)
  store i32 0, i32* %12, align 4
  br label %374

374:                                              ; preds = %402, %332
  %375 = load i32, i32* %12, align 4
  %376 = icmp slt i32 %375, 200
  br i1 %376, label %377, label %405

377:                                              ; preds = %374
  %378 = call i32 @udelay(i32 50)
  %379 = load i32, i32* @AVIVO_DC_I2C_STATUS1, align 4
  %380 = call i32 @RREG32(i32 %379)
  store i32 %380, i32* %18, align 4
  %381 = load i32, i32* %18, align 4
  %382 = load i32, i32* @AVIVO_DC_I2C_GO, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %377
  br label %402

386:                                              ; preds = %377
  %387 = load i32, i32* @AVIVO_DC_I2C_STATUS1, align 4
  %388 = call i32 @RREG32(i32 %387)
  store i32 %388, i32* %18, align 4
  %389 = load i32, i32* %18, align 4
  %390 = load i32, i32* @AVIVO_DC_I2C_DONE, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %386
  br label %405

394:                                              ; preds = %386
  %395 = load i32, i32* %18, align 4
  %396 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %395)
  %397 = load i32, i32* @AVIVO_DC_I2C_RESET, align 4
  %398 = load i32, i32* @AVIVO_DC_I2C_ABORT, align 4
  %399 = call i32 @WREG32(i32 %397, i32 %398)
  %400 = load i32, i32* @EIO, align 4
  %401 = sub nsw i32 0, %400
  store i32 %401, i32* %16, align 4
  br label %546

402:                                              ; preds = %385
  %403 = load i32, i32* %12, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %12, align 4
  br label %374

405:                                              ; preds = %393, %374
  store i32 0, i32* %12, align 4
  br label %406

406:                                              ; preds = %422, %405
  %407 = load i32, i32* %12, align 4
  %408 = load i32, i32* %14, align 4
  %409 = icmp slt i32 %407, %408
  br i1 %409, label %410, label %425

410:                                              ; preds = %406
  %411 = load i32, i32* @AVIVO_DC_I2C_DATA, align 4
  %412 = call i32 @RREG32(i32 %411)
  %413 = and i32 %412, 255
  %414 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %415 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %414, i32 0, i32 3
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %15, align 4
  %418 = load i32, i32* %12, align 4
  %419 = add nsw i32 %417, %418
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %416, i64 %420
  store i32 %413, i32* %421, align 4
  br label %422

422:                                              ; preds = %410
  %423 = load i32, i32* %12, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %12, align 4
  br label %406

425:                                              ; preds = %406
  %426 = load i32, i32* %14, align 4
  %427 = load i32, i32* %13, align 4
  %428 = sub nsw i32 %427, %426
  store i32 %428, i32* %13, align 4
  %429 = load i32, i32* %14, align 4
  %430 = load i32, i32* %15, align 4
  %431 = add nsw i32 %430, %429
  store i32 %431, i32* %15, align 4
  br label %323

432:                                              ; preds = %323
  br label %541

433:                                              ; preds = %308
  br label %434

434:                                              ; preds = %533, %433
  %435 = load i32, i32* %13, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %540

437:                                              ; preds = %434
  %438 = load i32, i32* %13, align 4
  %439 = icmp sgt i32 %438, 15
  br i1 %439, label %440, label %441

440:                                              ; preds = %437
  store i32 15, i32* %14, align 4
  br label %443

441:                                              ; preds = %437
  %442 = load i32, i32* %13, align 4
  store i32 %442, i32* %14, align 4
  br label %443

443:                                              ; preds = %441, %440
  %444 = load i32, i32* @AVIVO_DC_I2C_STATUS1, align 4
  %445 = load i32, i32* @AVIVO_DC_I2C_DONE, align 4
  %446 = load i32, i32* @AVIVO_DC_I2C_NACK, align 4
  %447 = or i32 %445, %446
  %448 = load i32, i32* @AVIVO_DC_I2C_HALT, align 4
  %449 = or i32 %447, %448
  %450 = call i32 @WREG32(i32 %444, i32 %449)
  %451 = load i32, i32* @AVIVO_DC_I2C_RESET, align 4
  %452 = load i32, i32* @AVIVO_DC_I2C_SOFT_RESET, align 4
  %453 = call i32 @WREG32(i32 %451, i32 %452)
  %454 = call i32 @udelay(i32 1)
  %455 = load i32, i32* @AVIVO_DC_I2C_RESET, align 4
  %456 = call i32 @WREG32(i32 %455, i32 0)
  %457 = load i32, i32* @AVIVO_DC_I2C_DATA, align 4
  %458 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %459 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = shl i32 %460, 1
  %462 = and i32 %461, 255
  %463 = call i32 @WREG32(i32 %457, i32 %462)
  store i32 0, i32* %12, align 4
  br label %464

464:                                              ; preds = %480, %443
  %465 = load i32, i32* %12, align 4
  %466 = load i32, i32* %14, align 4
  %467 = icmp slt i32 %465, %466
  br i1 %467, label %468, label %483

468:                                              ; preds = %464
  %469 = load i32, i32* @AVIVO_DC_I2C_DATA, align 4
  %470 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %471 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %470, i32 0, i32 3
  %472 = load i32*, i32** %471, align 8
  %473 = load i32, i32* %15, align 4
  %474 = load i32, i32* %12, align 4
  %475 = add nsw i32 %473, %474
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %472, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = call i32 @WREG32(i32 %469, i32 %478)
  br label %480

480:                                              ; preds = %468
  %481 = load i32, i32* %12, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %12, align 4
  br label %464

483:                                              ; preds = %464
  %484 = load i32, i32* @AVIVO_DC_I2C_CONTROL3, align 4
  %485 = call i32 @AVIVO_DC_I2C_TIME_LIMIT(i32 48)
  %486 = call i32 @WREG32(i32 %484, i32 %485)
  %487 = load i32, i32* @AVIVO_DC_I2C_CONTROL2, align 4
  %488 = call i32 @AVIVO_DC_I2C_ADDR_COUNT(i32 1)
  %489 = load i32, i32* %14, align 4
  %490 = call i32 @AVIVO_DC_I2C_DATA_COUNT(i32 %489)
  %491 = or i32 %488, %490
  %492 = load i32, i32* %17, align 4
  %493 = shl i32 %492, 16
  %494 = or i32 %491, %493
  %495 = call i32 @WREG32(i32 %487, i32 %494)
  %496 = load i32, i32* @AVIVO_DC_I2C_CONTROL1, align 4
  %497 = load i32, i32* %19, align 4
  %498 = call i32 @WREG32(i32 %496, i32 %497)
  %499 = load i32, i32* @AVIVO_DC_I2C_STATUS1, align 4
  %500 = load i32, i32* @AVIVO_DC_I2C_GO, align 4
  %501 = call i32 @WREG32(i32 %499, i32 %500)
  store i32 0, i32* %12, align 4
  br label %502

502:                                              ; preds = %530, %483
  %503 = load i32, i32* %12, align 4
  %504 = icmp slt i32 %503, 200
  br i1 %504, label %505, label %533

505:                                              ; preds = %502
  %506 = call i32 @udelay(i32 50)
  %507 = load i32, i32* @AVIVO_DC_I2C_STATUS1, align 4
  %508 = call i32 @RREG32(i32 %507)
  store i32 %508, i32* %18, align 4
  %509 = load i32, i32* %18, align 4
  %510 = load i32, i32* @AVIVO_DC_I2C_GO, align 4
  %511 = and i32 %509, %510
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %514

513:                                              ; preds = %505
  br label %530

514:                                              ; preds = %505
  %515 = load i32, i32* @AVIVO_DC_I2C_STATUS1, align 4
  %516 = call i32 @RREG32(i32 %515)
  store i32 %516, i32* %18, align 4
  %517 = load i32, i32* %18, align 4
  %518 = load i32, i32* @AVIVO_DC_I2C_DONE, align 4
  %519 = and i32 %517, %518
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %522

521:                                              ; preds = %514
  br label %533

522:                                              ; preds = %514
  %523 = load i32, i32* %18, align 4
  %524 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %523)
  %525 = load i32, i32* @AVIVO_DC_I2C_RESET, align 4
  %526 = load i32, i32* @AVIVO_DC_I2C_ABORT, align 4
  %527 = call i32 @WREG32(i32 %525, i32 %526)
  %528 = load i32, i32* @EIO, align 4
  %529 = sub nsw i32 0, %528
  store i32 %529, i32* %16, align 4
  br label %546

530:                                              ; preds = %513
  %531 = load i32, i32* %12, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %12, align 4
  br label %502

533:                                              ; preds = %521, %502
  %534 = load i32, i32* %14, align 4
  %535 = load i32, i32* %13, align 4
  %536 = sub nsw i32 %535, %534
  store i32 %536, i32* %13, align 4
  %537 = load i32, i32* %14, align 4
  %538 = load i32, i32* %15, align 4
  %539 = add nsw i32 %538, %537
  store i32 %539, i32* %15, align 4
  br label %434

540:                                              ; preds = %434
  br label %541

541:                                              ; preds = %540, %432
  br label %542

542:                                              ; preds = %541
  %543 = load i32, i32* %11, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %11, align 4
  br label %304

545:                                              ; preds = %304
  br label %546

546:                                              ; preds = %545, %522, %394, %302, %291, %217, %189
  %547 = load i32, i32* @AVIVO_DC_I2C_STATUS1, align 4
  %548 = load i32, i32* @AVIVO_DC_I2C_DONE, align 4
  %549 = load i32, i32* @AVIVO_DC_I2C_NACK, align 4
  %550 = or i32 %548, %549
  %551 = load i32, i32* @AVIVO_DC_I2C_HALT, align 4
  %552 = or i32 %550, %551
  %553 = call i32 @WREG32(i32 %547, i32 %552)
  %554 = load i32, i32* @AVIVO_DC_I2C_RESET, align 4
  %555 = load i32, i32* @AVIVO_DC_I2C_SOFT_RESET, align 4
  %556 = call i32 @WREG32(i32 %554, i32 %555)
  %557 = call i32 @udelay(i32 1)
  %558 = load i32, i32* @AVIVO_DC_I2C_RESET, align 4
  %559 = call i32 @WREG32(i32 %558, i32 0)
  %560 = load i32, i32* @AVIVO_DC_I2C_ARBITRATION, align 4
  %561 = load i32, i32* @AVIVO_DC_I2C_SW_DONE_USING_I2C, align 4
  %562 = call i32 @WREG32(i32 %560, i32 %561)
  %563 = load i32, i32* @AVIVO_DC_I2C_CONTROL1, align 4
  %564 = load i32, i32* %20, align 4
  %565 = call i32 @WREG32(i32 %563, i32 %564)
  %566 = load i32, i32* %21, align 4
  %567 = call i32 @WREG32(i32 1172, i32 %566)
  %568 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %569 = call i32 @RREG32(i32 %568)
  store i32 %569, i32* %18, align 4
  %570 = load i32, i32* @ATOM_S6_HW_I2C_BUSY_STATE, align 4
  %571 = xor i32 %570, -1
  %572 = load i32, i32* %18, align 4
  %573 = and i32 %572, %571
  store i32 %573, i32* %18, align 4
  %574 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %575 = load i32, i32* %18, align 4
  %576 = call i32 @WREG32(i32 %574, i32 %575)
  %577 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %578 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %577, i32 0, i32 1
  %579 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %578, i32 0, i32 0
  %580 = call i32 @mutex_unlock(i32* %579)
  %581 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %582 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %581, i32 0, i32 0
  %583 = call i32 @mutex_unlock(i32* %582)
  %584 = load i32, i32* %16, align 4
  ret i32 %584
}

declare dso_local %struct.radeon_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radeon_get_i2c_prescale(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @AVIVO_DC_I2C_PIN_SELECT(i32) #1

declare dso_local i32 @AVIVO_DC_I2C_TIME_LIMIT(i32) #1

declare dso_local i32 @AVIVO_DC_I2C_ADDR_COUNT(i32) #1

declare dso_local i32 @AVIVO_DC_I2C_DATA_COUNT(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
