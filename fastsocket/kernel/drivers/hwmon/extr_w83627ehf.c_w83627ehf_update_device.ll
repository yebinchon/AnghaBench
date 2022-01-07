; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_w83627ehf_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_w83627ehf_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627ehf_data = type { i32, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32*, i32*, i32*, i32, i32, i64 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@W83627EHF_REG_FAN = common dso_local global i32* null, align 8
@W83627EHF_REG_FAN_MIN = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"Increasing fan%d clock divider from %u to %u\0A\00", align 1
@W83627EHF_REG_PWM_ENABLE = common dso_local global i32* null, align 8
@W83627EHF_REG_TOLERANCE = common dso_local global i32* null, align 8
@W83627EHF_PWM_MODE_SHIFT = common dso_local global i32* null, align 8
@W83627EHF_PWM_ENABLE_SHIFT = common dso_local global i32* null, align 8
@W83627EHF_REG_PWM = common dso_local global i32* null, align 8
@W83627EHF_REG_FAN_MIN_OUTPUT = common dso_local global i32* null, align 8
@W83627EHF_REG_FAN_STOP_TIME = common dso_local global i32* null, align 8
@W83627EHF_REG_TARGET = common dso_local global i32* null, align 8
@W83627EHF_REG_TEMP1 = common dso_local global i32 0, align 4
@W83627EHF_REG_TEMP1_OVER = common dso_local global i32 0, align 4
@W83627EHF_REG_TEMP1_HYST = common dso_local global i32 0, align 4
@W83627EHF_REG_TEMP = common dso_local global i32* null, align 8
@W83627EHF_REG_TEMP_OVER = common dso_local global i32* null, align 8
@W83627EHF_REG_TEMP_HYST = common dso_local global i32* null, align 8
@W83627EHF_REG_ALARM1 = common dso_local global i32 0, align 4
@W83627EHF_REG_ALARM2 = common dso_local global i32 0, align 4
@W83627EHF_REG_ALARM3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.w83627ehf_data* (%struct.device*)* @w83627ehf_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.w83627ehf_data* @w83627ehf_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.w83627ehf_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.w83627ehf_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.w83627ehf_data* %8, %struct.w83627ehf_data** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %10 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %9, i32 0, i32 23
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %14 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %13, i32 0, i32 24
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @HZ, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load i32, i32* @HZ, align 4
  %20 = sdiv i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = call i64 @time_after(i64 %12, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %27 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %418, label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %32 = call i32 @w83627ehf_update_fan_div(%struct.w83627ehf_data* %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %70, %30
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %36 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %73

39:                                               ; preds = %33
  %40 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @W83627EHF_REG_IN(i32 %41)
  %43 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %40, i32 %42)
  %44 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %45 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @W83627EHF_REG_IN_MIN(i32 %51)
  %53 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %50, i32 %52)
  %54 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %55 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @W83627EHF_REG_IN_MAX(i32 %61)
  %63 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %60, i32 %62)
  %64 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %65 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %39
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %33

73:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %198, %73
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 5
  br i1 %76, label %77, label %201

77:                                               ; preds = %74
  %78 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %79 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = shl i32 1, %81
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  br label %198

86:                                               ; preds = %77
  %87 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %88 = load i32*, i32** @W83627EHF_REG_FAN, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %87, i32 %92)
  %94 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %95 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %94, i32 0, i32 6
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %101 = load i32*, i32** @W83627EHF_REG_FAN_MIN, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %100, i32 %105)
  %107 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %108 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %107, i32 0, i32 7
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  %113 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %114 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %113, i32 0, i32 6
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 255
  br i1 %120, label %121, label %197

121:                                              ; preds = %86
  %122 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %123 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %122, i32 0, i32 8
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %128, 7
  br i1 %129, label %130, label %197

