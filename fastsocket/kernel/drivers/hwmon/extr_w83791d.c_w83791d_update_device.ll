; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_w83791d_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_w83791d_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83791d_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32, i32, i32, i32, i32, i64 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Starting w83791d device update\0A\00", align 1
@NUMBER_OF_VIN = common dso_local global i32 0, align 4
@W83791D_REG_IN = common dso_local global i32* null, align 8
@W83791D_REG_IN_MAX = common dso_local global i32* null, align 8
@W83791D_REG_IN_MIN = common dso_local global i32* null, align 8
@NUMBER_OF_FANIN = common dso_local global i32 0, align 4
@W83791D_REG_FAN = common dso_local global i32* null, align 8
@W83791D_REG_FAN_MIN = common dso_local global i32* null, align 8
@W83791D_REG_FAN_DIV = common dso_local global i32* null, align 8
@W83791D_REG_VBAT = common dso_local global i32 0, align 4
@NUMBER_OF_PWM = common dso_local global i32 0, align 4
@W83791D_REG_PWM = common dso_local global i32* null, align 8
@W83791D_REG_FAN_CFG = common dso_local global i32* null, align 8
@W83791D_REG_TEMP_TARGET = common dso_local global i32* null, align 8
@W83791D_REG_TEMP_TOL = common dso_local global i32* null, align 8
@W83791D_REG_TEMP1 = common dso_local global i32* null, align 8
@W83791D_REG_TEMP_ADD = common dso_local global i32** null, align 8
@W83791D_REG_ALARM1 = common dso_local global i32 0, align 4
@W83791D_REG_ALARM2 = common dso_local global i32 0, align 4
@W83791D_REG_ALARM3 = common dso_local global i32 0, align 4
@W83791D_REG_BEEP_CTRL = common dso_local global i32* null, align 8
@GLOBAL_BEEP_ENABLE_SHIFT = common dso_local global i32 0, align 4
@W83791D_REG_VID_FANDIV = common dso_local global i32 0, align 4
@W83791D_REG_DID_VID4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.w83791d_data* (%struct.device*)* @w83791d_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.w83791d_data* @w83791d_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.w83791d_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.i2c_client* @to_i2c_client(%struct.device* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = call %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.w83791d_data* %12, %struct.w83791d_data** %4, align 8
  %13 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %14 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %13, i32 0, i32 17
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i64, i64* @jiffies, align 8
  %17 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %18 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %17, i32 0, i32 18
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @HZ, align 4
  %21 = mul nsw i32 %20, 3
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i64 @time_after(i64 %16, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %28 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %463, label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.device*, %struct.device** %2, align 8
  %33 = call i32 @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %78, %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NUMBER_OF_VIN, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %34
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = load i32*, i32** @W83791D_REG_IN, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @w83791d_read(%struct.i2c_client* %39, i32 %44)
  %46 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %47 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  %52 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %53 = load i32*, i32** @W83791D_REG_IN_MAX, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @w83791d_read(%struct.i2c_client* %52, i32 %57)
  %59 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %60 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  %65 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %66 = load i32*, i32** @W83791D_REG_IN_MIN, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @w83791d_read(%struct.i2c_client* %65, i32 %70)
  %72 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %73 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %38
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %34

81:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %113, %81
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @NUMBER_OF_FANIN, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %116

86:                                               ; preds = %82
  %87 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %88 = load i32*, i32** @W83791D_REG_FAN, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @w83791d_read(%struct.i2c_client* %87, i32 %92)
  %94 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %95 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %101 = load i32*, i32** @W83791D_REG_FAN_MIN, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @w83791d_read(%struct.i2c_client* %100, i32 %105)
  %107 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %108 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  br label %113

113:                                              ; preds = %86
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %82

116:                                              ; preds = %82
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %131, %116
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %118, 3
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %122 = load i32*, i32** @W83791D_REG_FAN_DIV, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @w83791d_read(%struct.i2c_client* %121, i32 %126)
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %129
  store i32 %127, i32* %130, align 4
  br label %131

131:                                              ; preds = %120
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %117

134:                                              ; preds = %117
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 4
  %138 = and i32 %137, 3
  %139 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %140 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %139, i32 0, i32 6
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %138, i32* %142, align 4
  %143 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %144, 6
  %146 = and i32 %145, 3
  %147 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %148 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %147, i32 0, i32 6
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 %146, i32* %150, align 4
  %151 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = ashr i32 %152, 6
  %154 = and i32 %153, 3
  %155 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %156 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %155, i32 0, i32 6
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  store i32 %154, i32* %158, align 4
  %159 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 7
  %162 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %163 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %162, i32 0, i32 6
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 3
  store i32 %161, i32* %165, align 4
  %166 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = ashr i32 %167, 4
  %169 = and i32 %168, 7
  %170 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %171 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %170, i32 0, i32 6
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 4
  store i32 %169, i32* %173, align 4
  %174 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %175 = load i32, i32* @W83791D_REG_VBAT, align 4
  %176 = call i32 @w83791d_read(%struct.i2c_client* %174, i32 %175)
  store i32 %176, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %177

177:                                              ; preds = %194, %134
  %178 = load i32, i32* %5, align 4
  %179 = icmp slt i32 %178, 3
  br i1 %179, label %180, label %197

180:                                              ; preds = %177
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %5, align 4
  %183 = add nsw i32 3, %182
  %184 = ashr i32 %181, %183
  %185 = and i32 %184, 4
  %186 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %187 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %186, i32 0, i32 6
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %185
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %180
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %5, align 4
  br label %177

197:                                              ; preds = %177
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %216, %197
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* @NUMBER_OF_PWM, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %219

202:                                              ; preds = %198
  %203 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %204 = load i32*, i32** @W83791D_REG_PWM, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @w83791d_read(%struct.i2c_client* %203, i32 %208)
  %210 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %211 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %210, i32 0, i32 7
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %209, i32* %215, align 4
  br label %216

216:                                              ; preds = %202
  %217 = load i32, i32* %5, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %5, align 4
  br label %198

219:                                              ; preds = %198
  store i32 0, i32* %5, align 4
  br label %220

220:                                              ; preds = %234, %219
  %221 = load i32, i32* %5, align 4
  %222 = icmp slt i32 %221, 2
  br i1 %222, label %223, label %237

223:                                              ; preds = %220
  %224 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %225 = load i32*, i32** @W83791D_REG_FAN_CFG, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @w83791d_read(%struct.i2c_client* %224, i32 %229)
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %232
  store i32 %230, i32* %233, align 4
  br label %234

234:                                              ; preds = %223
  %235 = load i32, i32* %5, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %5, align 4
  br label %220

237:                                              ; preds = %220
  %238 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = ashr i32 %239, 2
  %241 = and i32 %240, 3
  %242 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %243 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %242, i32 0, i32 8
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  store i32 %241, i32* %245, align 4
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = ashr i32 %247, 4
  %249 = and i32 %248, 3
  %250 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %251 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %250, i32 0, i32 8
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  store i32 %249, i32* %253, align 4
  %254 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = ashr i32 %255, 2
  %257 = and i32 %256, 3
  %258 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %259 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %258, i32 0, i32 8
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 2
  store i32 %257, i32* %261, align 4
  store i32 0, i32* %5, align 4
  br label %262

262:                                              ; preds = %280, %237
  %263 = load i32, i32* %5, align 4
  %264 = icmp slt i32 %263, 3
  br i1 %264, label %265, label %283

265:                                              ; preds = %262
  %266 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %267 = load i32*, i32** @W83791D_REG_TEMP_TARGET, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @w83791d_read(%struct.i2c_client* %266, i32 %271)
  %273 = and i32 %272, 127
  %274 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %275 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %274, i32 0, i32 9
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %5, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  store i32 %273, i32* %279, align 4
  br label %280

280:                                              ; preds = %265
  %281 = load i32, i32* %5, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %5, align 4
  br label %262

283:                                              ; preds = %262
  store i32 0, i32* %5, align 4
  br label %284

284:                                              ; preds = %298, %283
  %285 = load i32, i32* %5, align 4
  %286 = icmp slt i32 %285, 2
  br i1 %286, label %287, label %301

287:                                              ; preds = %284
  %288 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %289 = load i32*, i32** @W83791D_REG_TEMP_TOL, align 8
  %290 = load i32, i32* %5, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @w83791d_read(%struct.i2c_client* %288, i32 %293)
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %296
  store i32 %294, i32* %297, align 4
  br label %298

298:                                              ; preds = %287
  %299 = load i32, i32* %5, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %5, align 4
  br label %284

301:                                              ; preds = %284
  %302 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, 15
  %305 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %306 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %305, i32 0, i32 10
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  store i32 %304, i32* %308, align 4
  %309 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %310 = load i32, i32* %309, align 4
  %311 = ashr i32 %310, 4
  %312 = and i32 %311, 15
  %313 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %314 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %313, i32 0, i32 10
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 1
  store i32 %312, i32* %316, align 4
  %317 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %318 = load i32, i32* %317, align 4
  %319 = and i32 %318, 15
  %320 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %321 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %320, i32 0, i32 10
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 2
  store i32 %319, i32* %323, align 4
  store i32 0, i32* %5, align 4
  br label %324

324:                                              ; preds = %341, %301
  %325 = load i32, i32* %5, align 4
  %326 = icmp slt i32 %325, 3
  br i1 %326, label %327, label %344

327:                                              ; preds = %324
  %328 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %329 = load i32*, i32** @W83791D_REG_TEMP1, align 8
  %330 = load i32, i32* %5, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @w83791d_read(%struct.i2c_client* %328, i32 %333)
  %335 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %336 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %335, i32 0, i32 11
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %5, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  store i32 %334, i32* %340, align 4
  br label %341

341:                                              ; preds = %327
  %342 = load i32, i32* %5, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %5, align 4
  br label %324

344:                                              ; preds = %324
  store i32 0, i32* %5, align 4
  br label %345

345:                                              ; preds = %394, %344
  %346 = load i32, i32* %5, align 4
  %347 = icmp slt i32 %346, 2
  br i1 %347, label %348, label %397

348:                                              ; preds = %345
  store i32 0, i32* %6, align 4
  br label %349

349:                                              ; preds = %390, %348
  %350 = load i32, i32* %6, align 4
  %351 = icmp slt i32 %350, 3
  br i1 %351, label %352, label %393

352:                                              ; preds = %349
  %353 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %354 = load i32**, i32*** @W83791D_REG_TEMP_ADD, align 8
  %355 = load i32, i32* %5, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32*, i32** %354, i64 %356
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %6, align 4
  %360 = mul nsw i32 %359, 2
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %358, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @w83791d_read(%struct.i2c_client* %353, i32 %363)
  %365 = shl i32 %364, 8
  %366 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %367 = load i32**, i32*** @W83791D_REG_TEMP_ADD, align 8
  %368 = load i32, i32* %5, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32*, i32** %367, i64 %369
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %6, align 4
  %373 = mul nsw i32 %372, 2
  %374 = add nsw i32 %373, 1
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %371, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @w83791d_read(%struct.i2c_client* %366, i32 %377)
  %379 = or i32 %365, %378
  %380 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %381 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %380, i32 0, i32 12
  %382 = load i32**, i32*** %381, align 8
  %383 = load i32, i32* %5, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32*, i32** %382, i64 %384
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* %6, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  store i32 %379, i32* %389, align 4
  br label %390

390:                                              ; preds = %352
  %391 = load i32, i32* %6, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %6, align 4
  br label %349

393:                                              ; preds = %349
  br label %394

394:                                              ; preds = %393
  %395 = load i32, i32* %5, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %5, align 4
  br label %345

397:                                              ; preds = %345
  %398 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %399 = load i32, i32* @W83791D_REG_ALARM1, align 4
  %400 = call i32 @w83791d_read(%struct.i2c_client* %398, i32 %399)
  %401 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %402 = load i32, i32* @W83791D_REG_ALARM2, align 4
  %403 = call i32 @w83791d_read(%struct.i2c_client* %401, i32 %402)
  %404 = shl i32 %403, 8
  %405 = add nsw i32 %400, %404
  %406 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %407 = load i32, i32* @W83791D_REG_ALARM3, align 4
  %408 = call i32 @w83791d_read(%struct.i2c_client* %406, i32 %407)
  %409 = shl i32 %408, 16
  %410 = add nsw i32 %405, %409
  %411 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %412 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %411, i32 0, i32 13
  store i32 %410, i32* %412, align 8
  %413 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %414 = load i32*, i32** @W83791D_REG_BEEP_CTRL, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 0
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @w83791d_read(%struct.i2c_client* %413, i32 %416)
  %418 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %419 = load i32*, i32** @W83791D_REG_BEEP_CTRL, align 8
  %420 = getelementptr inbounds i32, i32* %419, i64 1
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @w83791d_read(%struct.i2c_client* %418, i32 %421)
  %423 = shl i32 %422, 8
  %424 = add nsw i32 %417, %423
  %425 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %426 = load i32*, i32** @W83791D_REG_BEEP_CTRL, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 2
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @w83791d_read(%struct.i2c_client* %425, i32 %428)
  %430 = shl i32 %429, 16
  %431 = add nsw i32 %424, %430
  %432 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %433 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %432, i32 0, i32 14
  store i32 %431, i32* %433, align 4
  %434 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %435 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %434, i32 0, i32 14
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* @GLOBAL_BEEP_ENABLE_SHIFT, align 4
  %438 = ashr i32 %436, %437
  %439 = and i32 %438, 1
  %440 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %441 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %440, i32 0, i32 15
  store i32 %439, i32* %441, align 8
  %442 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %443 = load i32, i32* @W83791D_REG_VID_FANDIV, align 4
  %444 = call i32 @w83791d_read(%struct.i2c_client* %442, i32 %443)
  store i32 %444, i32* %5, align 4
  %445 = load i32, i32* %5, align 4
  %446 = and i32 %445, 15
  %447 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %448 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %447, i32 0, i32 16
  store i32 %446, i32* %448, align 4
  %449 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %450 = load i32, i32* @W83791D_REG_DID_VID4, align 4
  %451 = call i32 @w83791d_read(%struct.i2c_client* %449, i32 %450)
  %452 = and i32 %451, 1
  %453 = shl i32 %452, 4
  %454 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %455 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %454, i32 0, i32 16
  %456 = load i32, i32* %455, align 4
  %457 = or i32 %456, %453
  store i32 %457, i32* %455, align 4
  %458 = load i64, i64* @jiffies, align 8
  %459 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %460 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %459, i32 0, i32 18
  store i64 %458, i64* %460, align 8
  %461 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %462 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %461, i32 0, i32 0
  store i32 1, i32* %462, align 8
  br label %463

463:                                              ; preds = %397, %26
  %464 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  %465 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %464, i32 0, i32 17
  %466 = call i32 @mutex_unlock(i32* %465)
  %467 = load %struct.w83791d_data*, %struct.w83791d_data** %4, align 8
  ret %struct.w83791d_data* %467
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @w83791d_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
