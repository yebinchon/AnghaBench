; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83781d_data = type { i32, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i32, i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Starting device update\0A\00", align 1
@w83783s = common dso_local global i64 0, align 8
@w83782d = common dso_local global i64 0, align 8
@w83781d = common dso_local global i64 0, align 8
@as99127f = common dso_local global i64 0, align 8
@W83781D_REG_PWM = common dso_local global i32* null, align 8
@W83781D_REG_PWMCLK12 = common dso_local global i32 0, align 4
@W83781D_REG_VID_FANDIV = common dso_local global i32 0, align 4
@W83781D_REG_CHIPID = common dso_local global i32 0, align 4
@W83781D_REG_PIN = common dso_local global i32 0, align 4
@W83781D_REG_VBAT = common dso_local global i32 0, align 4
@W83782D_REG_ALARM1 = common dso_local global i32 0, align 4
@W83782D_REG_ALARM2 = common dso_local global i32 0, align 4
@W83782D_REG_ALARM3 = common dso_local global i32 0, align 4
@W83781D_REG_ALARM1 = common dso_local global i32 0, align 4
@W83781D_REG_ALARM2 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS2 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS1 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.w83781d_data* (%struct.device*)* @w83781d_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.w83781d_data* @w83781d_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.w83781d_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.w83781d_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.w83781d_data* %7, %struct.w83781d_data** %3, align 8
  %8 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %9 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %8, i32 0, i32 21
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %12 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %11, i32 0, i32 19
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %16 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %15, i32 0, i32 20
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i64 @time_after(i64 %14, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %29 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %409, label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.device*, %struct.device** %2, align 8
  %34 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %89, %32
  %36 = load i32, i32* %5, align 4
  %37 = icmp sle i32 %36, 8
  br i1 %37, label %38, label %92

38:                                               ; preds = %35
  %39 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %40 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @w83783s, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %89

48:                                               ; preds = %44, %38
  %49 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @W83781D_REG_IN(i32 %50)
  %52 = call i32 @w83781d_read_value(%struct.w83781d_data* %49, i32 %51)
  %53 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %54 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  %59 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @W83781D_REG_IN_MIN(i32 %60)
  %62 = call i32 @w83781d_read_value(%struct.w83781d_data* %59, i32 %61)
  %63 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %64 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  %69 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @W83781D_REG_IN_MAX(i32 %70)
  %72 = call i32 @w83781d_read_value(%struct.w83781d_data* %69, i32 %71)
  %73 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %74 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %80 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @w83782d, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %48
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 6
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %92

88:                                               ; preds = %84, %48
  br label %89

89:                                               ; preds = %88, %47
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %35

92:                                               ; preds = %87, %35
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %117, %92
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %94, 3
  br i1 %95, label %96, label %120

96:                                               ; preds = %93
  %97 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @W83781D_REG_FAN(i32 %98)
  %100 = call i32 @w83781d_read_value(%struct.w83781d_data* %97, i32 %99)
  %101 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %102 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %100, i32* %106, align 4
  %107 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @W83781D_REG_FAN_MIN(i32 %108)
  %110 = call i32 @w83781d_read_value(%struct.w83781d_data* %107, i32 %109)
  %111 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %112 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %111, i32 0, i32 6
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  br label %117

117:                                              ; preds = %96
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %93

120:                                              ; preds = %93
  %121 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %122 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @w83781d, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %174

126:                                              ; preds = %120
  %127 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %128 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @as99127f, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %174

132:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %163, %132
  %134 = load i32, i32* %5, align 4
  %135 = icmp slt i32 %134, 4
  br i1 %135, label %136, label %166

136:                                              ; preds = %133
  %137 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %138 = load i32*, i32** @W83781D_REG_PWM, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @w83781d_read_value(%struct.w83781d_data* %137, i32 %142)
  %144 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %145 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %144, i32 0, i32 7
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %143, i32* %149, align 4
  %150 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %151 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @w83782d, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %136
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = icmp ne %struct.i2c_client* %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %155, %136
  %159 = load i32, i32* %5, align 4
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %166

162:                                              ; preds = %158, %155
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %5, align 4
  br label %133

166:                                              ; preds = %161, %133
  %167 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %168 = load i32, i32* @W83781D_REG_PWMCLK12, align 4
  %169 = call i32 @w83781d_read_value(%struct.w83781d_data* %167, i32 %168)
  %170 = and i32 %169, 8
  %171 = ashr i32 %170, 3
  %172 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %173 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %172, i32 0, i32 8
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %166, %126, %120
  %175 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %176 = call i32 @W83781D_REG_TEMP(i32 1)
  %177 = call i32 @w83781d_read_value(%struct.w83781d_data* %175, i32 %176)
  %178 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %179 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %178, i32 0, i32 9
  store i32 %177, i32* %179, align 4
  %180 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %181 = call i32 @W83781D_REG_TEMP_OVER(i32 1)
  %182 = call i32 @w83781d_read_value(%struct.w83781d_data* %180, i32 %181)
  %183 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %184 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %183, i32 0, i32 10
  store i32 %182, i32* %184, align 8
  %185 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %186 = call i32 @W83781D_REG_TEMP_HYST(i32 1)
  %187 = call i32 @w83781d_read_value(%struct.w83781d_data* %185, i32 %186)
  %188 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %189 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %188, i32 0, i32 11
  store i32 %187, i32* %189, align 4
  %190 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %191 = call i32 @W83781D_REG_TEMP(i32 2)
  %192 = call i32 @w83781d_read_value(%struct.w83781d_data* %190, i32 %191)
  %193 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %194 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %193, i32 0, i32 12
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  store i32 %192, i32* %196, align 4
  %197 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %198 = call i32 @W83781D_REG_TEMP_OVER(i32 2)
  %199 = call i32 @w83781d_read_value(%struct.w83781d_data* %197, i32 %198)
  %200 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %201 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %200, i32 0, i32 13
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  store i32 %199, i32* %203, align 4
  %204 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %205 = call i32 @W83781D_REG_TEMP_HYST(i32 2)
  %206 = call i32 @w83781d_read_value(%struct.w83781d_data* %204, i32 %205)
  %207 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %208 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %207, i32 0, i32 14
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  store i32 %206, i32* %210, align 4
  %211 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %212 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @w83783s, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %238

216:                                              ; preds = %174
  %217 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %218 = call i32 @W83781D_REG_TEMP(i32 3)
  %219 = call i32 @w83781d_read_value(%struct.w83781d_data* %217, i32 %218)
  %220 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %221 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %220, i32 0, i32 12
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  store i32 %219, i32* %223, align 4
  %224 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %225 = call i32 @W83781D_REG_TEMP_OVER(i32 3)
  %226 = call i32 @w83781d_read_value(%struct.w83781d_data* %224, i32 %225)
  %227 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %228 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %227, i32 0, i32 13
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  store i32 %226, i32* %230, align 4
  %231 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %232 = call i32 @W83781D_REG_TEMP_HYST(i32 3)
  %233 = call i32 @w83781d_read_value(%struct.w83781d_data* %231, i32 %232)
  %234 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %235 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %234, i32 0, i32 14
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  store i32 %233, i32* %237, align 4
  br label %238

238:                                              ; preds = %216, %174
  %239 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %240 = load i32, i32* @W83781D_REG_VID_FANDIV, align 4
  %241 = call i32 @w83781d_read_value(%struct.w83781d_data* %239, i32 %240)
  store i32 %241, i32* %5, align 4
  %242 = load i32, i32* %5, align 4
  %243 = and i32 %242, 15
  %244 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %245 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %244, i32 0, i32 15
  store i32 %243, i32* %245, align 8
  %246 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %247 = load i32, i32* @W83781D_REG_CHIPID, align 4
  %248 = call i32 @w83781d_read_value(%struct.w83781d_data* %246, i32 %247)
  %249 = and i32 %248, 1
  %250 = shl i32 %249, 4
  %251 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %252 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %251, i32 0, i32 15
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  %255 = load i32, i32* %5, align 4
  %256 = ashr i32 %255, 4
  %257 = and i32 %256, 3
  %258 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %259 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %258, i32 0, i32 16
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  store i32 %257, i32* %261, align 4
  %262 = load i32, i32* %5, align 4
  %263 = ashr i32 %262, 6
  %264 = and i32 %263, 3
  %265 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %266 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %265, i32 0, i32 16
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 1
  store i32 %264, i32* %268, align 4
  %269 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %270 = load i32, i32* @W83781D_REG_PIN, align 4
  %271 = call i32 @w83781d_read_value(%struct.w83781d_data* %269, i32 %270)
  %272 = ashr i32 %271, 6
  %273 = and i32 %272, 3
  %274 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %275 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %274, i32 0, i32 16
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 2
  store i32 %273, i32* %277, align 4
  %278 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %279 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @w83781d, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %320

283:                                              ; preds = %238
  %284 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %285 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @as99127f, align 8
  %288 = icmp ne i64 %286, %287
  br i1 %288, label %289, label %320

289:                                              ; preds = %283
  %290 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %291 = load i32, i32* @W83781D_REG_VBAT, align 4
  %292 = call i32 @w83781d_read_value(%struct.w83781d_data* %290, i32 %291)
  store i32 %292, i32* %5, align 4
  %293 = load i32, i32* %5, align 4
  %294 = ashr i32 %293, 3
  %295 = and i32 %294, 4
  %296 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %297 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %296, i32 0, i32 16
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %295
  store i32 %301, i32* %299, align 4
  %302 = load i32, i32* %5, align 4
  %303 = ashr i32 %302, 4
  %304 = and i32 %303, 4
  %305 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %306 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %305, i32 0, i32 16
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 1
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %309, %304
  store i32 %310, i32* %308, align 4
  %311 = load i32, i32* %5, align 4
  %312 = ashr i32 %311, 5
  %313 = and i32 %312, 4
  %314 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %315 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %314, i32 0, i32 16
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 2
  %318 = load i32, i32* %317, align 4
  %319 = or i32 %318, %313
  store i32 %319, i32* %317, align 4
  br label %320

320:                                              ; preds = %289, %283, %238
  %321 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %322 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @w83782d, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %342

326:                                              ; preds = %320
  %327 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %328 = load i32, i32* @W83782D_REG_ALARM1, align 4
  %329 = call i32 @w83781d_read_value(%struct.w83781d_data* %327, i32 %328)
  %330 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %331 = load i32, i32* @W83782D_REG_ALARM2, align 4
  %332 = call i32 @w83781d_read_value(%struct.w83781d_data* %330, i32 %331)
  %333 = shl i32 %332, 8
  %334 = or i32 %329, %333
  %335 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %336 = load i32, i32* @W83782D_REG_ALARM3, align 4
  %337 = call i32 @w83781d_read_value(%struct.w83781d_data* %335, i32 %336)
  %338 = shl i32 %337, 16
  %339 = or i32 %334, %338
  %340 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %341 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %340, i32 0, i32 17
  store i32 %339, i32* %341, align 8
  br label %371

342:                                              ; preds = %320
  %343 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %344 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @w83783s, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %359

348:                                              ; preds = %342
  %349 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %350 = load i32, i32* @W83782D_REG_ALARM1, align 4
  %351 = call i32 @w83781d_read_value(%struct.w83781d_data* %349, i32 %350)
  %352 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %353 = load i32, i32* @W83782D_REG_ALARM2, align 4
  %354 = call i32 @w83781d_read_value(%struct.w83781d_data* %352, i32 %353)
  %355 = shl i32 %354, 8
  %356 = or i32 %351, %355
  %357 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %358 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %357, i32 0, i32 17
  store i32 %356, i32* %358, align 8
  br label %370

359:                                              ; preds = %342
  %360 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %361 = load i32, i32* @W83781D_REG_ALARM1, align 4
  %362 = call i32 @w83781d_read_value(%struct.w83781d_data* %360, i32 %361)
  %363 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %364 = load i32, i32* @W83781D_REG_ALARM2, align 4
  %365 = call i32 @w83781d_read_value(%struct.w83781d_data* %363, i32 %364)
  %366 = shl i32 %365, 8
  %367 = or i32 %362, %366
  %368 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %369 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %368, i32 0, i32 17
  store i32 %367, i32* %369, align 8
  br label %370

370:                                              ; preds = %359, %348
  br label %371

371:                                              ; preds = %370, %326
  %372 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %373 = load i32, i32* @W83781D_REG_BEEP_INTS2, align 4
  %374 = call i32 @w83781d_read_value(%struct.w83781d_data* %372, i32 %373)
  store i32 %374, i32* %5, align 4
  %375 = load i32, i32* %5, align 4
  %376 = shl i32 %375, 8
  %377 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %378 = load i32, i32* @W83781D_REG_BEEP_INTS1, align 4
  %379 = call i32 @w83781d_read_value(%struct.w83781d_data* %377, i32 %378)
  %380 = add nsw i32 %376, %379
  %381 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %382 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %381, i32 0, i32 18
  store i32 %380, i32* %382, align 4
  %383 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %384 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @w83781d, align 8
  %387 = icmp ne i64 %385, %386
  br i1 %387, label %388, label %403

388:                                              ; preds = %371
  %389 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %390 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @as99127f, align 8
  %393 = icmp ne i64 %391, %392
  br i1 %393, label %394, label %403

394:                                              ; preds = %388
  %395 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %396 = load i32, i32* @W83781D_REG_BEEP_INTS3, align 4
  %397 = call i32 @w83781d_read_value(%struct.w83781d_data* %395, i32 %396)
  %398 = shl i32 %397, 16
  %399 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %400 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %399, i32 0, i32 18
  %401 = load i32, i32* %400, align 4
  %402 = or i32 %401, %398
  store i32 %402, i32* %400, align 4
  br label %403

403:                                              ; preds = %394, %388, %371
  %404 = load i64, i64* @jiffies, align 8
  %405 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %406 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %405, i32 0, i32 20
  store i64 %404, i64* %406, align 8
  %407 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %408 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %407, i32 0, i32 0
  store i32 1, i32* %408, align 8
  br label %409

409:                                              ; preds = %403, %27
  %410 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %411 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %410, i32 0, i32 19
  %412 = call i32 @mutex_unlock(i32* %411)
  %413 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  ret %struct.w83781d_data* %413
}

declare dso_local %struct.w83781d_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @w83781d_read_value(%struct.w83781d_data*, i32) #1

declare dso_local i32 @W83781D_REG_IN(i32) #1

declare dso_local i32 @W83781D_REG_IN_MIN(i32) #1

declare dso_local i32 @W83781D_REG_IN_MAX(i32) #1

declare dso_local i32 @W83781D_REG_FAN(i32) #1

declare dso_local i32 @W83781D_REG_FAN_MIN(i32) #1

declare dso_local i32 @W83781D_REG_TEMP(i32) #1

declare dso_local i32 @W83781D_REG_TEMP_OVER(i32) #1

declare dso_local i32 @W83781D_REG_TEMP_HYST(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
