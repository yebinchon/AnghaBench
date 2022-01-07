; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_r100_hw_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_r100_hw_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.radeon_i2c_chan = type { %struct.radeon_i2c_bus_rec, %struct.TYPE_3__* }
%struct.radeon_i2c_bus_rec = type { i32, i64 }
%struct.TYPE_3__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@RADEON_I2C_PRESCALE_SHIFT = common dso_local global i32 0, align 4
@RADEON_I2C_DRIVE_EN = common dso_local global i32 0, align 4
@RADEON_I2C_START = common dso_local global i32 0, align 4
@RADEON_I2C_STOP = common dso_local global i32 0, align 4
@RADEON_I2C_GO = common dso_local global i32 0, align 4
@RADEON_BIOS_6_SCRATCH = common dso_local global i32 0, align 4
@ATOM_S6_HW_I2C_BUSY_STATE = common dso_local global i32 0, align 4
@RADEON_I2C_CNTL_0 = common dso_local global i32 0, align 4
@RADEON_I2C_CNTL_1 = common dso_local global i32 0, align 4
@RADEON_I2C_DATA = common dso_local global i32 0, align 4
@RADEON_DVI_I2C_CNTL_0 = common dso_local global i32 0, align 4
@RADEON_DVI_I2C_CNTL_1 = common dso_local global i32 0, align 4
@RADEON_DVI_I2C_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"gpio not supported with hw i2c\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@R200_SEL_DDC1 = common dso_local global i32 0, align 4
@R200_SEL_DDC3 = common dso_local global i32 0, align 4
@R200_SEL_DDC2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"unsupported asic\0A\00", align 1
@RADEON_I2C_DONE = common dso_local global i32 0, align 4
@RADEON_I2C_NACK = common dso_local global i32 0, align 4
@RADEON_I2C_HALT = common dso_local global i32 0, align 4
@RADEON_I2C_SOFT_RST = common dso_local global i32 0, align 4
@RADEON_I2C_DATA_COUNT_SHIFT = common dso_local global i32 0, align 4
@RADEON_I2C_ADDR_COUNT_SHIFT = common dso_local global i32 0, align 4
@RADEON_I2C_EN = common dso_local global i32 0, align 4
@RADEON_I2C_TIME_LIMIT_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"i2c write error 0x%08x\0A\00", align 1
@RADEON_I2C_ABORT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@RADEON_I2C_RECEIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"i2c read error 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @r100_hw_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r100_hw_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
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
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %22 = call %struct.radeon_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter* %21)
  store %struct.radeon_i2c_chan* %22, %struct.radeon_i2c_chan** %7, align 8
  %23 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.radeon_device*, %struct.radeon_device** %26, align 8
  store %struct.radeon_device* %27, %struct.radeon_device** %8, align 8
  %28 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %7, align 8
  %29 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %28, i32 0, i32 0
  store %struct.radeon_i2c_bus_rec* %29, %struct.radeon_i2c_bus_rec** %9, align 8
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %39 = call i32 @radeon_get_i2c_prescale(%struct.radeon_device* %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @RADEON_I2C_PRESCALE_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* @RADEON_I2C_DRIVE_EN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @RADEON_I2C_START, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @RADEON_I2C_STOP, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RADEON_I2C_GO, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %20, align 4
  %51 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %3
  %56 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %57 = call i32 @RREG32(i32 %56)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* @ATOM_S6_HW_I2C_BUSY_STATE, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @WREG32(i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %55, %3
  %64 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %65 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @RADEON_I2C_CNTL_0, align 4
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* @RADEON_I2C_CNTL_1, align 4
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* @RADEON_I2C_DATA, align 4
  store i32 %71, i32* %18, align 4
  br label %180

72:                                               ; preds = %63
  %73 = load i32, i32* @RADEON_DVI_I2C_CNTL_0, align 4
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* @RADEON_DVI_I2C_CNTL_1, align 4
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* @RADEON_DVI_I2C_DATA, align 4
  store i32 %75, i32* %18, align 4
  %76 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %175 [
    i32 149, label %79
    i32 138, label %79
    i32 143, label %79
    i32 137, label %79
    i32 142, label %79
    i32 141, label %79
    i32 148, label %89
    i32 136, label %108
    i32 135, label %108
    i32 147, label %132
    i32 146, label %132
    i32 134, label %151
    i32 133, label %151
    i32 145, label %151
    i32 144, label %151
    i32 132, label %151
    i32 140, label %151
    i32 139, label %151
  ]

79:                                               ; preds = %72, %72, %72, %72, %72, %72
  %80 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %81 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %84 [
    i32 130, label %83
  ]

83:                                               ; preds = %79
  br label %88

84:                                               ; preds = %79
  %85 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %14, align 4
  br label %443

88:                                               ; preds = %83
  br label %179

89:                                               ; preds = %72
  %90 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %91 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %103 [
    i32 130, label %93
    i32 129, label %98
  ]

93:                                               ; preds = %89
  %94 = load i32, i32* @R200_SEL_DDC1, align 4
  %95 = call i32 @R200_DVI_I2C_PIN_SEL(i32 %94)
  %96 = load i32, i32* %20, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %20, align 4
  br label %107

98:                                               ; preds = %89
  %99 = load i32, i32* @R200_SEL_DDC3, align 4
  %100 = call i32 @R200_DVI_I2C_PIN_SEL(i32 %99)
  %101 = load i32, i32* %20, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %20, align 4
  br label %107

103:                                              ; preds = %89
  %104 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %14, align 4
  br label %443

107:                                              ; preds = %98, %93
  br label %179

108:                                              ; preds = %72, %72
  %109 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %110 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %127 [
    i32 130, label %112
    i32 128, label %117
    i32 131, label %122
  ]

112:                                              ; preds = %108
  %113 = load i32, i32* @R200_SEL_DDC1, align 4
  %114 = call i32 @R200_DVI_I2C_PIN_SEL(i32 %113)
  %115 = load i32, i32* %20, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %20, align 4
  br label %131

117:                                              ; preds = %108
  %118 = load i32, i32* @R200_SEL_DDC2, align 4
  %119 = call i32 @R200_DVI_I2C_PIN_SEL(i32 %118)
  %120 = load i32, i32* %20, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %20, align 4
  br label %131

122:                                              ; preds = %108
  %123 = load i32, i32* @R200_SEL_DDC3, align 4
  %124 = call i32 @R200_DVI_I2C_PIN_SEL(i32 %123)
  %125 = load i32, i32* %20, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %20, align 4
  br label %131

127:                                              ; preds = %108
  %128 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %14, align 4
  br label %443

131:                                              ; preds = %122, %117, %112
  br label %179

132:                                              ; preds = %72, %72
  %133 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %134 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %146 [
    i32 128, label %136
    i32 130, label %141
  ]

136:                                              ; preds = %132
  %137 = load i32, i32* @R200_SEL_DDC1, align 4
  %138 = call i32 @R200_DVI_I2C_PIN_SEL(i32 %137)
  %139 = load i32, i32* %20, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %20, align 4
  br label %150

141:                                              ; preds = %132
  %142 = load i32, i32* @R200_SEL_DDC3, align 4
  %143 = call i32 @R200_DVI_I2C_PIN_SEL(i32 %142)
  %144 = load i32, i32* %20, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %20, align 4
  br label %150

146:                                              ; preds = %132
  %147 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %14, align 4
  br label %443

150:                                              ; preds = %141, %136
  br label %179

151:                                              ; preds = %72, %72, %72, %72, %72, %72, %72
  %152 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %153 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  switch i32 %154, label %170 [
    i32 128, label %155
    i32 130, label %160
    i32 129, label %165
  ]

155:                                              ; preds = %151
  %156 = load i32, i32* @R200_SEL_DDC1, align 4
  %157 = call i32 @R200_DVI_I2C_PIN_SEL(i32 %156)
  %158 = load i32, i32* %20, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %20, align 4
  br label %174

160:                                              ; preds = %151
  %161 = load i32, i32* @R200_SEL_DDC2, align 4
  %162 = call i32 @R200_DVI_I2C_PIN_SEL(i32 %161)
  %163 = load i32, i32* %20, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %20, align 4
  br label %174

165:                                              ; preds = %151
  %166 = load i32, i32* @R200_SEL_DDC3, align 4
  %167 = call i32 @R200_DVI_I2C_PIN_SEL(i32 %166)
  %168 = load i32, i32* %20, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %20, align 4
  br label %174

170:                                              ; preds = %151
  %171 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %14, align 4
  br label %443

174:                                              ; preds = %165, %160, %155
  br label %179

175:                                              ; preds = %72
  %176 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %14, align 4
  br label %443

179:                                              ; preds = %174, %150, %131, %107, %88
  br label %180

180:                                              ; preds = %179, %68
  %181 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %182 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %181, i64 0
  store %struct.i2c_msg* %182, %struct.i2c_msg** %10, align 8
  %183 = load i32, i32* %6, align 4
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %258

185:                                              ; preds = %180
  %186 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %187 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %258

190:                                              ; preds = %185
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* @RADEON_I2C_DONE, align 4
  %193 = load i32, i32* @RADEON_I2C_NACK, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @RADEON_I2C_HALT, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @RADEON_I2C_SOFT_RST, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @WREG32(i32 %191, i32 %198)
  %200 = load i32, i32* %18, align 4
  %201 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %202 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 1
  %205 = and i32 %204, 255
  %206 = call i32 @WREG32(i32 %200, i32 %205)
  %207 = load i32, i32* %18, align 4
  %208 = call i32 @WREG32(i32 %207, i32 0)
  %209 = load i32, i32* %17, align 4
  %210 = load i32, i32* @RADEON_I2C_DATA_COUNT_SHIFT, align 4
  %211 = shl i32 1, %210
  %212 = load i32, i32* @RADEON_I2C_ADDR_COUNT_SHIFT, align 4
  %213 = shl i32 1, %212
  %214 = or i32 %211, %213
  %215 = load i32, i32* @RADEON_I2C_EN, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @RADEON_I2C_TIME_LIMIT_SHIFT, align 4
  %218 = shl i32 48, %217
  %219 = or i32 %216, %218
  %220 = call i32 @WREG32(i32 %209, i32 %219)
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %20, align 4
  %223 = call i32 @WREG32(i32 %221, i32 %222)
  store i32 0, i32* %13, align 4
  br label %224

224:                                              ; preds = %254, %190
  %225 = load i32, i32* %13, align 4
  %226 = icmp slt i32 %225, 32
  br i1 %226, label %227, label %257

227:                                              ; preds = %224
  %228 = call i32 @udelay(i32 10)
  %229 = load i32, i32* %16, align 4
  %230 = call i32 @RREG32(i32 %229)
  store i32 %230, i32* %19, align 4
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* @RADEON_I2C_GO, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %227
  br label %254

236:                                              ; preds = %227
  %237 = load i32, i32* %16, align 4
  %238 = call i32 @RREG32(i32 %237)
  store i32 %238, i32* %19, align 4
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* @RADEON_I2C_DONE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %257

244:                                              ; preds = %236
  %245 = load i32, i32* %19, align 4
  %246 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %245)
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %19, align 4
  %249 = load i32, i32* @RADEON_I2C_ABORT, align 4
  %250 = or i32 %248, %249
  %251 = call i32 @WREG32(i32 %247, i32 %250)
  %252 = load i32, i32* @EIO, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %14, align 4
  br label %443

254:                                              ; preds = %235
  %255 = load i32, i32* %13, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %13, align 4
  br label %224

257:                                              ; preds = %243, %224
  br label %443

258:                                              ; preds = %185, %180
  store i32 0, i32* %11, align 4
  br label %259

259:                                              ; preds = %439, %258
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* %6, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %442

263:                                              ; preds = %259
  %264 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %264, i64 %266
  store %struct.i2c_msg* %267, %struct.i2c_msg** %10, align 8
  store i32 0, i32* %12, align 4
  br label %268

268:                                              ; preds = %435, %263
  %269 = load i32, i32* %12, align 4
  %270 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %271 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %438

274:                                              ; preds = %268
  %275 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %276 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @I2C_M_RD, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %359

281:                                              ; preds = %274
  %282 = load i32, i32* %16, align 4
  %283 = load i32, i32* @RADEON_I2C_DONE, align 4
  %284 = load i32, i32* @RADEON_I2C_NACK, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @RADEON_I2C_HALT, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @RADEON_I2C_SOFT_RST, align 4
  %289 = or i32 %287, %288
  %290 = call i32 @WREG32(i32 %282, i32 %289)
  %291 = load i32, i32* %18, align 4
  %292 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %293 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = shl i32 %294, 1
  %296 = and i32 %295, 255
  %297 = or i32 %296, 1
  %298 = call i32 @WREG32(i32 %291, i32 %297)
  %299 = load i32, i32* %17, align 4
  %300 = load i32, i32* @RADEON_I2C_DATA_COUNT_SHIFT, align 4
  %301 = shl i32 1, %300
  %302 = load i32, i32* @RADEON_I2C_ADDR_COUNT_SHIFT, align 4
  %303 = shl i32 1, %302
  %304 = or i32 %301, %303
  %305 = load i32, i32* @RADEON_I2C_EN, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* @RADEON_I2C_TIME_LIMIT_SHIFT, align 4
  %308 = shl i32 48, %307
  %309 = or i32 %306, %308
  %310 = call i32 @WREG32(i32 %299, i32 %309)
  %311 = load i32, i32* %16, align 4
  %312 = load i32, i32* %20, align 4
  %313 = load i32, i32* @RADEON_I2C_RECEIVE, align 4
  %314 = or i32 %312, %313
  %315 = call i32 @WREG32(i32 %311, i32 %314)
  store i32 0, i32* %13, align 4
  br label %316

316:                                              ; preds = %346, %281
  %317 = load i32, i32* %13, align 4
  %318 = icmp slt i32 %317, 32
  br i1 %318, label %319, label %349

319:                                              ; preds = %316
  %320 = call i32 @udelay(i32 10)
  %321 = load i32, i32* %16, align 4
  %322 = call i32 @RREG32(i32 %321)
  store i32 %322, i32* %19, align 4
  %323 = load i32, i32* %19, align 4
  %324 = load i32, i32* @RADEON_I2C_GO, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %319
  br label %346

328:                                              ; preds = %319
  %329 = load i32, i32* %16, align 4
  %330 = call i32 @RREG32(i32 %329)
  store i32 %330, i32* %19, align 4
  %331 = load i32, i32* %19, align 4
  %332 = load i32, i32* @RADEON_I2C_DONE, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %328
  br label %349

336:                                              ; preds = %328
  %337 = load i32, i32* %19, align 4
  %338 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %337)
  %339 = load i32, i32* %16, align 4
  %340 = load i32, i32* %19, align 4
  %341 = load i32, i32* @RADEON_I2C_ABORT, align 4
  %342 = or i32 %340, %341
  %343 = call i32 @WREG32(i32 %339, i32 %342)
  %344 = load i32, i32* @EIO, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %14, align 4
  br label %443

