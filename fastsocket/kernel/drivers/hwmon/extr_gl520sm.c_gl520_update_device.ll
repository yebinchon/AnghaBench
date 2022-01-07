; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl520sm.c_gl520_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl520sm.c_gl520_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl520_data = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i64, i64 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Starting gl520sm update\0A\00", align 1
@GL520_REG_ALARMS = common dso_local global i32 0, align 4
@GL520_REG_BEEP_MASK = common dso_local global i32 0, align 4
@GL520_REG_VID_INPUT = common dso_local global i32 0, align 4
@GL520_REG_IN_INPUT = common dso_local global i32* null, align 8
@GL520_REG_IN_LIMIT = common dso_local global i32* null, align 8
@GL520_REG_FAN_INPUT = common dso_local global i32 0, align 4
@GL520_REG_FAN_MIN = common dso_local global i32 0, align 4
@GL520_REG_TEMP_INPUT = common dso_local global i32* null, align 8
@GL520_REG_TEMP_MAX = common dso_local global i32* null, align 8
@GL520_REG_TEMP_MAX_HYST = common dso_local global i32* null, align 8
@GL520_REG_FAN_DIV = common dso_local global i32 0, align 4
@GL520_REG_CONF = common dso_local global i32 0, align 4
@GL520_REG_IN_MIN = common dso_local global i32* null, align 8
@GL520_REG_IN_MAX = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gl520_data* (%struct.device*)* @gl520_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gl520_data* @gl520_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.gl520_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.i2c_client* @to_i2c_client(%struct.device* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.gl520_data* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.gl520_data* %10, %struct.gl520_data** %4, align 8
  %11 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %12 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %11, i32 0, i32 16
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %16 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %15, i32 0, i32 17
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 2, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i64 @time_after(i64 %14, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %26 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %259, label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = load i32, i32* @GL520_REG_ALARMS, align 4
  %35 = call i32 @gl520_read_value(%struct.i2c_client* %33, i32 %34)
  %36 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %37 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = load i32, i32* @GL520_REG_BEEP_MASK, align 4
  %40 = call i32 @gl520_read_value(%struct.i2c_client* %38, i32 %39)
  %41 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %42 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = load i32, i32* @GL520_REG_VID_INPUT, align 4
  %45 = call i32 @gl520_read_value(%struct.i2c_client* %43, i32 %44)
  %46 = and i32 %45, 31
  %47 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %48 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %90, %29
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %93

52:                                               ; preds = %49
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = load i32*, i32** @GL520_REG_IN_INPUT, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @gl520_read_value(%struct.i2c_client* %53, i32 %58)
  %60 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %61 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %67 = load i32*, i32** @GL520_REG_IN_LIMIT, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @gl520_read_value(%struct.i2c_client* %66, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 255
  %75 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %76 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = ashr i32 %81, 8
  %83 = and i32 %82, 255
  %84 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %85 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %84, i32 0, i32 6
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %52
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %49

93:                                               ; preds = %49
  %94 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %95 = load i32, i32* @GL520_REG_FAN_INPUT, align 4
  %96 = call i32 @gl520_read_value(%struct.i2c_client* %94, i32 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = ashr i32 %97, 8
  %99 = and i32 %98, 255
  %100 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %101 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %100, i32 0, i32 7
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %99, i32* %103, align 4
  %104 = load i32, i32* %5, align 4
  %105 = and i32 %104, 255
  %106 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %107 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 %105, i32* %109, align 4
  %110 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %111 = load i32, i32* @GL520_REG_FAN_MIN, align 4
  %112 = call i32 @gl520_read_value(%struct.i2c_client* %110, i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = ashr i32 %113, 8
  %115 = and i32 %114, 255
  %116 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %117 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %116, i32 0, i32 8
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %5, align 4
  %121 = and i32 %120, 255
  %122 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %123 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %122, i32 0, i32 8
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 %121, i32* %125, align 4
  %126 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %127 = load i32*, i32** @GL520_REG_TEMP_INPUT, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @gl520_read_value(%struct.i2c_client* %126, i32 %129)
  %131 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %132 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %131, i32 0, i32 9
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %130, i32* %134, align 4
  %135 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %136 = load i32*, i32** @GL520_REG_TEMP_MAX, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @gl520_read_value(%struct.i2c_client* %135, i32 %138)
  %140 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %141 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %140, i32 0, i32 10
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  store i32 %139, i32* %143, align 4
  %144 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %145 = load i32*, i32** @GL520_REG_TEMP_MAX_HYST, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @gl520_read_value(%struct.i2c_client* %144, i32 %147)
  %149 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %150 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %149, i32 0, i32 11
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 %148, i32* %152, align 4
  %153 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %154 = load i32, i32* @GL520_REG_FAN_DIV, align 4
  %155 = call i32 @gl520_read_value(%struct.i2c_client* %153, i32 %154)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = ashr i32 %156, 6
  %158 = and i32 %157, 3
  %159 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %160 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %159, i32 0, i32 12
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  store i32 %158, i32* %162, align 4
  %163 = load i32, i32* %5, align 4
  %164 = ashr i32 %163, 4
  %165 = and i32 %164, 3
  %166 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %167 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %166, i32 0, i32 12
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  store i32 %165, i32* %169, align 4
  %170 = load i32, i32* %5, align 4
  %171 = ashr i32 %170, 2
  %172 = and i32 %171, 1
  %173 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %174 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %173, i32 0, i32 13
  store i32 %172, i32* %174, align 8
  %175 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %176 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %175, i32 0, i32 14
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %179 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %183 = load i32, i32* @GL520_REG_CONF, align 4
  %184 = call i32 @gl520_read_value(%struct.i2c_client* %182, i32 %183)
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* %5, align 4
  %186 = ashr i32 %185, 2
  %187 = and i32 %186, 1
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %192 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %191, i32 0, i32 15
  store i32 %190, i32* %192, align 8
  %193 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %194 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %193, i32 0, i32 18
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %225

197:                                              ; preds = %93
  %198 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %199 = load i32*, i32** @GL520_REG_TEMP_INPUT, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @gl520_read_value(%struct.i2c_client* %198, i32 %201)
  %203 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %204 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %203, i32 0, i32 9
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  store i32 %202, i32* %206, align 4
  %207 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %208 = load i32*, i32** @GL520_REG_TEMP_MAX, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @gl520_read_value(%struct.i2c_client* %207, i32 %210)
  %212 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %213 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %212, i32 0, i32 10
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  store i32 %211, i32* %215, align 4
  %216 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %217 = load i32*, i32** @GL520_REG_TEMP_MAX_HYST, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @gl520_read_value(%struct.i2c_client* %216, i32 %219)
  %221 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %222 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %221, i32 0, i32 11
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  store i32 %220, i32* %224, align 4
  br label %253

225:                                              ; preds = %93
  %226 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %227 = load i32*, i32** @GL520_REG_IN_INPUT, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 4
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @gl520_read_value(%struct.i2c_client* %226, i32 %229)
  %231 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %232 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %231, i32 0, i32 4
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 4
  store i32 %230, i32* %234, align 4
  %235 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %236 = load i32*, i32** @GL520_REG_IN_MIN, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 4
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @gl520_read_value(%struct.i2c_client* %235, i32 %238)
  %240 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %241 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %240, i32 0, i32 5
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 4
  store i32 %239, i32* %243, align 4
  %244 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %245 = load i32*, i32** @GL520_REG_IN_MAX, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 4
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @gl520_read_value(%struct.i2c_client* %244, i32 %247)
  %249 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %250 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %249, i32 0, i32 6
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 4
  store i32 %248, i32* %252, align 4
  br label %253

253:                                              ; preds = %225, %197
  %254 = load i64, i64* @jiffies, align 8
  %255 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %256 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %255, i32 0, i32 17
  store i64 %254, i64* %256, align 8
  %257 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %258 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %257, i32 0, i32 0
  store i32 1, i32* %258, align 8
  br label %259

259:                                              ; preds = %253, %24
  %260 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  %261 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %260, i32 0, i32 16
  %262 = call i32 @mutex_unlock(i32* %261)
  %263 = load %struct.gl520_data*, %struct.gl520_data** %4, align 8
  ret %struct.gl520_data* %263
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.gl520_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @gl520_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
