; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83792d.c_w83792d_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83792d.c_w83792d_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83792d_data = type { i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32, i32, i32, i32*, i32*, i32**, i32**, i32, i64 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Starting device update\0A\00", align 1
@W83792D_REG_IN = common dso_local global i32* null, align 8
@W83792D_REG_IN_MAX = common dso_local global i32* null, align 8
@W83792D_REG_IN_MIN = common dso_local global i32* null, align 8
@W83792D_REG_LOW_BITS1 = common dso_local global i32 0, align 4
@W83792D_REG_LOW_BITS2 = common dso_local global i32 0, align 4
@W83792D_REG_FAN = common dso_local global i32* null, align 8
@W83792D_REG_FAN_MIN = common dso_local global i32* null, align 8
@W83792D_REG_PWM = common dso_local global i32* null, align 8
@W83792D_REG_FAN_CFG = common dso_local global i32 0, align 4
@W83792D_REG_TEMP1 = common dso_local global i32* null, align 8
@W83792D_REG_TEMP_ADD = common dso_local global i32** null, align 8
@W83792D_REG_FAN_DIV = common dso_local global i32* null, align 8
@W83792D_REG_ALARM1 = common dso_local global i32 0, align 4
@W83792D_REG_ALARM2 = common dso_local global i32 0, align 4
@W83792D_REG_ALARM3 = common dso_local global i32 0, align 4
@W83792D_REG_CHASSIS = common dso_local global i32 0, align 4
@W83792D_REG_CHASSIS_CLR = common dso_local global i32 0, align 4
@W83792D_REG_THERMAL = common dso_local global i32* null, align 8
@W83792D_REG_TOLERANCE = common dso_local global i32* null, align 8
@W83792D_REG_POINTS = common dso_local global i32** null, align 8
@W83792D_REG_LEVELS = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.w83792d_data* (%struct.device*)* @w83792d_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.w83792d_data* @w83792d_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.w83792d_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.i2c_client* @to_i2c_client(%struct.device* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = call %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.w83792d_data* %12, %struct.w83792d_data** %4, align 8
  %13 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %14 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %13, i32 0, i32 19
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i64, i64* @jiffies, align 8
  %17 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %18 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %17, i32 0, i32 20
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = call i64 @time_after(i64 %20, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %1
  %27 = load i64, i64* @jiffies, align 8
  %28 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %29 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %28, i32 0, i32 20
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @time_before(i64 %27, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %35 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %486, label %38

38:                                               ; preds = %33, %26, %1
  %39 = load %struct.device*, %struct.device** %2, align 8
  %40 = call i32 @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %84, %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 9
  br i1 %43, label %44, label %87

44:                                               ; preds = %41
  %45 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %46 = load i32*, i32** @W83792D_REG_IN, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @w83792d_read_value(%struct.i2c_client* %45, i32 %50)
  %52 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %53 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = load i32*, i32** @W83792D_REG_IN_MAX, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @w83792d_read_value(%struct.i2c_client* %58, i32 %63)
  %65 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %66 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %72 = load i32*, i32** @W83792D_REG_IN_MIN, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @w83792d_read_value(%struct.i2c_client* %71, i32 %76)
  %78 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %79 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  br label %84

84:                                               ; preds = %44
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %41

87:                                               ; preds = %41
  %88 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %89 = load i32, i32* @W83792D_REG_LOW_BITS1, align 4
  %90 = call i32 @w83792d_read_value(%struct.i2c_client* %88, i32 %89)
  %91 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %92 = load i32, i32* @W83792D_REG_LOW_BITS2, align 4
  %93 = call i32 @w83792d_read_value(%struct.i2c_client* %91, i32 %92)
  %94 = shl i32 %93, 8
  %95 = add nsw i32 %90, %94
  %96 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %97 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %141, %87
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 7
  br i1 %100, label %101, label %144

101:                                              ; preds = %98
  %102 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %103 = load i32*, i32** @W83792D_REG_FAN, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @w83792d_read_value(%struct.i2c_client* %102, i32 %107)
  %109 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %110 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  %115 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %116 = load i32*, i32** @W83792D_REG_FAN_MIN, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @w83792d_read_value(%struct.i2c_client* %115, i32 %120)
  %122 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %123 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %129 = load i32*, i32** @W83792D_REG_PWM, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @w83792d_read_value(%struct.i2c_client* %128, i32 %133)
  %135 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %136 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %135, i32 0, i32 7
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %134, i32* %140, align 4
  br label %141

141:                                              ; preds = %101
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %98

144:                                              ; preds = %98
  %145 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %146 = load i32, i32* @W83792D_REG_FAN_CFG, align 4
  %147 = call i32 @w83792d_read_value(%struct.i2c_client* %145, i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = and i32 %148, 3
  %150 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %151 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %150, i32 0, i32 8
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %149, i32* %153, align 4
  %154 = load i32, i32* %8, align 4
  %155 = ashr i32 %154, 2
  %156 = and i32 %155, 3
  %157 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %158 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %157, i32 0, i32 8
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* %8, align 4
  %162 = ashr i32 %161, 4
  %163 = and i32 %162, 3
  %164 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %165 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %164, i32 0, i32 8
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  store i32 %163, i32* %167, align 4
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %185, %144
  %169 = load i32, i32* %5, align 4
  %170 = icmp slt i32 %169, 3
  br i1 %170, label %171, label %188

171:                                              ; preds = %168
  %172 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %173 = load i32*, i32** @W83792D_REG_TEMP1, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @w83792d_read_value(%struct.i2c_client* %172, i32 %177)
  %179 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %180 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %179, i32 0, i32 9
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %178, i32* %184, align 4
  br label %185

185:                                              ; preds = %171
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %5, align 4
  br label %168

188:                                              ; preds = %168
  store i32 0, i32* %5, align 4
  br label %189

189:                                              ; preds = %222, %188
  %190 = load i32, i32* %5, align 4
  %191 = icmp slt i32 %190, 2
  br i1 %191, label %192, label %225

192:                                              ; preds = %189
  store i32 0, i32* %6, align 4
  br label %193

193:                                              ; preds = %218, %192
  %194 = load i32, i32* %6, align 4
  %195 = icmp slt i32 %194, 6
  br i1 %195, label %196, label %221

196:                                              ; preds = %193
  %197 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %198 = load i32**, i32*** @W83792D_REG_TEMP_ADD, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32*, i32** %198, i64 %200
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @w83792d_read_value(%struct.i2c_client* %197, i32 %206)
  %208 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %209 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %208, i32 0, i32 10
  %210 = load i32**, i32*** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %210, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 %207, i32* %217, align 4
  br label %218

218:                                              ; preds = %196
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %6, align 4
  br label %193

221:                                              ; preds = %193
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %5, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %5, align 4
  br label %189

225:                                              ; preds = %189
  store i32 0, i32* %5, align 4
  br label %226

226:                                              ; preds = %240, %225
  %227 = load i32, i32* %5, align 4
  %228 = icmp slt i32 %227, 4
  br i1 %228, label %229, label %243

229:                                              ; preds = %226
  %230 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %231 = load i32*, i32** @W83792D_REG_FAN_DIV, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @w83792d_read_value(%struct.i2c_client* %230, i32 %235)
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %238
  store i32 %236, i32* %239, align 4
  br label %240

240:                                              ; preds = %229
  %241 = load i32, i32* %5, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %5, align 4
  br label %226

243:                                              ; preds = %226
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %245 = load i32, i32* %244, align 16
  %246 = and i32 %245, 7
  %247 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %248 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %247, i32 0, i32 11
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  store i32 %246, i32* %250, align 4
  %251 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %252 = load i32, i32* %251, align 16
  %253 = ashr i32 %252, 4
  %254 = and i32 %253, 7
  %255 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %256 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %255, i32 0, i32 11
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  store i32 %254, i32* %258, align 4
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, 7
  %262 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %263 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %262, i32 0, i32 11
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 2
  store i32 %261, i32* %265, align 4
  %266 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %267 = load i32, i32* %266, align 4
  %268 = ashr i32 %267, 4
  %269 = and i32 %268, 7
  %270 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %271 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %270, i32 0, i32 11
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 3
  store i32 %269, i32* %273, align 4
  %274 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %275 = load i32, i32* %274, align 8
  %276 = and i32 %275, 7
  %277 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %278 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %277, i32 0, i32 11
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 4
  store i32 %276, i32* %280, align 4
  %281 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %282 = load i32, i32* %281, align 8
  %283 = ashr i32 %282, 4
  %284 = and i32 %283, 7
  %285 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %286 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %285, i32 0, i32 11
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 5
  store i32 %284, i32* %288, align 4
  %289 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %290 = load i32, i32* %289, align 4
  %291 = and i32 %290, 7
  %292 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %293 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %292, i32 0, i32 11
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 6
  store i32 %291, i32* %295, align 4
  %296 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %297 = load i32, i32* @W83792D_REG_ALARM1, align 4
  %298 = call i32 @w83792d_read_value(%struct.i2c_client* %296, i32 %297)
  %299 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %300 = load i32, i32* @W83792D_REG_ALARM2, align 4
  %301 = call i32 @w83792d_read_value(%struct.i2c_client* %299, i32 %300)
  %302 = shl i32 %301, 8
  %303 = add nsw i32 %298, %302
  %304 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %305 = load i32, i32* @W83792D_REG_ALARM3, align 4
  %306 = call i32 @w83792d_read_value(%struct.i2c_client* %304, i32 %305)
  %307 = shl i32 %306, 16
  %308 = add nsw i32 %303, %307
  %309 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %310 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %309, i32 0, i32 12
  store i32 %308, i32* %310, align 8
  %311 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %312 = load i32, i32* @W83792D_REG_CHASSIS, align 4
  %313 = call i32 @w83792d_read_value(%struct.i2c_client* %311, i32 %312)
  %314 = ashr i32 %313, 5
  %315 = and i32 %314, 1
  %316 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %317 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %316, i32 0, i32 13
  store i32 %315, i32* %317, align 4
  %318 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %319 = load i32, i32* @W83792D_REG_CHASSIS_CLR, align 4
  %320 = call i32 @w83792d_read_value(%struct.i2c_client* %318, i32 %319)
  %321 = ashr i32 %320, 7
  %322 = and i32 %321, 1
  %323 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %324 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %323, i32 0, i32 14
  store i32 %322, i32* %324, align 8
  store i32 0, i32* %5, align 4
  br label %325

325:                                              ; preds = %343, %243
  %326 = load i32, i32* %5, align 4
  %327 = icmp slt i32 %326, 3
  br i1 %327, label %328, label %346

328:                                              ; preds = %325
  %329 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %330 = load i32*, i32** @W83792D_REG_THERMAL, align 8
  %331 = load i32, i32* %5, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @w83792d_read_value(%struct.i2c_client* %329, i32 %334)
  %336 = and i32 %335, 127
  %337 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %338 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %337, i32 0, i32 15
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %5, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  store i32 %336, i32* %342, align 4
  br label %343

343:                                              ; preds = %328
  %344 = load i32, i32* %5, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %5, align 4
  br label %325

346:                                              ; preds = %325
  %347 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %348 = load i32*, i32** @W83792D_REG_TOLERANCE, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @w83792d_read_value(%struct.i2c_client* %347, i32 %350)
  store i32 %351, i32* %8, align 4
  %352 = load i32, i32* %8, align 4
  %353 = and i32 %352, 15
  %354 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %355 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %354, i32 0, i32 16
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  store i32 %353, i32* %357, align 4
  %358 = load i32, i32* %8, align 4
  %359 = ashr i32 %358, 4
  %360 = and i32 %359, 15
  %361 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %362 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %361, i32 0, i32 16
  %363 = load i32*, i32** %362, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 1
  store i32 %360, i32* %364, align 4
  %365 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %366 = load i32*, i32** @W83792D_REG_TOLERANCE, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 2
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @w83792d_read_value(%struct.i2c_client* %365, i32 %368)
  %370 = and i32 %369, 15
  %371 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %372 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %371, i32 0, i32 16
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 2
  store i32 %370, i32* %374, align 4
  store i32 0, i32* %5, align 4
  br label %375

375:                                              ; preds = %409, %346
  %376 = load i32, i32* %5, align 4
  %377 = icmp slt i32 %376, 3
  br i1 %377, label %378, label %412

378:                                              ; preds = %375
  store i32 0, i32* %6, align 4
  br label %379

379:                                              ; preds = %405, %378
  %380 = load i32, i32* %6, align 4
  %381 = icmp slt i32 %380, 4
  br i1 %381, label %382, label %408

382:                                              ; preds = %379
  %383 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %384 = load i32**, i32*** @W83792D_REG_POINTS, align 8
  %385 = load i32, i32* %5, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32*, i32** %384, i64 %386
  %388 = load i32*, i32** %387, align 8
  %389 = load i32, i32* %6, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @w83792d_read_value(%struct.i2c_client* %383, i32 %392)
  %394 = and i32 %393, 127
  %395 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %396 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %395, i32 0, i32 17
  %397 = load i32**, i32*** %396, align 8
  %398 = load i32, i32* %5, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32*, i32** %397, i64 %399
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %6, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  store i32 %394, i32* %404, align 4
  br label %405

405:                                              ; preds = %382
  %406 = load i32, i32* %6, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %6, align 4
  br label %379

408:                                              ; preds = %379
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %5, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %5, align 4
  br label %375

412:                                              ; preds = %375
  store i32 0, i32* %5, align 4
  br label %413

413:                                              ; preds = %477, %412
  %414 = load i32, i32* %5, align 4
  %415 = icmp slt i32 %414, 3
  br i1 %415, label %416, label %480

416:                                              ; preds = %413
  %417 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %418 = load i32**, i32*** @W83792D_REG_LEVELS, align 8
  %419 = load i32, i32* %5, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32*, i32** %418, i64 %420
  %422 = load i32*, i32** %421, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 0
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @w83792d_read_value(%struct.i2c_client* %417, i32 %424)
  store i32 %425, i32* %8, align 4
  %426 = load i32, i32* %8, align 4
  %427 = and i32 %426, 15
  %428 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %429 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %428, i32 0, i32 18
  %430 = load i32**, i32*** %429, align 8
  %431 = load i32, i32* %5, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32*, i32** %430, i64 %432
  %434 = load i32*, i32** %433, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 0
  store i32 %427, i32* %435, align 4
  %436 = load i32, i32* %8, align 4
  %437 = ashr i32 %436, 4
  %438 = and i32 %437, 15
  %439 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %440 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %439, i32 0, i32 18
  %441 = load i32**, i32*** %440, align 8
  %442 = load i32, i32* %5, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32*, i32** %441, i64 %443
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 1
  store i32 %438, i32* %446, align 4
  %447 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %448 = load i32**, i32*** @W83792D_REG_LEVELS, align 8
  %449 = load i32, i32* %5, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32*, i32** %448, i64 %450
  %452 = load i32*, i32** %451, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 2
  %454 = load i32, i32* %453, align 4
  %455 = call i32 @w83792d_read_value(%struct.i2c_client* %447, i32 %454)
  store i32 %455, i32* %8, align 4
  %456 = load i32, i32* %8, align 4
  %457 = ashr i32 %456, 4
  %458 = and i32 %457, 15
  %459 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %460 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %459, i32 0, i32 18
  %461 = load i32**, i32*** %460, align 8
  %462 = load i32, i32* %5, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32*, i32** %461, i64 %463
  %465 = load i32*, i32** %464, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 2
  store i32 %458, i32* %466, align 4
  %467 = load i32, i32* %8, align 4
  %468 = and i32 %467, 15
  %469 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %470 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %469, i32 0, i32 18
  %471 = load i32**, i32*** %470, align 8
  %472 = load i32, i32* %5, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32*, i32** %471, i64 %473
  %475 = load i32*, i32** %474, align 8
  %476 = getelementptr inbounds i32, i32* %475, i64 3
  store i32 %468, i32* %476, align 4
  br label %477

477:                                              ; preds = %416
  %478 = load i32, i32* %5, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %5, align 4
  br label %413

480:                                              ; preds = %413
  %481 = load i64, i64* @jiffies, align 8
  %482 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %483 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %482, i32 0, i32 20
  store i64 %481, i64* %483, align 8
  %484 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %485 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %484, i32 0, i32 0
  store i32 1, i32* %485, align 8
  br label %486

486:                                              ; preds = %480, %33
  %487 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  %488 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %487, i32 0, i32 19
  %489 = call i32 @mutex_unlock(i32* %488)
  %490 = load %struct.w83792d_data*, %struct.w83792d_data** %4, align 8
  ret %struct.w83792d_data* %490
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
