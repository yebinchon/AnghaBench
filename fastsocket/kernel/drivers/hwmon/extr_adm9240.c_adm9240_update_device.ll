; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm9240.c_adm9240_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm9240.c_adm9240_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm9240_data = type { i32, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i8*, i8* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@ADM9240_REG_TEMP = common dso_local global i32 0, align 4
@ADM9240_REG_TEMP_CONF = common dso_local global i32 0, align 4
@ADM9240_REG_VID_FAN_DIV = common dso_local global i32 0, align 4
@ADM9240_REG_VID4 = common dso_local global i32 0, align 4
@ADM9240_REG_ANALOG_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adm9240_data* (%struct.device*)* @adm9240_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adm9240_data* @adm9240_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adm9240_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.i2c_client* @to_i2c_client(%struct.device* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.adm9240_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.adm9240_data* %9, %struct.adm9240_data** %4, align 8
  %10 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %11 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %10, i32 0, i32 12
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i8*, i8** @jiffies, align 8
  %14 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %15 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %14, i32 0, i32 14
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 %17, 7
  %19 = sdiv i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %16, i64 %20
  %22 = call i64 @time_after(i8* %13, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %26 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %152, label %29

29:                                               ; preds = %24, %1
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 6
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ADM9240_REG_IN(i32 %35)
  %37 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 %36)
  %38 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %39 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %30

47:                                               ; preds = %30
  %48 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %49 = call i32 @ADM9240_REG_INT(i32 0)
  %50 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %48, i32 %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = call i32 @ADM9240_REG_INT(i32 1)
  %53 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %51, i32 %52)
  %54 = shl i32 %53, 8
  %55 = or i32 %50, %54
  %56 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %57 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = load i32, i32* @ADM9240_REG_TEMP, align 4
  %60 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %58, i32 %59)
  %61 = shl i32 %60, 8
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = load i32, i32* @ADM9240_REG_TEMP_CONF, align 4
  %64 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %62, i32 %63)
  %65 = or i32 %61, %64
  %66 = sdiv i32 %65, 128
  %67 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %68 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %145, %47
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %72, label %148

72:                                               ; preds = %69
  %73 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @ADM9240_REG_FAN(i32 %74)
  %76 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %73, i32 %75)
  %77 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %78 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %76, i32* %82, align 4
  %83 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %84 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %144

87:                                               ; preds = %72
  %88 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %89 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 255
  br i1 %95, label %96, label %144

96:                                               ; preds = %87
  %97 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %98 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %103, 3
  br i1 %104, label %105, label %144

105:                                              ; preds = %96
  %106 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %109 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = call i32 @adm9240_write_fan_div(%struct.i2c_client* %106, i32 %107, i32 %115)
  %117 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %118 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %123, 255
  br i1 %124, label %125, label %143

125:                                              ; preds = %105
  %126 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %127 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %126, i32 0, i32 6
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp sge i32 %132, 2
  br i1 %133, label %134, label %143

134:                                              ; preds = %125
  %135 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %136 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %135, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %141, 2
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %134, %125, %105
  br label %144

144:                                              ; preds = %143, %96, %87, %72
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %69

148:                                              ; preds = %69
  %149 = load i8*, i8** @jiffies, align 8
  %150 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %151 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %150, i32 0, i32 14
  store i8* %149, i8** %151, align 8
  br label %152

152:                                              ; preds = %148, %24
  %153 = load i8*, i8** @jiffies, align 8
  %154 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %155 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %154, i32 0, i32 13
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* @HZ, align 4
  %158 = mul nsw i32 %157, 300
  %159 = sext i32 %158 to i64
  %160 = getelementptr i8, i8* %156, i64 %159
  %161 = call i64 @time_after(i8* %153, i8* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %152
  %164 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %165 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %269, label %168

168:                                              ; preds = %163, %152
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %193, %168
  %170 = load i32, i32* %5, align 4
  %171 = icmp slt i32 %170, 6
  br i1 %171, label %172, label %196

172:                                              ; preds = %169
  %173 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @ADM9240_REG_IN_MIN(i32 %174)
  %176 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %173, i32 %175)
  %177 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %178 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %177, i32 0, i32 7
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %176, i32* %182, align 4
  %183 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @ADM9240_REG_IN_MAX(i32 %184)
  %186 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %183, i32 %185)
  %187 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %188 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %187, i32 0, i32 8
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %186, i32* %192, align 4
  br label %193

