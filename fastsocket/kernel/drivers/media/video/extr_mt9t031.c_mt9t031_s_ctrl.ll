; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_queryctrl = type { i64, i64, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i64 }
%struct.i2c_client = type { i32 }
%struct.mt9t031 = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT9T031_READ_MODE_2 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@mt9t031_controls = common dso_local global %struct.v4l2_queryctrl* null, align 8
@MT9T031_CTRL_GAIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Setting gain %d\0A\00", align 1
@MT9T031_GLOBAL_GAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Set gain from 0x%x to 0x%x\0A\00", align 1
@MT9T031_CTRL_EXPOSURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Set shutter from %u to %u\0A\00", align 1
@MT9T031_VERTICAL_BLANK = common dso_local global i32 0, align 4
@MT9T031_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @mt9t031_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t031_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.mt9t031*, align 8
  %8 = alloca %struct.v4l2_queryctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %20 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %6, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %22 = call %struct.mt9t031* @to_mt9t031(%struct.i2c_client* %21)
  store %struct.mt9t031* %22, %struct.mt9t031** %7, align 8
  %23 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %336 [
    i32 128, label %26
    i32 129, label %46
    i32 130, label %66
    i32 132, label %205
    i32 131, label %274
  ]

26:                                               ; preds = %2
  %27 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %33 = load i32, i32* @MT9T031_READ_MODE_2, align 4
  %34 = call i32 @reg_set(%struct.i2c_client* %32, i32 %33, i32 32768)
  store i32 %34, i32* %9, align 4
  br label %39

35:                                               ; preds = %26
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = load i32, i32* @MT9T031_READ_MODE_2, align 4
  %38 = call i32 @reg_clear(%struct.i2c_client* %36, i32 %37, i32 32768)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %340

45:                                               ; preds = %39
  br label %339

46:                                               ; preds = %2
  %47 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %53 = load i32, i32* @MT9T031_READ_MODE_2, align 4
  %54 = call i32 @reg_set(%struct.i2c_client* %52, i32 %53, i32 16384)
  store i32 %54, i32* %9, align 4
  br label %59

55:                                               ; preds = %46
  %56 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %57 = load i32, i32* @MT9T031_READ_MODE_2, align 4
  %58 = call i32 @reg_clear(%struct.i2c_client* %56, i32 %57, i32 16384)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %340

65:                                               ; preds = %59
  br label %339

66:                                               ; preds = %2
  %67 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** @mt9t031_controls, align 8
  %68 = load i64, i64* @MT9T031_CTRL_GAIN, align 8
  %69 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %67, i64 %68
  store %struct.v4l2_queryctrl* %69, %struct.v4l2_queryctrl** %8, align 8
  %70 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %74 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ugt i64 %72, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %66
  %78 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %82 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ult i64 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77, %66
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %340

88:                                               ; preds = %77
  %89 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %93 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ule i64 %91, %94
  br i1 %95, label %96, label %132

