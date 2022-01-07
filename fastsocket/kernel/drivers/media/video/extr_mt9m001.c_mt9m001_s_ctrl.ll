; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m001.c_mt9m001_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m001.c_mt9m001_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i64 }
%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { i32* }
%struct.mt9m001 = type { i64, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_queryctrl = type { i64, i64, i64 }

@mt9m001_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT9M001_READ_OPTIONS2 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Setting gain %d\0A\00", align 1
@MT9M001_GLOBAL_GAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Setting gain from %d to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Setting shutter width from %d to %lu\0A\00", align 1
@MT9M001_SHUTTER_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @mt9m001_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m001_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.mt9m001*, align 8
  %8 = alloca %struct.soc_camera_device*, align 8
  %9 = alloca %struct.v4l2_queryctrl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = call %struct.mt9m001* @to_mt9m001(%struct.i2c_client* %20)
  store %struct.mt9m001* %21, %struct.mt9m001** %7, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.soc_camera_device*, %struct.soc_camera_device** %24, align 8
  store %struct.soc_camera_device* %25, %struct.soc_camera_device** %8, align 8
  %26 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.v4l2_queryctrl* @soc_camera_find_qctrl(i32* @mt9m001_ops, i32 %28)
  store %struct.v4l2_queryctrl* %29, %struct.v4l2_queryctrl** %9, align 8
  %30 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %31 = icmp ne %struct.v4l2_queryctrl* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %317

35:                                               ; preds = %2
  %36 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %316 [
    i32 128, label %39
    i32 129, label %59
    i32 131, label %195
    i32 130, label %262
  ]

39:                                               ; preds = %35
  %40 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %46 = load i32, i32* @MT9M001_READ_OPTIONS2, align 4
  %47 = call i32 @reg_set(%struct.i2c_client* %45, i32 %46, i32 32768)
  store i32 %47, i32* %10, align 4
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %50 = load i32, i32* @MT9M001_READ_OPTIONS2, align 4
  %51 = call i32 @reg_clear(%struct.i2c_client* %49, i32 %50, i32 32768)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %317

58:                                               ; preds = %52
  br label %316

59:                                               ; preds = %35
  %60 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %64 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ugt i64 %62, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %59
  %68 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %72 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %67, %59
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %317

78:                                               ; preds = %67
  %79 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %83 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ule i64 %81, %84
  br i1 %85, label %86, label %122

86:                                               ; preds = %78
  %87 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %88 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %91 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %89, %92
  store i64 %93, i64* %11, align 8
  %94 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %98 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %96, %99
  %101 = mul i64 %100, 8
  %102 = load i64, i64* %11, align 8
  %103 = udiv i64 %102, 2
  %104 = add i64 %101, %103
  %105 = load i64, i64* %11, align 8
  %106 = udiv i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %10, align 4
  %108 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = load i32, i32* %10, align 4
  %111 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_4__* %109, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %113 = load i32, i32* @MT9M001_GLOBAL_GAIN, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @reg_write(%struct.i2c_client* %112, i32 %113, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %86
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %317

121:                                              ; preds = %86
  br label %189

122:                                              ; preds = %78
  %123 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %124 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %127 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = sub i64 %125, %128
  %130 = sub i64 %129, 1
  store i64 %130, i64* %12, align 8
  %131 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %132 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %135 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = sub i64 %133, %136
  %138 = sub i64 %137, 1
  %139 = mul i64 %138, 111
  %140 = load i64, i64* %12, align 8
  %141 = udiv i64 %140, 2
  %142 = add i64 %139, %141
  %143 = load i64, i64* %12, align 8
  %144 = udiv i64 %142, %143
  %145 = add i64 %144, 9
  store i64 %145, i64* %13, align 8
  %146 = load i64, i64* %13, align 8
  %147 = icmp ule i64 %146, 32
  br i1 %147, label %148, label %151

148:                                              ; preds = %122
  %149 = load i64, i64* %13, align 8
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %10, align 4
  br label %171

151:                                              ; preds = %122
  %152 = load i64, i64* %13, align 8
  %153 = icmp ule i64 %152, 64
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  %155 = load i64, i64* %13, align 8
  %156 = sub i64 %155, 32
  %157 = mul i64 %156, 16
  %158 = add i64 %157, 16
  %159 = udiv i64 %158, 32
  %160 = add i64 %159, 80
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %10, align 4
  br label %170

162:                                              ; preds = %151
  %163 = load i64, i64* %13, align 8
  %164 = sub i64 %163, 64
  %165 = mul i64 %164, 7
  %166 = add i64 %165, 28
  %167 = udiv i64 %166, 56
  %168 = add i64 %167, 96
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %162, %154
  br label %171

171:                                              ; preds = %170, %148
  %172 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %173 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %172, i32 0, i32 0
  %174 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %175 = load i32, i32* @MT9M001_GLOBAL_GAIN, align 4
  %176 = call i32 @reg_read(%struct.i2c_client* %174, i32 %175)
  %177 = load i32, i32* %10, align 4
  %178 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_4__* %173, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %176, i32 %177)
  %179 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %180 = load i32, i32* @MT9M001_GLOBAL_GAIN, align 4
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @reg_write(%struct.i2c_client* %179, i32 %180, i32 %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %171
  %186 = load i32, i32* @EIO, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %317

188:                                              ; preds = %171
  br label %189

189:                                              ; preds = %188, %121
  %190 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %191 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %194 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  br label %316

195:                                              ; preds = %35
  %196 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %197 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %200 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ugt i64 %198, %201
  br i1 %202, label %211, label %203

203:                                              ; preds = %195
  %204 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %205 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %208 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ult i64 %206, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %203, %195
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %3, align 4
  br label %317

214:                                              ; preds = %203
  %215 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %216 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %219 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = sub i64 %217, %220
  store i64 %221, i64* %14, align 8
  %222 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %223 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %226 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = sub i64 %224, %227
  %229 = mul i64 %228, 1048
  %230 = load i64, i64* %14, align 8
  %231 = udiv i64 %230, 2
  %232 = add i64 %229, %231
  %233 = load i64, i64* %14, align 8
  %234 = udiv i64 %232, %233
  %235 = add i64 %234, 1
  store i64 %235, i64* %15, align 8
  %236 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %237 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %236, i32 0, i32 0
  %238 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %239 = load i32, i32* @MT9M001_SHUTTER_WIDTH, align 4
  %240 = call i32 @reg_read(%struct.i2c_client* %238, i32 %239)
  %241 = load i64, i64* %15, align 8
  %242 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_4__* %237, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %240, i64 %241)
  %243 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %244 = load i32, i32* @MT9M001_SHUTTER_WIDTH, align 4
  %245 = load i64, i64* %15, align 8
  %246 = trunc i64 %245 to i32
  %247 = call i32 @reg_write(%struct.i2c_client* %243, i32 %244, i32 %246)
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %214
  %250 = load i32, i32* @EIO, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %3, align 4
  br label %317

252:                                              ; preds = %214
  %253 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %254 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = trunc i64 %255 to i32
  %257 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %258 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 8
  %259 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %260 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %259, i32 0, i32 2
  store i32 0, i32* %260, align 4
  br label %261

261:                                              ; preds = %252
  br label %316

262:                                              ; preds = %35
  %263 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %264 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %312

267:                                              ; preds = %262
  store i32 25, i32* %16, align 4
  %268 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %269 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %268, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %273 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = add i32 %271, %274
  %276 = add i32 %275, 25
  store i32 %276, i32* %17, align 4
  %277 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %278 = load i32, i32* @MT9M001_SHUTTER_WIDTH, align 4
  %279 = load i32, i32* %17, align 4
  %280 = call i32 @reg_write(%struct.i2c_client* %277, i32 %278, i32 %279)
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %267
  %283 = load i32, i32* @EIO, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %3, align 4
  br label %317

285:                                              ; preds = %267
  %286 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %287 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = call %struct.v4l2_queryctrl* @soc_camera_find_qctrl(i32* %288, i32 131)
  store %struct.v4l2_queryctrl* %289, %struct.v4l2_queryctrl** %9, align 8
  %290 = load i32, i32* %17, align 4
  %291 = sub i32 %290, 1
  %292 = zext i32 %291 to i64
  %293 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %294 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %297 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = sub i64 %295, %298
  %300 = mul i64 %292, %299
  %301 = add i64 524, %300
  %302 = udiv i64 %301, 1048
  %303 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %304 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = add i64 %302, %305
  %307 = trunc i64 %306 to i32
  %308 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %309 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %308, i32 0, i32 1
  store i32 %307, i32* %309, align 8
  %310 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %311 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %310, i32 0, i32 2
  store i32 1, i32* %311, align 4
  br label %315

312:                                              ; preds = %262
  %313 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %314 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %313, i32 0, i32 2
  store i32 0, i32* %314, align 4
  br label %315

315:                                              ; preds = %312, %285
  br label %316

316:                                              ; preds = %35, %315, %261, %189, %58
  store i32 0, i32* %3, align 4
  br label %317

317:                                              ; preds = %316, %282, %249, %211, %185, %118, %75, %55, %32
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9m001* @to_mt9m001(%struct.i2c_client*) #1

declare dso_local %struct.v4l2_queryctrl* @soc_camera_find_qctrl(i32*, i32) #1

declare dso_local i32 @reg_set(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @reg_clear(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_4__*, i8*, i32, ...) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