193:                                              ; preds = %172
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %5, align 4
  br label %169

196:                                              ; preds = %169
  store i32 0, i32* %5, align 4
  br label %197

197:                                              ; preds = %211, %196
  %198 = load i32, i32* %5, align 4
  %199 = icmp slt i32 %198, 2
  br i1 %199, label %200, label %214

200:                                              ; preds = %197
  %201 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %202 = load i32, i32* %5, align 4
  %203 = call i32 @ADM9240_REG_FAN_MIN(i32 %202)
  %204 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %201, i32 %203)
  %205 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %206 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %205, i32 0, i32 6
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %204, i32* %210, align 4
  br label %211

211:                                              ; preds = %200
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %197

214:                                              ; preds = %197
  %215 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %216 = call i32 @ADM9240_REG_TEMP_MAX(i32 0)
  %217 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %215, i32 %216)
  %218 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %219 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %218, i32 0, i32 9
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  store i32 %217, i32* %221, align 4
  %222 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %223 = call i32 @ADM9240_REG_TEMP_MAX(i32 1)
  %224 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %222, i32 %223)
  %225 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %226 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %225, i32 0, i32 9
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  store i32 %224, i32* %228, align 4
  %229 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %230 = load i32, i32* @ADM9240_REG_VID_FAN_DIV, align 4
  %231 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %229, i32 %230)
  store i32 %231, i32* %5, align 4
  %232 = load i32, i32* %5, align 4
  %233 = ashr i32 %232, 4
  %234 = and i32 %233, 3
  %235 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %236 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %235, i32 0, i32 5
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  store i32 %234, i32* %238, align 4
  %239 = load i32, i32* %5, align 4
  %240 = ashr i32 %239, 6
  %241 = and i32 %240, 3
  %242 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %243 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %242, i32 0, i32 5
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  store i32 %241, i32* %245, align 4
  %246 = load i32, i32* %5, align 4
  %247 = and i32 %246, 15
  %248 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %249 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %248, i32 0, i32 10
  store i32 %247, i32* %249, align 8
  %250 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %251 = load i32, i32* @ADM9240_REG_VID4, align 4
  %252 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %250, i32 %251)
  %253 = and i32 %252, 1
  %254 = shl i32 %253, 4
  %255 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %256 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %255, i32 0, i32 10
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %260 = load i32, i32* @ADM9240_REG_ANALOG_OUT, align 4
  %261 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %259, i32 %260)
  %262 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %263 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %262, i32 0, i32 11
  store i32 %261, i32* %263, align 4
  %264 = load i8*, i8** @jiffies, align 8
  %265 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %266 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %265, i32 0, i32 13
  store i8* %264, i8** %266, align 8
  %267 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %268 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %267, i32 0, i32 0
  store i32 1, i32* %268, align 8
  br label %269

269:                                              ; preds = %214, %163
  %270 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  %271 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %270, i32 0, i32 12
  %272 = call i32 @mutex_unlock(i32* %271)
  %273 = load %struct.adm9240_data*, %struct.adm9240_data** %4, align 8
  ret %struct.adm9240_data* %273
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm9240_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADM9240_REG_IN(i32) #1

declare dso_local i32 @ADM9240_REG_INT(i32) #1

declare dso_local i32 @ADM9240_REG_FAN(i32) #1

declare dso_local i32 @adm9240_write_fan_div(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ADM9240_REG_IN_MIN(i32) #1

declare dso_local i32 @ADM9240_REG_IN_MAX(i32) #1

declare dso_local i32 @ADM9240_REG_FAN_MIN(i32) #1

declare dso_local i32 @ADM9240_REG_TEMP_MAX(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
