; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_adm1031_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_adm1031_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1031_data = type { i32, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i64, i64* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Starting adm1031 update\0A\00", align 1
@adm1031 = common dso_local global i64 0, align 8
@ADM1031_REG_EXT_TEMP = common dso_local global i32 0, align 4
@ADM1031_REG_CONF1 = common dso_local global i32 0, align 4
@ADM1031_REG_CONF2 = common dso_local global i32 0, align 4
@adm1030 = common dso_local global i64 0, align 8
@ADM1031_REG_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adm1031_data* (%struct.device*)* @adm1031_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adm1031_data* @adm1031_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adm1031_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.i2c_client* @to_i2c_client(%struct.device* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.adm1031_data* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.adm1031_data* %11, %struct.adm1031_data** %4, align 8
  %12 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %13 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %12, i32 0, i32 15
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i64, i64* @jiffies, align 8
  %16 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %17 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %16, i32 0, i32 16
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @HZ, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load i32, i32* @HZ, align 4
  %23 = sdiv i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = call i64 @time_after(i64 %15, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %30 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %236, label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %138, %33
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %40 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @adm1031, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 3, i32 2
  %46 = icmp slt i32 %38, %45
  br i1 %46, label %47, label %141

47:                                               ; preds = %37
  %48 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ADM1031_REG_TEMP(i32 %49)
  %51 = call i32 @adm1031_read_value(%struct.i2c_client* %48, i32 %50)
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %6, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = load i32, i32* @ADM1031_REG_EXT_TEMP, align 4
  %55 = call i32 @adm1031_read_value(%struct.i2c_client* %53, i32 %54)
  %56 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %57 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @ADM1031_REG_TEMP(i32 %63)
  %65 = call i32 @adm1031_read_value(%struct.i2c_client* %62, i32 %64)
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %47
  %71 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %72 = load i32, i32* @ADM1031_REG_EXT_TEMP, align 4
  %73 = call i32 @adm1031_read_value(%struct.i2c_client* %71, i32 %72)
  %74 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %75 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %70, %47
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %83 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %82, i32 0, i32 17
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %81, i64* %87, align 8
  %88 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @ADM1031_REG_TEMP_OFFSET(i32 %89)
  %91 = call i32 @adm1031_read_value(%struct.i2c_client* %88, i32 %90)
  %92 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %93 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  %98 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @ADM1031_REG_TEMP_MIN(i32 %99)
  %101 = call i32 @adm1031_read_value(%struct.i2c_client* %98, i32 %100)
  %102 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %103 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @ADM1031_REG_TEMP_MAX(i32 %109)
  %111 = call i32 @adm1031_read_value(%struct.i2c_client* %108, i32 %110)
  %112 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %113 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %111, i32* %117, align 4
  %118 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @ADM1031_REG_TEMP_CRIT(i32 %119)
  %121 = call i32 @adm1031_read_value(%struct.i2c_client* %118, i32 %120)
  %122 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %123 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @ADM1031_REG_AUTO_TEMP(i32 %129)
  %131 = call i32 @adm1031_read_value(%struct.i2c_client* %128, i32 %130)
  %132 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %133 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %132, i32 0, i32 7
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %131, i32* %137, align 4
  br label %138

138:                                              ; preds = %80
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %37

141:                                              ; preds = %37
  %142 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %143 = load i32, i32* @ADM1031_REG_CONF1, align 4
  %144 = call i32 @adm1031_read_value(%struct.i2c_client* %142, i32 %143)
  %145 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %146 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 8
  %147 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %148 = load i32, i32* @ADM1031_REG_CONF2, align 4
  %149 = call i32 @adm1031_read_value(%struct.i2c_client* %147, i32 %148)
  %150 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %151 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %150, i32 0, i32 9
  store i32 %149, i32* %151, align 4
  %152 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %153 = call i32 @ADM1031_REG_STATUS(i32 0)
  %154 = call i32 @adm1031_read_value(%struct.i2c_client* %152, i32 %153)
  %155 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %156 = call i32 @ADM1031_REG_STATUS(i32 1)
  %157 = call i32 @adm1031_read_value(%struct.i2c_client* %155, i32 %156)
  %158 = shl i32 %157, 8
  %159 = or i32 %154, %158
  %160 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %161 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %160, i32 0, i32 10
  store i32 %159, i32* %161, align 8
  %162 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %163 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @adm1030, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %141
  %168 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %169 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %168, i32 0, i32 10
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, 49407
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %167, %141
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %227, %172
  %174 = load i32, i32* %5, align 4
  %175 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %176 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @adm1030, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 1, i32 2
  %182 = icmp slt i32 %174, %181
  br i1 %182, label %183, label %230

183:                                              ; preds = %173
  %184 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @ADM1031_REG_FAN_DIV(i32 %185)
  %187 = call i32 @adm1031_read_value(%struct.i2c_client* %184, i32 %186)
  %188 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %189 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %188, i32 0, i32 11
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %187, i32* %193, align 4
  %194 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @ADM1031_REG_FAN_MIN(i32 %195)
  %197 = call i32 @adm1031_read_value(%struct.i2c_client* %194, i32 %196)
  %198 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %199 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %198, i32 0, i32 12
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %197, i32* %203, align 4
  %204 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @ADM1031_REG_FAN_SPEED(i32 %205)
  %207 = call i32 @adm1031_read_value(%struct.i2c_client* %204, i32 %206)
  %208 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %209 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %208, i32 0, i32 13
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  store i32 %207, i32* %213, align 4
  %214 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %215 = load i32, i32* @ADM1031_REG_PWM, align 4
  %216 = call i32 @adm1031_read_value(%struct.i2c_client* %214, i32 %215)
  %217 = load i32, i32* %5, align 4
  %218 = mul nsw i32 4, %217
  %219 = ashr i32 %216, %218
  %220 = and i32 15, %219
  %221 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %222 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %221, i32 0, i32 14
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 %220, i32* %226, align 4
  br label %227

227:                                              ; preds = %183
  %228 = load i32, i32* %5, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %5, align 4
  br label %173

230:                                              ; preds = %173
  %231 = load i64, i64* @jiffies, align 8
  %232 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %233 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %232, i32 0, i32 16
  store i64 %231, i64* %233, align 8
  %234 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %235 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %234, i32 0, i32 0
  store i32 1, i32* %235, align 8
  br label %236

236:                                              ; preds = %230, %28
  %237 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  %238 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %237, i32 0, i32 15
  %239 = call i32 @mutex_unlock(i32* %238)
  %240 = load %struct.adm1031_data*, %struct.adm1031_data** %4, align 8
  ret %struct.adm1031_data* %240
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm1031_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @adm1031_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADM1031_REG_TEMP(i32) #1

declare dso_local i32 @ADM1031_REG_TEMP_OFFSET(i32) #1

declare dso_local i32 @ADM1031_REG_TEMP_MIN(i32) #1

declare dso_local i32 @ADM1031_REG_TEMP_MAX(i32) #1

declare dso_local i32 @ADM1031_REG_TEMP_CRIT(i32) #1

declare dso_local i32 @ADM1031_REG_AUTO_TEMP(i32) #1

declare dso_local i32 @ADM1031_REG_STATUS(i32) #1

declare dso_local i32 @ADM1031_REG_FAN_DIV(i32) #1

declare dso_local i32 @ADM1031_REG_FAN_MIN(i32) #1

declare dso_local i32 @ADM1031_REG_FAN_SPEED(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