96:                                               ; preds = %88
  %97 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %98 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %101 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %99, %102
  store i64 %103, i64* %10, align 8
  %104 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %105 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %108 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sub i64 %106, %109
  %111 = mul i64 %110, 8
  %112 = load i64, i64* %10, align 8
  %113 = udiv i64 %112, 2
  %114 = add i64 %111, %113
  %115 = load i64, i64* %10, align 8
  %116 = udiv i64 %114, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %9, align 4
  %118 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 0
  %120 = load i32, i32* %9, align 4
  %121 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %123 = load i32, i32* @MT9T031_GLOBAL_GAIN, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @reg_write(%struct.i2c_client* %122, i32 %123, i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %96
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %340

131:                                              ; preds = %96
  br label %199

132:                                              ; preds = %88
  %133 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %134 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %137 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = sub i64 %135, %138
  %140 = sub i64 %139, 1
  store i64 %140, i64* %11, align 8
  %141 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %142 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %145 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = sub i64 %143, %146
  %148 = sub i64 %147, 1
  %149 = mul i64 %148, 1015
  %150 = load i64, i64* %11, align 8
  %151 = udiv i64 %150, 2
  %152 = add i64 %149, %151
  %153 = load i64, i64* %11, align 8
  %154 = udiv i64 %152, %153
  %155 = add i64 %154, 9
  store i64 %155, i64* %12, align 8
  %156 = load i64, i64* %12, align 8
  %157 = icmp ule i64 %156, 32
  br i1 %157, label %158, label %161

158:                                              ; preds = %132
  %159 = load i64, i64* %12, align 8
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %9, align 4
  br label %181

161:                                              ; preds = %132
  %162 = load i64, i64* %12, align 8
  %163 = icmp ule i64 %162, 64
  br i1 %163, label %164, label %172

164:                                              ; preds = %161
  %165 = load i64, i64* %12, align 8
  %166 = sub i64 %165, 32
  %167 = mul i64 %166, 16
  %168 = add i64 %167, 16
  %169 = udiv i64 %168, 32
  %170 = add i64 %169, 80
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %9, align 4
  br label %180

172:                                              ; preds = %161
  %173 = load i64, i64* %12, align 8
  %174 = sub i64 %173, 64
  %175 = add i64 %174, 7
  %176 = mul i64 %175, 32
  %177 = and i64 %176, 65280
  %178 = or i64 %177, 96
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %9, align 4
  br label %180

180:                                              ; preds = %172, %164
  br label %181

181:                                              ; preds = %180, %158
  %182 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 0
  %184 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %185 = load i32, i32* @MT9T031_GLOBAL_GAIN, align 4
  %186 = call i32 @reg_read(%struct.i2c_client* %184, i32 %185)
  %187 = load i32, i32* %9, align 4
  %188 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %183, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %186, i32 %187)
  %189 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %190 = load i32, i32* @MT9T031_GLOBAL_GAIN, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @reg_write(%struct.i2c_client* %189, i32 %190, i32 %191)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %181
  %196 = load i32, i32* @EIO, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %3, align 4
  br label %340

198:                                              ; preds = %181
  br label %199

199:                                              ; preds = %198, %131
  %200 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %201 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.mt9t031*, %struct.mt9t031** %7, align 8
  %204 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %203, i32 0, i32 0
  store i64 %202, i64* %204, align 8
  br label %339

205:                                              ; preds = %2
  %206 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** @mt9t031_controls, align 8
  %207 = load i64, i64* @MT9T031_CTRL_EXPOSURE, align 8
  %208 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %206, i64 %207
  store %struct.v4l2_queryctrl* %208, %struct.v4l2_queryctrl** %8, align 8
  %209 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %210 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %213 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ugt i64 %211, %214
  br i1 %215, label %224, label %216

216:                                              ; preds = %205
  %217 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %218 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %221 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp ult i64 %219, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %216, %205
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %3, align 4
  br label %340

227:                                              ; preds = %216
  %228 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %229 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %232 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = sub i64 %230, %233
  store i64 %234, i64* %13, align 8
  %235 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %236 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %239 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = sub i64 %237, %240
  %242 = mul i64 %241, 1048
  %243 = load i64, i64* %13, align 8
  %244 = udiv i64 %243, 2
  %245 = add i64 %242, %244
  %246 = load i64, i64* %13, align 8
  %247 = udiv i64 %245, %246
  %248 = add i64 %247, 1
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %14, align 4
  %250 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %251 = call i32 @get_shutter(%struct.i2c_client* %250, i32* %15)
  %252 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %253 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %252, i32 0, i32 0
  %254 = load i32, i32* %15, align 4
  %255 = load i32, i32* %14, align 4
  %256 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %253, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %254, i32 %255)
  %257 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %258 = load i32, i32* %14, align 4
  %259 = call i32 @set_shutter(%struct.i2c_client* %257, i32 %258)
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %227
  %262 = load i32, i32* @EIO, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %3, align 4
  br label %340

