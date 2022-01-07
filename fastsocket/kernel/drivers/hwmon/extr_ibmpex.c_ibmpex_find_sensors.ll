; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmpex.c_ibmpex_find_sensors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmpex.c_ibmpex_find_sensors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_14__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.ibmpex_bmc_data = type { i32, %struct.TYPE_13__*, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POWER_SENSOR = common dso_local global i32 0, align 4
@TEMP_SENSOR = common dso_local global i32 0, align 4
@PEX_NUM_SENSOR_FUNCS = common dso_local global i32 0, align 4
@sensor_dev_attr_reset_high_low = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@sensor_dev_attr_name = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmpex_bmc_data*)* @ibmpex_find_sensors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmpex_find_sensors(%struct.ibmpex_bmc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmpex_bmc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ibmpex_bmc_data* %0, %struct.ibmpex_bmc_data** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %12 = call i32 @ibmpex_query_sensor_count(%struct.ibmpex_bmc_data* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %236

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %21 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %23 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 16
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.TYPE_13__* @kzalloc(i32 %27, i32 %28)
  %30 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %31 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %30, i32 0, i32 1
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %31, align 8
  %32 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %33 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %18
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %236

39:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %132, %39
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %43 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %135

46:                                               ; preds = %40
  %47 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @ibmpex_query_sensor_name(%struct.ibmpex_bmc_data* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %132

53:                                               ; preds = %46
  %54 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %55 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %58 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @is_power_sensor(i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %53
  %63 = load i32, i32* @POWER_SENSOR, align 4
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %8, align 4
  %67 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %68 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %69 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %72 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @power_sensor_multiplier(%struct.ibmpex_bmc_data* %67, i32 %70, i32 %73)
  %75 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %76 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %75, i32 0, i32 1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i32 %74, i32* %81, align 8
  br label %105

82:                                               ; preds = %53
  %83 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %84 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %87 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @is_temp_sensor(i32 %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %82
  %92 = load i32, i32* @TEMP_SENSOR, align 4
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %8, align 4
  %96 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %97 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %96, i32 0, i32 1
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  store i32 1000, i32* %102, align 8
  br label %104

103:                                              ; preds = %82
  br label %132

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %62
  %106 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %107 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %106, i32 0, i32 1
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %128, %105
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @PEX_NUM_SENSOR_FUNCS, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @create_sensor(%struct.ibmpex_bmc_data* %118, i32 %119, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %152

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %113

131:                                              ; preds = %113
  br label %132

132:                                              ; preds = %131, %103, %52
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %40

135:                                              ; preds = %40
  %136 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %137 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @device_create_file(i32 %138, %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sensor_dev_attr_reset_high_low, i32 0, i32 0))
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %152

143:                                              ; preds = %135
  %144 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %145 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @device_create_file(i32 %146, %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sensor_dev_attr_name, i32 0, i32 0))
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %152

151:                                              ; preds = %143
  store i32 0, i32* %2, align 4
  br label %236

152:                                              ; preds = %150, %142, %126
  %153 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %154 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @device_remove_file(i32 %155, %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sensor_dev_attr_reset_high_low, i32 0, i32 0))
  %157 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %158 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @device_remove_file(i32 %159, %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sensor_dev_attr_name, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %227, %152
  %162 = load i32, i32* %4, align 4
  %163 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %164 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %230

167:                                              ; preds = %161
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %223, %167
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @PEX_NUM_SENSOR_FUNCS, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %226

172:                                              ; preds = %168
  %173 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %174 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %173, i32 0, i32 1
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %186, align 8
  %188 = icmp ne %struct.TYPE_13__* %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %172
  br label %223

190:                                              ; preds = %172
  %191 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %192 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %195 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %194, i32 0, i32 1
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  %197 = load i32, i32* %4, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = call i32 @device_remove_file(i32 %193, %struct.TYPE_14__* %205)
  %207 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %208 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %207, i32 0, i32 1
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %208, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %220, align 8
  %222 = call i32 @kfree(%struct.TYPE_13__* %221)
  br label %223

223:                                              ; preds = %190, %189
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %5, align 4
  br label %168

226:                                              ; preds = %168
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %4, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %4, align 4
  br label %161

230:                                              ; preds = %161
  %231 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %232 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %231, i32 0, i32 1
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %232, align 8
  %234 = call i32 @kfree(%struct.TYPE_13__* %233)
  %235 = load i32, i32* %6, align 4
  store i32 %235, i32* %2, align 4
  br label %236

236:                                              ; preds = %230, %151, %36, %15
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i32 @ibmpex_query_sensor_count(%struct.ibmpex_bmc_data*) #1

declare dso_local %struct.TYPE_13__* @kzalloc(i32, i32) #1

declare dso_local i32 @ibmpex_query_sensor_name(%struct.ibmpex_bmc_data*, i32) #1

declare dso_local i64 @is_power_sensor(i32, i32) #1

declare dso_local i32 @power_sensor_multiplier(%struct.ibmpex_bmc_data*, i32, i32) #1

declare dso_local i64 @is_temp_sensor(i32, i32) #1

declare dso_local i32 @create_sensor(%struct.ibmpex_bmc_data*, i32, i32, i32, i32) #1

declare dso_local i32 @device_create_file(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @device_remove_file(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @kfree(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
