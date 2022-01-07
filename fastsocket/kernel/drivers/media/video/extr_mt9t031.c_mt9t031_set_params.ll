; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_queryctrl = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.mt9t031 = type { i32, i32, i32, i32, %struct.v4l2_rect, i64 }

@MT9T031_HORIZONTAL_BLANK = common dso_local global i32 0, align 4
@MT9T031_VERTICAL_BLANK = common dso_local global i32 0, align 4
@MT9T031_COLUMN_SKIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"skip %u:%u, rect %ux%u@%u:%u\0A\00", align 1
@MT9T031_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@MT9T031_HORIZONTAL_BLANKING = common dso_local global i32 0, align 4
@MT9T031_VERTICAL_BLANKING = common dso_local global i32 0, align 4
@MT9T031_COLUMN_ADDRESS_MODE = common dso_local global i32 0, align 4
@MT9T031_ROW_ADDRESS_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"new physical left %u, top %u\0A\00", align 1
@MT9T031_COLUMN_START = common dso_local global i32 0, align 4
@MT9T031_ROW_START = common dso_local global i32 0, align 4
@MT9T031_WINDOW_WIDTH = common dso_local global i32 0, align 4
@MT9T031_WINDOW_HEIGHT = common dso_local global i32 0, align 4
@MT9T031_MAX_HEIGHT = common dso_local global i32 0, align 4
@mt9t031_controls = common dso_local global %struct.v4l2_queryctrl* null, align 8
@MT9T031_CTRL_EXPOSURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.v4l2_rect*, i32, i32)* @mt9t031_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t031_set_params(%struct.i2c_client* %0, %struct.v4l2_rect* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.v4l2_rect*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mt9t031*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.v4l2_queryctrl*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %20 = call %struct.mt9t031* @to_mt9t031(%struct.i2c_client* %19)
  store %struct.mt9t031* %20, %struct.mt9t031** %10, align 8
  %21 = load i32, i32* @MT9T031_HORIZONTAL_BLANK, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @MT9T031_VERTICAL_BLANK, align 4
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @min(i32 %23, i32 3)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @min(i32 %25, i32 3)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %12, align 4
  switch i32 %27, label %58 [
    i32 1, label %28
    i32 2, label %33
    i32 3, label %38
  ]

28:                                               ; preds = %4
  %29 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, -2
  store i32 %32, i32* %30, align 4
  br label %58

33:                                               ; preds = %4
  %34 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, -4
  store i32 %37, i32* %35, align 4
  br label %58

38:                                               ; preds = %4
  %39 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MT9T031_COLUMN_SKIP, align 4
  %43 = call i32 @roundup(i32 %42, i32 6)
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 6
  %50 = mul nsw i32 %49, 6
  br label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @MT9T031_COLUMN_SKIP, align 4
  %53 = call i32 @roundup(i32 %52, i32 6)
  br label %54

54:                                               ; preds = %51, %45
  %55 = phi i32 [ %50, %45 ], [ %53, %51 ]
  %56 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %4, %33, %28
  %59 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, -2
  store i32 %62, i32* %60, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78)
  %80 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %81 = load i32, i32* @MT9T031_OUTPUT_CONTROL, align 4
  %82 = call i32 @reg_set(%struct.i2c_client* %80, i32 %81, i32 1)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %58
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %5, align 4
  br label %275

87:                                               ; preds = %58
  %88 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %89 = load i32, i32* @MT9T031_HORIZONTAL_BLANKING, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @reg_write(%struct.i2c_client* %88, i32 %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %96 = load i32, i32* @MT9T031_VERTICAL_BLANKING, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @reg_write(%struct.i2c_client* %95, i32 %96, i32 %97)
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %94, %87
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %102 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %108 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %106, %109
  br i1 %110, label %111, label %138

111:                                              ; preds = %105, %99
  %112 = load i32, i32* %11, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %116 = load i32, i32* @MT9T031_COLUMN_ADDRESS_MODE, align 4
  %117 = load i32, i32* %12, align 4
  %118 = sub nsw i32 %117, 1
  %119 = shl i32 %118, 4
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %120, 1
  %122 = or i32 %119, %121
  %123 = call i32 @reg_write(%struct.i2c_client* %115, i32 %116, i32 %122)
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %114, %111
  %125 = load i32, i32* %11, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %129 = load i32, i32* @MT9T031_ROW_ADDRESS_MODE, align 4
  %130 = load i32, i32* %13, align 4
  %131 = sub nsw i32 %130, 1
  %132 = shl i32 %131, 4
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 %133, 1
  %135 = or i32 %132, %134
  %136 = call i32 @reg_write(%struct.i2c_client* %128, i32 %129, i32 %135)
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %127, %124
  br label %138

138:                                              ; preds = %137, %105
  %139 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 0
  %141 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %142 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %145 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %146)
  %148 = load i32, i32* %11, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %138
  %151 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %152 = load i32, i32* @MT9T031_COLUMN_START, align 4
  %153 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %154 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @reg_write(%struct.i2c_client* %151, i32 %152, i32 %155)
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %150, %138
  %158 = load i32, i32* %11, align 4
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %162 = load i32, i32* @MT9T031_ROW_START, align 4
  %163 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %164 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @reg_write(%struct.i2c_client* %161, i32 %162, i32 %165)
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %160, %157
  %168 = load i32, i32* %11, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %172 = load i32, i32* @MT9T031_WINDOW_WIDTH, align 4
  %173 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %174 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %175, 1
  %177 = call i32 @reg_write(%struct.i2c_client* %171, i32 %172, i32 %176)
  store i32 %177, i32* %11, align 4
  br label %178

