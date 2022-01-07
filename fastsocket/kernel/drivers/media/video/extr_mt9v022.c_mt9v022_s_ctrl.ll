; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v022.c_mt9v022_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v022.c_mt9v022_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i64 }
%struct.i2c_client = type { i32 }
%struct.v4l2_queryctrl = type { i64, i64 }

@mt9v022_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT9V022_READ_MODE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MT9V022_AEC_AGC_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Setting gain from %d to %lu\0A\00", align 1
@MT9V022_ANALOG_GAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Shutter width from %d to %lu\0A\00", align 1
@MT9V022_TOTAL_SHUTTER_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @mt9v022_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v022_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.v4l2_queryctrl*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %7, align 8
  %15 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.v4l2_queryctrl* @soc_camera_find_qctrl(i32* @mt9v022_ops, i32 %17)
  store %struct.v4l2_queryctrl* %18, %struct.v4l2_queryctrl** %8, align 8
  %19 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %20 = icmp ne %struct.v4l2_queryctrl* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %247

24:                                               ; preds = %2
  %25 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %246 [
    i32 128, label %28
    i32 129, label %48
    i32 130, label %68
    i32 132, label %140
    i32 133, label %206
    i32 131, label %226
  ]

28:                                               ; preds = %24
  %29 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %35 = load i32, i32* @MT9V022_READ_MODE, align 4
  %36 = call i32 @reg_set(%struct.i2c_client* %34, i32 %35, i32 16)
  store i32 %36, i32* %6, align 4
  br label %41

37:                                               ; preds = %28
  %38 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %39 = load i32, i32* @MT9V022_READ_MODE, align 4
  %40 = call i32 @reg_clear(%struct.i2c_client* %38, i32 %39, i32 16)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %247

47:                                               ; preds = %41
  br label %246

48:                                               ; preds = %24
  %49 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %55 = load i32, i32* @MT9V022_READ_MODE, align 4
  %56 = call i32 @reg_set(%struct.i2c_client* %54, i32 %55, i32 32)
  store i32 %56, i32* %6, align 4
  br label %61

57:                                               ; preds = %48
  %58 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %59 = load i32, i32* @MT9V022_READ_MODE, align 4
  %60 = call i32 @reg_clear(%struct.i2c_client* %58, i32 %59, i32 32)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %247

67:                                               ; preds = %61
  br label %246

68:                                               ; preds = %24
  %69 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %73 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ugt i64 %71, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %68
  %77 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %81 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76, %68
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %247

87:                                               ; preds = %76
  %88 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %89 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %92 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %90, %93
  store i64 %94, i64* %9, align 8
  %95 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %99 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 %97, %100
  %102 = mul i64 %101, 48
  %103 = load i64, i64* %9, align 8
  %104 = udiv i64 %103, 2
  %105 = add i64 %102, %104
  %106 = load i64, i64* %9, align 8
  %107 = udiv i64 %105, %106
  %108 = add i64 %107, 16
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp uge i64 %109, 32
  br i1 %110, label %111, label %114

111:                                              ; preds = %87
  %112 = load i64, i64* %10, align 8
  %113 = and i64 %112, -2
  store i64 %113, i64* %10, align 8
  br label %114

114:                                              ; preds = %111, %87
  %115 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %116 = load i32, i32* @MT9V022_AEC_AGC_ENABLE, align 4
  %117 = call i32 @reg_clear(%struct.i2c_client* %115, i32 %116, i32 2)
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %247

122:                                              ; preds = %114
  %123 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 0
  %125 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %126 = load i32, i32* @MT9V022_ANALOG_GAIN, align 4
  %127 = call i32 @reg_read(%struct.i2c_client* %125, i32 %126)
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @dev_dbg(i32* %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %127, i64 %128)
  %130 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %131 = load i32, i32* @MT9V022_ANALOG_GAIN, align 4
  %132 = load i64, i64* %10, align 8
  %133 = call i32 @reg_write(%struct.i2c_client* %130, i32 %131, i64 %132)
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %122
  %136 = load i32, i32* @EIO, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %247

