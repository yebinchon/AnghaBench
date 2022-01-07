; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_lm90_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_lm90_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm90_data = type { i32, i32*, i32, i64, i32*, i32, i32, i64 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Updating lm90 data.\0A\00", align 1
@LM90_REG_R_LOCAL_LOW = common dso_local global i32 0, align 4
@LM90_REG_R_LOCAL_HIGH = common dso_local global i32 0, align 4
@LM90_REG_R_LOCAL_CRIT = common dso_local global i32 0, align 4
@LM90_REG_R_REMOTE_CRIT = common dso_local global i32 0, align 4
@LM90_REG_R_TCRIT_HYST = common dso_local global i32 0, align 4
@max6657 = common dso_local global i64 0, align 8
@max6646 = common dso_local global i64 0, align 8
@LM90_REG_R_LOCAL_TEMP = common dso_local global i32 0, align 4
@MAX6657_REG_R_LOCAL_TEMPL = common dso_local global i32 0, align 4
@LM90_REG_R_REMOTE_TEMPH = common dso_local global i32 0, align 4
@LM90_REG_R_REMOTE_TEMPL = common dso_local global i32 0, align 4
@LM90_REG_R_REMOTE_LOWH = common dso_local global i32 0, align 4
@max6680 = common dso_local global i64 0, align 8
@LM90_REG_R_REMOTE_LOWL = common dso_local global i32 0, align 4
@LM90_REG_R_REMOTE_HIGHH = common dso_local global i32 0, align 4
@LM90_REG_R_REMOTE_HIGHL = common dso_local global i32 0, align 4
@LM90_REG_R_REMOTE_OFFSH = common dso_local global i32 0, align 4
@LM90_REG_R_REMOTE_OFFSL = common dso_local global i32 0, align 4
@LM90_REG_R_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm90_data* (%struct.device*)* @lm90_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm90_data* @lm90_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.lm90_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.i2c_client* @to_i2c_client(%struct.device* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.lm90_data* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.lm90_data* %10, %struct.lm90_data** %4, align 8
  %11 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %12 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %11, i32 0, i32 6
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %16 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i64 @time_after(i64 %14, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %26 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %236, label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = load i32, i32* @LM90_REG_R_LOCAL_LOW, align 4
  %35 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %36 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = call i64 @lm90_read_reg(%struct.i2c_client* %33, i32 %34, i32* %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = load i32, i32* @LM90_REG_R_LOCAL_HIGH, align 4
  %42 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %43 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = call i64 @lm90_read_reg(%struct.i2c_client* %40, i32 %41, i32* %45)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = load i32, i32* @LM90_REG_R_LOCAL_CRIT, align 4
  %49 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %50 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = call i64 @lm90_read_reg(%struct.i2c_client* %47, i32 %48, i32* %52)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %55 = load i32, i32* @LM90_REG_R_REMOTE_CRIT, align 4
  %56 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %57 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = call i64 @lm90_read_reg(%struct.i2c_client* %54, i32 %55, i32* %59)
  %61 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %62 = load i32, i32* @LM90_REG_R_TCRIT_HYST, align 4
  %63 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %64 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %63, i32 0, i32 2
  %65 = call i64 @lm90_read_reg(%struct.i2c_client* %61, i32 %62, i32* %64)
  %66 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %67 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @max6657, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %29
  %72 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %73 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @max6646, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71, %29
  %78 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %79 = load i32, i32* @LM90_REG_R_LOCAL_TEMP, align 4
  %80 = load i32, i32* @MAX6657_REG_R_LOCAL_TEMPL, align 4
  %81 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %82 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = call i32 @lm90_read16(%struct.i2c_client* %78, i32 %79, i32 %80, i32* %84)
  br label %99

86:                                               ; preds = %71
  %87 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %88 = load i32, i32* @LM90_REG_R_LOCAL_TEMP, align 4
  %89 = call i64 @lm90_read_reg(%struct.i2c_client* %87, i32 %88, i32* %5)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = shl i32 %92, 8
  %94 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %95 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %91, %86
  br label %99

99:                                               ; preds = %98, %77
  %100 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %101 = load i32, i32* @LM90_REG_R_REMOTE_TEMPH, align 4
  %102 = load i32, i32* @LM90_REG_R_REMOTE_TEMPL, align 4
  %103 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %104 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = call i32 @lm90_read16(%struct.i2c_client* %100, i32 %101, i32 %102, i32* %106)
  %108 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %109 = load i32, i32* @LM90_REG_R_REMOTE_LOWH, align 4
  %110 = call i64 @lm90_read_reg(%struct.i2c_client* %108, i32 %109, i32* %5)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %150

112:                                              ; preds = %99
  %113 = load i32, i32* %5, align 4
  %114 = shl i32 %113, 8
  %115 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %116 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 %114, i32* %118, align 4
  %119 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %120 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @max6657, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %149

124:                                              ; preds = %112
  %125 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %126 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @max6680, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %124
  %131 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %132 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @max6646, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %130
  %137 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %138 = load i32, i32* @LM90_REG_R_REMOTE_LOWL, align 4
  %139 = call i64 @lm90_read_reg(%struct.i2c_client* %137, i32 %138, i32* %6)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %144 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %142
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %141, %136, %130, %124, %112
  br label %150

150:                                              ; preds = %149, %99
  %151 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %152 = load i32, i32* @LM90_REG_R_REMOTE_HIGHH, align 4
  %153 = call i64 @lm90_read_reg(%struct.i2c_client* %151, i32 %152, i32* %5)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %193

155:                                              ; preds = %150
  %156 = load i32, i32* %5, align 4
  %157 = shl i32 %156, 8
  %158 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %159 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  store i32 %157, i32* %161, align 4
  %162 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %163 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @max6657, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %192

167:                                              ; preds = %155
  %168 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %169 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @max6680, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %192

173:                                              ; preds = %167
  %174 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %175 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @max6646, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %173
  %180 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %181 = load i32, i32* @LM90_REG_R_REMOTE_HIGHL, align 4
  %182 = call i64 @lm90_read_reg(%struct.i2c_client* %180, i32 %181, i32* %6)
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = load i32, i32* %6, align 4
  %186 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %187 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %185
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %184, %179, %173, %167, %155
  br label %193

193:                                              ; preds = %192, %150
  %194 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %195 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @max6657, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %225

199:                                              ; preds = %193
  %200 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %201 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @max6646, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %225

205:                                              ; preds = %199
  %206 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %207 = load i32, i32* @LM90_REG_R_REMOTE_OFFSH, align 4
  %208 = call i64 @lm90_read_reg(%struct.i2c_client* %206, i32 %207, i32* %5)
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %205
  %211 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %212 = load i32, i32* @LM90_REG_R_REMOTE_OFFSL, align 4
  %213 = call i64 @lm90_read_reg(%struct.i2c_client* %211, i32 %212, i32* %6)
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %210
  %216 = load i32, i32* %5, align 4
  %217 = shl i32 %216, 8
  %218 = load i32, i32* %6, align 4
  %219 = or i32 %217, %218
  %220 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %221 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %220, i32 0, i32 4
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 3
  store i32 %219, i32* %223, align 4
  br label %224

224:                                              ; preds = %215, %210, %205
  br label %225

225:                                              ; preds = %224, %199, %193
  %226 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %227 = load i32, i32* @LM90_REG_R_STATUS, align 4
  %228 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %229 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %228, i32 0, i32 5
  %230 = call i64 @lm90_read_reg(%struct.i2c_client* %226, i32 %227, i32* %229)
  %231 = load i64, i64* @jiffies, align 8
  %232 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %233 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %232, i32 0, i32 7
  store i64 %231, i64* %233, align 8
  %234 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %235 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %234, i32 0, i32 0
  store i32 1, i32* %235, align 8
  br label %236

236:                                              ; preds = %225, %24
  %237 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %238 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %237, i32 0, i32 6
  %239 = call i32 @mutex_unlock(i32* %238)
  %240 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  ret %struct.lm90_data* %240
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm90_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @lm90_read_reg(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @lm90_read16(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