130:                                              ; preds = %121
  %131 = load %struct.device*, %struct.device** %2, align 8
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  %134 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %135 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %134, i32 0, i32 8
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @div_from_reg(i32 %140)
  %142 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %143 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %142, i32 0, i32 8
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  %150 = call i32 @div_from_reg(i32 %149)
  %151 = call i32 @dev_dbg(%struct.device* %131, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %141, i32 %150)
  %152 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %153 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %152, i32 0, i32 8
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @w83627ehf_write_fan_div(%struct.w83627ehf_data* %160, i32 %161)
  %163 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %164 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %163, i32 0, i32 7
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp sge i32 %169, 2
  br i1 %170, label %171, label %196

171:                                              ; preds = %130
  %172 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %173 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %172, i32 0, i32 7
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 255
  br i1 %179, label %180, label %196

180:                                              ; preds = %171
  %181 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %182 = load i32*, i32** @W83627EHF_REG_FAN_MIN, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %188 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %187, i32 0, i32 7
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = sdiv i32 %193, 2
  store i32 %194, i32* %192, align 4
  %195 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %181, i32 %186, i32 %194)
  br label %196

196:                                              ; preds = %180, %171, %130
  br label %197

197:                                              ; preds = %196, %121, %86
  br label %198

198:                                              ; preds = %197, %85
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %74

201:                                              ; preds = %74
  store i32 0, i32* %6, align 4
  br label %202

202:                                              ; preds = %332, %201
  %203 = load i32, i32* %6, align 4
  %204 = icmp slt i32 %203, 4
  br i1 %204, label %205, label %335

205:                                              ; preds = %202
  %206 = load i32, i32* %6, align 4
  %207 = icmp ne i32 %206, 1
  br i1 %207, label %208, label %223

208:                                              ; preds = %205
  %209 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %210 = load i32*, i32** @W83627EHF_REG_PWM_ENABLE, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %209, i32 %214)
  store i32 %215, i32* %4, align 4
  %216 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %217 = load i32*, i32** @W83627EHF_REG_TOLERANCE, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %216, i32 %221)
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %208, %205
  %224 = load i32, i32* %4, align 4
  %225 = load i32*, i32** @W83627EHF_PWM_MODE_SHIFT, align 8
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = ashr i32 %224, %229
  %231 = and i32 %230, 1
  %232 = icmp ne i32 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 0, i32 1
  %235 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %236 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %235, i32 0, i32 9
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %234, i32* %240, align 4
  %241 = load i32, i32* %4, align 4
  %242 = load i32*, i32** @W83627EHF_PWM_ENABLE_SHIFT, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = ashr i32 %241, %246
  %248 = and i32 %247, 3
  %249 = add nsw i32 %248, 1
  %250 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %251 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %250, i32 0, i32 10
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %249, i32* %255, align 4
  %256 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %257 = load i32*, i32** @W83627EHF_REG_PWM, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %256, i32 %261)
  %263 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %264 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %263, i32 0, i32 11
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  store i32 %262, i32* %268, align 4
  %269 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %270 = load i32*, i32** @W83627EHF_REG_FAN_MIN_OUTPUT, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %269, i32 %274)
  %276 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %277 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %276, i32 0, i32 12
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %6, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  store i32 %275, i32* %281, align 4
  %282 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %283 = load i32*, i32** @W83627EHF_REG_FAN_STOP_TIME, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %282, i32 %287)
  %289 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %290 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %289, i32 0, i32 13
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  store i32 %288, i32* %294, align 4
  %295 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %296 = load i32*, i32** @W83627EHF_REG_TARGET, align 8
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %295, i32 %300)
  %302 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %303 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %302, i32 0, i32 9
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %6, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = icmp eq i32 %308, 1
  %310 = zext i1 %309 to i64
  %311 = select i1 %309, i32 127, i32 255
  %312 = and i32 %301, %311
  %313 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %314 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %313, i32 0, i32 14
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %6, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  store i32 %312, i32* %318, align 4
  %319 = load i32, i32* %5, align 4
  %320 = load i32, i32* %6, align 4
  %321 = icmp eq i32 %320, 1
  %322 = zext i1 %321 to i64
  %323 = select i1 %321, i32 4, i32 0
  %324 = ashr i32 %319, %323
  %325 = and i32 %324, 15
  %326 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %327 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %326, i32 0, i32 15
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %6, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  store i32 %325, i32* %331, align 4
  br label %332