178:                                              ; preds = %170, %167
  %179 = load i32, i32* %11, align 4
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %178
  %182 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %183 = load i32, i32* @MT9T031_WINDOW_HEIGHT, align 4
  %184 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %185 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %188 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %186, %189
  %191 = sub nsw i32 %190, 1
  %192 = call i32 @reg_write(%struct.i2c_client* %182, i32 %183, i32 %191)
  store i32 %192, i32* %11, align 4
  br label %193

193:                                              ; preds = %181, %178
  %194 = load i32, i32* %11, align 4
  %195 = icmp sge i32 %194, 0
  br i1 %195, label %196, label %245

196:                                              ; preds = %193
  %197 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %198 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %245

201:                                              ; preds = %196
  %202 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %203 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %206 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %204, %207
  %209 = load i32, i32* %15, align 4
  %210 = add nsw i32 %208, %209
  store i32 %210, i32* %16, align 4
  %211 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %212 = load i32, i32* %16, align 4
  %213 = call i32 @set_shutter(%struct.i2c_client* %211, i32 %212)
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* %11, align 4
  %215 = icmp sge i32 %214, 0
  br i1 %215, label %216, label %244

216:                                              ; preds = %201
  %217 = load i32, i32* @MT9T031_MAX_HEIGHT, align 4
  %218 = load i32, i32* %15, align 4
  %219 = add nsw i32 %217, %218
  store i32 %219, i32* %17, align 4
  %220 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** @mt9t031_controls, align 8
  %221 = load i64, i64* @MT9T031_CTRL_EXPOSURE, align 8
  %222 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %220, i64 %221
  store %struct.v4l2_queryctrl* %222, %struct.v4l2_queryctrl** %18, align 8
  %223 = load i32, i32* %17, align 4
  %224 = sdiv i32 %223, 2
  %225 = load i32, i32* %16, align 4
  %226 = sub i32 %225, 1
  %227 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %18, align 8
  %228 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %18, align 8
  %231 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = sub i32 %229, %232
  %234 = mul i32 %226, %233
  %235 = add i32 %224, %234
  %236 = load i32, i32* %17, align 4
  %237 = udiv i32 %235, %236
  %238 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %18, align 8
  %239 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = add i32 %237, %240
  %242 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %243 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 4
  br label %244

244:                                              ; preds = %216, %201
  br label %245

245:                                              ; preds = %244, %196, %193
  %246 = load i32, i32* %11, align 4
  %247 = icmp sge i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %250 = load i32, i32* @MT9T031_OUTPUT_CONTROL, align 4
  %251 = call i32 @reg_clear(%struct.i2c_client* %249, i32 %250, i32 1)
  store i32 %251, i32* %11, align 4
  br label %252

252:                                              ; preds = %248, %245
  %253 = load i32, i32* %11, align 4
  %254 = icmp sge i32 %253, 0
  br i1 %254, label %255, label %267

255:                                              ; preds = %252
  %256 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %257 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %256, i32 0, i32 4
  %258 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %259 = bitcast %struct.v4l2_rect* %257 to i8*
  %260 = bitcast %struct.v4l2_rect* %258 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %259, i8* align 4 %260, i64 16, i1 false)
  %261 = load i32, i32* %8, align 4
  %262 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %263 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* %9, align 4
  %265 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %266 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 8
  br label %267

267:                                              ; preds = %255, %252
  %268 = load i32, i32* %11, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %267
  %271 = load i32, i32* %11, align 4
  br label %273

272:                                              ; preds = %267
  br label %273

273:                                              ; preds = %272, %270
  %274 = phi i32 [ %271, %270 ], [ 0, %272 ]
  store i32 %274, i32* %5, align 4
  br label %275

275:                                              ; preds = %273, %85
  %276 = load i32, i32* %5, align 4
  ret i32 %276
}

declare dso_local %struct.mt9t031* @to_mt9t031(%struct.i2c_client*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @reg_set(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @set_shutter(%struct.i2c_client*, i32) #1

declare dso_local i32 @reg_clear(%struct.i2c_client*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