346:                                              ; preds = %327
  %347 = load i32, i32* %13, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %13, align 4
  br label %316

349:                                              ; preds = %335, %316
  %350 = load i32, i32* %18, align 4
  %351 = call i32 @RREG32(i32 %350)
  %352 = and i32 %351, 255
  %353 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %354 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %353, i32 0, i32 3
  %355 = load i32*, i32** %354, align 8
  %356 = load i32, i32* %12, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  store i32 %352, i32* %358, align 4
  br label %434

359:                                              ; preds = %274
  %360 = load i32, i32* %16, align 4
  %361 = load i32, i32* @RADEON_I2C_DONE, align 4
  %362 = load i32, i32* @RADEON_I2C_NACK, align 4
  %363 = or i32 %361, %362
  %364 = load i32, i32* @RADEON_I2C_HALT, align 4
  %365 = or i32 %363, %364
  %366 = load i32, i32* @RADEON_I2C_SOFT_RST, align 4
  %367 = or i32 %365, %366
  %368 = call i32 @WREG32(i32 %360, i32 %367)
  %369 = load i32, i32* %18, align 4
  %370 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %371 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = shl i32 %372, 1
  %374 = and i32 %373, 255
  %375 = call i32 @WREG32(i32 %369, i32 %374)
  %376 = load i32, i32* %18, align 4
  %377 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %378 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %377, i32 0, i32 3
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %12, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @WREG32(i32 %376, i32 %383)
  %385 = load i32, i32* %17, align 4
  %386 = load i32, i32* @RADEON_I2C_DATA_COUNT_SHIFT, align 4
  %387 = shl i32 1, %386
  %388 = load i32, i32* @RADEON_I2C_ADDR_COUNT_SHIFT, align 4
  %389 = shl i32 1, %388
  %390 = or i32 %387, %389
  %391 = load i32, i32* @RADEON_I2C_EN, align 4
  %392 = or i32 %390, %391
  %393 = load i32, i32* @RADEON_I2C_TIME_LIMIT_SHIFT, align 4
  %394 = shl i32 48, %393
  %395 = or i32 %392, %394
  %396 = call i32 @WREG32(i32 %385, i32 %395)
  %397 = load i32, i32* %16, align 4
  %398 = load i32, i32* %20, align 4
  %399 = call i32 @WREG32(i32 %397, i32 %398)
  store i32 0, i32* %13, align 4
  br label %400