264:                                              ; preds = %227
  %265 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %266 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = trunc i64 %267 to i32
  %269 = load %struct.mt9t031*, %struct.mt9t031** %7, align 8
  %270 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 8
  %271 = load %struct.mt9t031*, %struct.mt9t031** %7, align 8
  %272 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %271, i32 0, i32 2
  store i32 0, i32* %272, align 4
  br label %273

273:                                              ; preds = %264
  br label %339

274:                                              ; preds = %2
  %275 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %276 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %332

279:                                              ; preds = %274
  %280 = load i32, i32* @MT9T031_VERTICAL_BLANK, align 4
  store i32 %280, i32* %16, align 4
  %281 = load i32, i32* @MT9T031_MAX_HEIGHT, align 4
  %282 = load i32, i32* %16, align 4
  %283 = add nsw i32 %281, %282
  store i32 %283, i32* %17, align 4
  %284 = load %struct.mt9t031*, %struct.mt9t031** %7, align 8
  %285 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %284, i32 0, i32 4
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.mt9t031*, %struct.mt9t031** %7, align 8
  %289 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %287, %290
  %292 = load i32, i32* %16, align 4
  %293 = add nsw i32 %291, %292
  store i32 %293, i32* %18, align 4
  %294 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %295 = load i32, i32* %18, align 4
  %296 = call i32 @set_shutter(%struct.i2c_client* %294, i32 %295)
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %279
  %299 = load i32, i32* @EIO, align 4
  %300 = sub nsw i32 0, %299
  store i32 %300, i32* %3, align 4
  br label %340

301:                                              ; preds = %279
  %302 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** @mt9t031_controls, align 8
  %303 = load i64, i64* @MT9T031_CTRL_EXPOSURE, align 8
  %304 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %302, i64 %303
  store %struct.v4l2_queryctrl* %304, %struct.v4l2_queryctrl** %8, align 8
  %305 = load i32, i32* %17, align 4
  %306 = sdiv i32 %305, 2
  %307 = sext i32 %306 to i64
  %308 = load i32, i32* %18, align 4
  %309 = sub i32 %308, 1
  %310 = zext i32 %309 to i64
  %311 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %312 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %315 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = sub i64 %313, %316
  %318 = mul i64 %310, %317
  %319 = add i64 %307, %318
  %320 = load i32, i32* %17, align 4
  %321 = sext i32 %320 to i64
  %322 = udiv i64 %319, %321
  %323 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %324 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = add i64 %322, %325
  %327 = trunc i64 %326 to i32
  %328 = load %struct.mt9t031*, %struct.mt9t031** %7, align 8
  %329 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %328, i32 0, i32 1
  store i32 %327, i32* %329, align 8
  %330 = load %struct.mt9t031*, %struct.mt9t031** %7, align 8
  %331 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %330, i32 0, i32 2
  store i32 1, i32* %331, align 4
  br label %335

332:                                              ; preds = %274
  %333 = load %struct.mt9t031*, %struct.mt9t031** %7, align 8
  %334 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %333, i32 0, i32 2
  store i32 0, i32* %334, align 4
  br label %335

335:                                              ; preds = %332, %301
  br label %339

336:                                              ; preds = %2
  %337 = load i32, i32* @EINVAL, align 4
  %338 = sub nsw i32 0, %337
  store i32 %338, i32* %3, align 4
  br label %340

339:                                              ; preds = %335, %273, %199, %65, %45
  store i32 0, i32* %3, align 4
  br label %340

340:                                              ; preds = %339, %336, %298, %261, %224, %195, %128, %85, %62, %42
  %341 = load i32, i32* %3, align 4
  ret i32 %341
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9t031* @to_mt9t031(%struct.i2c_client*) #1

declare dso_local i32 @reg_set(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @reg_clear(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @get_shutter(%struct.i2c_client*, i32*) #1

declare dso_local i32 @set_shutter(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
