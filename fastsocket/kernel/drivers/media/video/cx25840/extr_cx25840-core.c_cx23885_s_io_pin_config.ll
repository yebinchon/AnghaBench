; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx23885_s_io_pin_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx23885_s_io_pin_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_io_pin_config = type { i64, i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }

@CX25840_PIN_DRIVE_FAST = common dso_local global i64 0, align 8
@CX23885_PAD_IRQ_N = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IO_PIN_DISABLE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IO_PIN_INPUT = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IO_PIN_ACTIVE_LOW = common dso_local global i32 0, align 4
@CX23885_PAD_GPIO19 = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IO_PIN_SET_VALUE = common dso_local global i32 0, align 4
@CX23885_PAD_GPIO20 = common dso_local global i32 0, align 4
@CX23885_PAD_GPIO21 = common dso_local global i32 0, align 4
@CX23885_PAD_GPIO22 = common dso_local global i32 0, align 4
@CX23885_PAD_GPIO23 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64, %struct.v4l2_subdev_io_pin_config*)* @cx23885_s_io_pin_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_s_io_pin_config(%struct.v4l2_subdev* %0, i64 %1, %struct.v4l2_subdev_io_pin_config* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.v4l2_subdev_io_pin_config*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.v4l2_subdev_io_pin_config* %2, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %7, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %16 = call i32 @cx25840_read4(%struct.i2c_client* %15, i32 288)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %18 = call i64 @cx25840_read(%struct.i2c_client* %17, i32 352)
  store i64 %18, i64* %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %20 = call i64 @cx25840_read(%struct.i2c_client* %19, i32 356)
  store i64 %20, i64* %11, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %390, %3
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %5, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %393

26:                                               ; preds = %21
  %27 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %27, i64 %29
  %31 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @CX25840_PIN_DRIVE_FAST, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i64, i64* @CX25840_PIN_DRIVE_FAST, align 8
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %36, %26
  %39 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %39, i64 %41
  %43 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %389 [
    i32 130, label %45
    i32 129, label %93
    i32 128, label %149
    i32 132, label %221
    i32 131, label %277
    i32 133, label %333
  ]

45:                                               ; preds = %38
  %46 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %46, i64 %48
  %50 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CX23885_PAD_IRQ_N, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, -33554433
  store i32 %56, i32* %9, align 4
  br label %92

57:                                               ; preds = %45
  %58 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %58, i64 %60
  %62 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @V4L2_SUBDEV_IO_PIN_DISABLE, align 4
  %65 = load i32, i32* @V4L2_SUBDEV_IO_PIN_INPUT, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, -33554433
  store i32 %71, i32* %9, align 4
  br label %75

72:                                               ; preds = %57
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, 33554432
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %76, i64 %78
  %80 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @V4L2_SUBDEV_IO_PIN_ACTIVE_LOW, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, -16777217
  store i32 %87, i32* %9, align 4
  br label %91

88:                                               ; preds = %75
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, 16777216
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %54
  br label %389

93:                                               ; preds = %38
  %94 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %94, i64 %96
  %98 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CX23885_PAD_GPIO19, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %93
  %103 = load i64, i64* %10, align 8
  %104 = or i64 %103, 1
  store i64 %104, i64* %10, align 8
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, -786433
  store i32 %106, i32* %9, align 4
  %107 = load i64, i64* %12, align 8
  %108 = shl i64 %107, 18
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = or i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %9, align 4
  br label %148

113:                                              ; preds = %93
  %114 = load i64, i64* %10, align 8
  %115 = and i64 %114, -2
  store i64 %115, i64* %10, align 8
  %116 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %116, i64 %118
  %120 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @V4L2_SUBDEV_IO_PIN_SET_VALUE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %113
  %126 = load i64, i64* %11, align 8
  %127 = and i64 %126, -2
  store i64 %127, i64* %11, align 8
  %128 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %128, i64 %130
  %132 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, 1
  %135 = shl i32 %134, 0
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %11, align 8
  %138 = or i64 %137, %136
  store i64 %138, i64* %11, align 8
  br label %139

139:                                              ; preds = %125, %113
  %140 = load i32, i32* %9, align 4
  %141 = and i32 %140, -12289
  store i32 %141, i32* %9, align 4
  %142 = load i64, i64* %12, align 8
  %143 = shl i64 %142, 12
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = or i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %139, %102
  br label %389

149:                                              ; preds = %38
  %150 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %150, i64 %152
  %154 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @CX23885_PAD_GPIO20, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %185

158:                                              ; preds = %149
  %159 = load i64, i64* %10, align 8
  %160 = or i64 %159, 2
  store i64 %160, i64* %10, align 8
  %161 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %161, i64 %163
  %165 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @V4L2_SUBDEV_IO_PIN_DISABLE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %158
  %171 = load i32, i32* %9, align 4
  %172 = and i32 %171, -1025
  store i32 %172, i32* %9, align 4
  br label %176

173:                                              ; preds = %158
  %174 = load i32, i32* %9, align 4
  %175 = or i32 %174, 1024
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32, i32* %9, align 4
  %178 = and i32 %177, -786433
  store i32 %178, i32* %9, align 4
  %179 = load i64, i64* %12, align 8
  %180 = shl i64 %179, 18
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = or i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %9, align 4
  br label %220

185:                                              ; preds = %149
  %186 = load i64, i64* %10, align 8
  %187 = and i64 %186, -3
  store i64 %187, i64* %10, align 8
  %188 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %188, i64 %190
  %192 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @V4L2_SUBDEV_IO_PIN_SET_VALUE, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %211

197:                                              ; preds = %185
  %198 = load i64, i64* %11, align 8
  %199 = and i64 %198, -3
  store i64 %199, i64* %11, align 8
  %200 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %200, i64 %202
  %204 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, 1
  %207 = shl i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* %11, align 8
  %210 = or i64 %209, %208
  store i64 %210, i64* %11, align 8
  br label %211

211:                                              ; preds = %197, %185
  %212 = load i32, i32* %9, align 4
  %213 = and i32 %212, -12289
  store i32 %213, i32* %9, align 4
  %214 = load i64, i64* %12, align 8
  %215 = shl i64 %214, 12
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = or i64 %217, %215
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %9, align 4
  br label %220

220:                                              ; preds = %211, %176
  br label %389

221:                                              ; preds = %38
  %222 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %222, i64 %224
  %226 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @CX23885_PAD_GPIO21, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %241

230:                                              ; preds = %221
  %231 = load i64, i64* %10, align 8
  %232 = or i64 %231, 4
  store i64 %232, i64* %10, align 8
  %233 = load i32, i32* %9, align 4
  %234 = and i32 %233, -12582913
  store i32 %234, i32* %9, align 4
  %235 = load i64, i64* %12, align 8
  %236 = shl i64 %235, 22
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = or i64 %238, %236
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %9, align 4
  br label %276

241:                                              ; preds = %221
  %242 = load i64, i64* %10, align 8
  %243 = and i64 %242, -5
  store i64 %243, i64* %10, align 8
  %244 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %244, i64 %246
  %248 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @V4L2_SUBDEV_IO_PIN_SET_VALUE, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %267

253:                                              ; preds = %241
  %254 = load i64, i64* %11, align 8
  %255 = and i64 %254, -5
  store i64 %255, i64* %11, align 8
  %256 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %256, i64 %258
  %260 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = and i32 %261, 1
  %263 = shl i32 %262, 2
  %264 = sext i32 %263 to i64
  %265 = load i64, i64* %11, align 8
  %266 = or i64 %265, %264
  store i64 %266, i64* %11, align 8
  br label %267

267:                                              ; preds = %253, %241
  %268 = load i32, i32* %9, align 4
  %269 = and i32 %268, -12289
  store i32 %269, i32* %9, align 4
  %270 = load i64, i64* %12, align 8
  %271 = shl i64 %270, 12
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = or i64 %273, %271
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %9, align 4
  br label %276

276:                                              ; preds = %267, %230
  br label %389

277:                                              ; preds = %38
  %278 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %278, i64 %280
  %282 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @CX23885_PAD_GPIO22, align 4
  %285 = icmp ne i32 %283, %284
  br i1 %285, label %286, label %297

286:                                              ; preds = %277
  %287 = load i64, i64* %10, align 8
  %288 = or i64 %287, 8
  store i64 %288, i64* %10, align 8
  %289 = load i32, i32* %9, align 4
  %290 = and i32 %289, -12582913
  store i32 %290, i32* %9, align 4
  %291 = load i64, i64* %12, align 8
  %292 = shl i64 %291, 22
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = or i64 %294, %292
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %9, align 4
  br label %332

297:                                              ; preds = %277
  %298 = load i64, i64* %10, align 8
  %299 = and i64 %298, -9
  store i64 %299, i64* %10, align 8
  %300 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %300, i64 %302
  %304 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @V4L2_SUBDEV_IO_PIN_SET_VALUE, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %323

309:                                              ; preds = %297
  %310 = load i64, i64* %11, align 8
  %311 = and i64 %310, -9
  store i64 %311, i64* %11, align 8
  %312 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %313 = load i32, i32* %8, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %312, i64 %314
  %316 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = and i32 %317, 1
  %319 = shl i32 %318, 3
  %320 = sext i32 %319 to i64
  %321 = load i64, i64* %11, align 8
  %322 = or i64 %321, %320
  store i64 %322, i64* %11, align 8
  br label %323

323:                                              ; preds = %309, %297
  %324 = load i32, i32* %9, align 4
  %325 = and i32 %324, -12289
  store i32 %325, i32* %9, align 4
  %326 = load i64, i64* %12, align 8
  %327 = shl i64 %326, 12
  %328 = load i32, i32* %9, align 4
  %329 = sext i32 %328 to i64
  %330 = or i64 %329, %327
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %9, align 4
  br label %332

332:                                              ; preds = %323, %286
  br label %389

333:                                              ; preds = %38
  %334 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %335 = load i32, i32* %8, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %334, i64 %336
  %338 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @CX23885_PAD_GPIO23, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %342, label %353

342:                                              ; preds = %333
  %343 = load i64, i64* %10, align 8
  %344 = or i64 %343, 16
  store i64 %344, i64* %10, align 8
  %345 = load i32, i32* %9, align 4
  %346 = and i32 %345, -12582913
  store i32 %346, i32* %9, align 4
  %347 = load i64, i64* %12, align 8
  %348 = shl i64 %347, 22
  %349 = load i32, i32* %9, align 4
  %350 = sext i32 %349 to i64
  %351 = or i64 %350, %348
  %352 = trunc i64 %351 to i32
  store i32 %352, i32* %9, align 4
  br label %388

353:                                              ; preds = %333
  %354 = load i64, i64* %10, align 8
  %355 = and i64 %354, -17
  store i64 %355, i64* %10, align 8
  %356 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %356, i64 %358
  %360 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @V4L2_SUBDEV_IO_PIN_SET_VALUE, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %379

365:                                              ; preds = %353
  %366 = load i64, i64* %11, align 8
  %367 = and i64 %366, -17
  store i64 %367, i64* %11, align 8
  %368 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %369 = load i32, i32* %8, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %368, i64 %370
  %372 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 8
  %374 = and i32 %373, 1
  %375 = shl i32 %374, 4
  %376 = sext i32 %375 to i64
  %377 = load i64, i64* %11, align 8
  %378 = or i64 %377, %376
  store i64 %378, i64* %11, align 8
  br label %379

379:                                              ; preds = %365, %353
  %380 = load i32, i32* %9, align 4
  %381 = and i32 %380, -12289
  store i32 %381, i32* %9, align 4
  %382 = load i64, i64* %12, align 8
  %383 = shl i64 %382, 12
  %384 = load i32, i32* %9, align 4
  %385 = sext i32 %384 to i64
  %386 = or i64 %385, %383
  %387 = trunc i64 %386 to i32
  store i32 %387, i32* %9, align 4
  br label %388

388:                                              ; preds = %379, %342
  br label %389

389:                                              ; preds = %38, %388, %332, %276, %220, %148, %92
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %8, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %8, align 4
  br label %21

393:                                              ; preds = %21
  %394 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %395 = load i64, i64* %11, align 8
  %396 = call i32 @cx25840_write(%struct.i2c_client* %394, i32 356, i64 %395)
  %397 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %398 = load i64, i64* %10, align 8
  %399 = call i32 @cx25840_write(%struct.i2c_client* %397, i32 352, i64 %398)
  %400 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %401 = load i32, i32* %9, align 4
  %402 = call i32 @cx25840_write4(%struct.i2c_client* %400, i32 288, i32 %401)
  ret i32 0
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx25840_read4(%struct.i2c_client*, i32) #1

declare dso_local i64 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