400:                                              ; preds = %430, %359
  %401 = load i32, i32* %13, align 4
  %402 = icmp slt i32 %401, 32
  br i1 %402, label %403, label %433

403:                                              ; preds = %400
  %404 = call i32 @udelay(i32 10)
  %405 = load i32, i32* %16, align 4
  %406 = call i32 @RREG32(i32 %405)
  store i32 %406, i32* %19, align 4
  %407 = load i32, i32* %19, align 4
  %408 = load i32, i32* @RADEON_I2C_GO, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %403
  br label %430

412:                                              ; preds = %403
  %413 = load i32, i32* %16, align 4
  %414 = call i32 @RREG32(i32 %413)
  store i32 %414, i32* %19, align 4
  %415 = load i32, i32* %19, align 4
  %416 = load i32, i32* @RADEON_I2C_DONE, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %412
  br label %433

420:                                              ; preds = %412
  %421 = load i32, i32* %19, align 4
  %422 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %421)
  %423 = load i32, i32* %16, align 4
  %424 = load i32, i32* %19, align 4
  %425 = load i32, i32* @RADEON_I2C_ABORT, align 4
  %426 = or i32 %424, %425
  %427 = call i32 @WREG32(i32 %423, i32 %426)
  %428 = load i32, i32* @EIO, align 4
  %429 = sub nsw i32 0, %428
  store i32 %429, i32* %14, align 4
  br label %443