332:                                              ; preds = %223
  %333 = load i32, i32* %6, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %6, align 4
  br label %202

335:                                              ; preds = %202
  %336 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %337 = load i32, i32* @W83627EHF_REG_TEMP1, align 4
  %338 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %336, i32 %337)
  %339 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %340 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %339, i32 0, i32 16
  store i32 %338, i32* %340, align 8
  %341 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %342 = load i32, i32* @W83627EHF_REG_TEMP1_OVER, align 4
  %343 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %341, i32 %342)
  %344 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %345 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %344, i32 0, i32 17
  store i32 %343, i32* %345, align 4
  %346 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %347 = load i32, i32* @W83627EHF_REG_TEMP1_HYST, align 4
  %348 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %346, i32 %347)
  %349 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %350 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %349, i32 0, i32 18
  store i32 %348, i32* %350, align 8
  store i32 0, i32* %6, align 4
  br label %351

351:                                              ; preds = %394, %335
  %352 = load i32, i32* %6, align 4
  %353 = icmp slt i32 %352, 2
  br i1 %353, label %354, label %397

354:                                              ; preds = %351
  %355 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %356 = load i32*, i32** @W83627EHF_REG_TEMP, align 8
  %357 = load i32, i32* %6, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %355, i32 %360)
  %362 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %363 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %362, i32 0, i32 19
  %364 = load i32*, i32** %363, align 8
  %365 = load i32, i32* %6, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  store i32 %361, i32* %367, align 4
  %368 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %369 = load i32*, i32** @W83627EHF_REG_TEMP_OVER, align 8
  %370 = load i32, i32* %6, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %368, i32 %373)
  %375 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %376 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %375, i32 0, i32 20
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %6, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  store i32 %374, i32* %380, align 4
  %381 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %382 = load i32*, i32** @W83627EHF_REG_TEMP_HYST, align 8
  %383 = load i32, i32* %6, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %381, i32 %386)
  %388 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %389 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %388, i32 0, i32 21
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %6, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  store i32 %387, i32* %393, align 4
  br label %394

394:                                              ; preds = %354
  %395 = load i32, i32* %6, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %6, align 4
  br label %351

397:                                              ; preds = %351
  %398 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %399 = load i32, i32* @W83627EHF_REG_ALARM1, align 4
  %400 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %398, i32 %399)
  %401 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %402 = load i32, i32* @W83627EHF_REG_ALARM2, align 4
  %403 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %401, i32 %402)
  %404 = shl i32 %403, 8
  %405 = or i32 %400, %404
  %406 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %407 = load i32, i32* @W83627EHF_REG_ALARM3, align 4
  %408 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %406, i32 %407)
  %409 = shl i32 %408, 16
  %410 = or i32 %405, %409
  %411 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %412 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %411, i32 0, i32 22
  store i32 %410, i32* %412, align 8
  %413 = load i64, i64* @jiffies, align 8
  %414 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %415 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %414, i32 0, i32 24
  store i64 %413, i64* %415, align 8
  %416 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %417 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %416, i32 0, i32 0
  store i32 1, i32* %417, align 8
  br label %418

418:                                              ; preds = %397, %25
  %419 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %420 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %419, i32 0, i32 23
  %421 = call i32 @mutex_unlock(i32* %420)
  %422 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  ret %struct.w83627ehf_data* %422
}

declare dso_local %struct.w83627ehf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @w83627ehf_update_fan_div(%struct.w83627ehf_data*) #1

declare dso_local i32 @w83627ehf_read_value(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @W83627EHF_REG_IN(i32) #1

declare dso_local i32 @W83627EHF_REG_IN_MIN(i32) #1

declare dso_local i32 @W83627EHF_REG_IN_MAX(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @div_from_reg(i32) #1

declare dso_local i32 @w83627ehf_write_fan_div(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @w83627ehf_write_value(%struct.w83627ehf_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