138:                                              ; preds = %122
  br label %139

139:                                              ; preds = %138
  br label %246

140:                                              ; preds = %24
  %141 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %142 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %145 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ugt i64 %143, %146
  br i1 %147, label %156, label %148

148:                                              ; preds = %140
  %149 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %150 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %153 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ult i64 %151, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %148, %140
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %247

159:                                              ; preds = %148
  %160 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %161 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %164 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = sub i64 %162, %165
  store i64 %166, i64* %11, align 8
  %167 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %168 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %171 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = sub i64 %169, %172
  %174 = mul i64 %173, 479
  %175 = load i64, i64* %11, align 8
  %176 = udiv i64 %175, 2
  %177 = add i64 %174, %176
  %178 = load i64, i64* %11, align 8
  %179 = udiv i64 %177, %178
  %180 = add i64 %179, 1
  store i64 %180, i64* %12, align 8
  %181 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %182 = load i32, i32* @MT9V022_AEC_AGC_ENABLE, align 4
  %183 = call i32 @reg_clear(%struct.i2c_client* %181, i32 %182, i32 1)
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %159
  %186 = load i32, i32* @EIO, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %247

188:                                              ; preds = %159
  %189 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %190 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %189, i32 0, i32 0
  %191 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %192 = load i32, i32* @MT9V022_TOTAL_SHUTTER_WIDTH, align 4
  %193 = call i32 @reg_read(%struct.i2c_client* %191, i32 %192)
  %194 = load i64, i64* %12, align 8
  %195 = call i32 @dev_dbg(i32* %190, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %193, i64 %194)
  %196 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %197 = load i32, i32* @MT9V022_TOTAL_SHUTTER_WIDTH, align 4
  %198 = load i64, i64* %12, align 8
  %199 = call i32 @reg_write(%struct.i2c_client* %196, i32 %197, i64 %198)
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %188
  %202 = load i32, i32* @EIO, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %3, align 4
  br label %247

204:                                              ; preds = %188
  br label %205

205:                                              ; preds = %204
  br label %246

206:                                              ; preds = %24
  %207 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %208 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %213 = load i32, i32* @MT9V022_AEC_AGC_ENABLE, align 4
  %214 = call i32 @reg_set(%struct.i2c_client* %212, i32 %213, i32 2)
  store i32 %214, i32* %6, align 4
  br label %219

215:                                              ; preds = %206
  %216 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %217 = load i32, i32* @MT9V022_AEC_AGC_ENABLE, align 4
  %218 = call i32 @reg_clear(%struct.i2c_client* %216, i32 %217, i32 2)
  store i32 %218, i32* %6, align 4
  br label %219

219:                                              ; preds = %215, %211
  %220 = load i32, i32* %6, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32, i32* @EIO, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %3, align 4
  br label %247

225:                                              ; preds = %219
  br label %246

226:                                              ; preds = %24
  %227 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %228 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %233 = load i32, i32* @MT9V022_AEC_AGC_ENABLE, align 4
  %234 = call i32 @reg_set(%struct.i2c_client* %232, i32 %233, i32 1)
  store i32 %234, i32* %6, align 4
  br label %239

235:                                              ; preds = %226
  %236 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %237 = load i32, i32* @MT9V022_AEC_AGC_ENABLE, align 4
  %238 = call i32 @reg_clear(%struct.i2c_client* %236, i32 %237, i32 1)
  store i32 %238, i32* %6, align 4
  br label %239

239:                                              ; preds = %235, %231
  %240 = load i32, i32* %6, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i32, i32* @EIO, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %3, align 4
  br label %247

245:                                              ; preds = %239
  br label %246

246:                                              ; preds = %24, %245, %225, %205, %139, %67, %47
  store i32 0, i32* %3, align 4
  br label %247

247:                                              ; preds = %246, %242, %222, %201, %185, %156, %135, %119, %84, %64, %44, %21
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_queryctrl* @soc_camera_find_qctrl(i32*, i32) #1

declare dso_local i32 @reg_set(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @reg_clear(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64) #1

declare dso_local i32 @reg_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