430:                                              ; preds = %411
  %431 = load i32, i32* %13, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %13, align 4
  br label %400

433:                                              ; preds = %419, %400
  br label %434

434:                                              ; preds = %433, %349
  br label %435

435:                                              ; preds = %434
  %436 = load i32, i32* %12, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %12, align 4
  br label %268

438:                                              ; preds = %268
  br label %439

439:                                              ; preds = %438
  %440 = load i32, i32* %11, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %11, align 4
  br label %259

442:                                              ; preds = %259
  br label %443

443:                                              ; preds = %442, %420, %336, %257, %244, %175, %170, %146, %127, %103, %84
  %444 = load i32, i32* %16, align 4
  %445 = call i32 @WREG32(i32 %444, i32 0)
  %446 = load i32, i32* %17, align 4
  %447 = call i32 @WREG32(i32 %446, i32 0)
  %448 = load i32, i32* %16, align 4
  %449 = load i32, i32* @RADEON_I2C_DONE, align 4
  %450 = load i32, i32* @RADEON_I2C_NACK, align 4
  %451 = or i32 %449, %450
  %452 = load i32, i32* @RADEON_I2C_HALT, align 4
  %453 = or i32 %451, %452
  %454 = load i32, i32* @RADEON_I2C_SOFT_RST, align 4
  %455 = or i32 %453, %454
  %456 = call i32 @WREG32(i32 %448, i32 %455)
  %457 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %458 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %457, i32 0, i32 3
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %471

461:                                              ; preds = %443
  %462 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %463 = call i32 @RREG32(i32 %462)
  store i32 %463, i32* %19, align 4
  %464 = load i32, i32* @ATOM_S6_HW_I2C_BUSY_STATE, align 4
  %465 = xor i32 %464, -1
  %466 = load i32, i32* %19, align 4
  %467 = and i32 %466, %465
  store i32 %467, i32* %19, align 4
  %468 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %469 = load i32, i32* %19, align 4
  %470 = call i32 @WREG32(i32 %468, i32 %469)
  br label %471

471:                                              ; preds = %461, %443
  %472 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %473 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %472, i32 0, i32 2
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %473, i32 0, i32 0
  %475 = call i32 @mutex_unlock(i32* %474)
  %476 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %477 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %476, i32 0, i32 1
  %478 = call i32 @mutex_unlock(i32* %477)
  %479 = load i32, i32* %14, align 4
  ret i32 %479
}

declare dso_local %struct.radeon_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radeon_get_i2c_prescale(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @R200_DVI_I2C_PIN_SEL(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
