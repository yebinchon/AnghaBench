; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_init_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dme1737_data = type { i64, i32, i32, i32, i32, i32*, i32*, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@DME1737_REG_CONFIG = common dso_local global i32 0, align 4
@force_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Device is not monitoring. Use the force_start load parameter to override.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Device is not ready.\0A\00", align 1
@DME1737_REG_CONFIG2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to query Super-IO for optional features.\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"Optional features: pwm3=%s, pwm5=%s, pwm6=%s, fan3=%s, fan4=%s, fan5=%s, fan6=%s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@DME1737_REG_TACH_PWM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [126 x i8] c"Non-standard fan to pwm mapping: fan1->pwm%d, fan2->pwm%d, fan3->pwm%d, fan4->pwm%d. Please report to the driver maintainer.\0A\00", align 1
@.str.7 = private unnamed_addr constant [113 x i8] c"Non-standard fan to pwm mapping: fan1->pwm%d, fan2->pwm%d, fan3->pwm%d. Please report to the driver maintainer.\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Switching pwm%d to manual mode.\0A\00", align 1
@dme1737 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @dme1737_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme1737_init_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dme1737_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.dme1737_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.dme1737_data* %9, %struct.dme1737_data** %4, align 8
  %10 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %11 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %10, i32 0, i32 9
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %14 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @IN_NOMINAL(i64 %15)
  %17 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %18 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %20 = load i32, i32* @DME1737_REG_CONFIG, align 4
  %21 = call i8* @dme1737_read(%struct.dme1737_data* %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %24 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %26 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @force_start, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %324

38:                                               ; preds = %30
  %39 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %40 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %44 = load i32, i32* @DME1737_REG_CONFIG, align 4
  %45 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %46 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dme1737_write(%struct.dme1737_data* %43, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %38, %1
  %50 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %51 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %324

60:                                               ; preds = %49
  %61 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %62 = icmp ne %struct.i2c_client* %61, null
  br i1 %62, label %63, label %106

63:                                               ; preds = %60
  %64 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %65 = load i32, i32* @DME1737_REG_CONFIG2, align 4
  %66 = call i8* @dme1737_read(%struct.dme1737_data* %64, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %69 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %71 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %77 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, 4
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %75, %63
  %81 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 46
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %87 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, 8
  store i32 %89, i32* %87, align 8
  %90 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %91 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, 4
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %85, %80
  %95 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %96 = call i64 @dme1737_i2c_get_features(i32 46, %struct.dme1737_data* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %100 = call i64 @dme1737_i2c_get_features(i32 78, %struct.dme1737_data* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.device*, %struct.device** %3, align 8
  %104 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %103, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %98, %94
  br label %115

106:                                              ; preds = %60
  %107 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %108 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, 4
  store i32 %110, i32* %108, align 8
  %111 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %112 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, 4
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %106, %105
  %116 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %117 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, 3
  store i32 %119, i32* %117, align 8
  %120 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %121 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, 3
  store i32 %123, i32* %121, align 4
  %124 = load %struct.device*, %struct.device** %3, align 8
  %125 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %126 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %132 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %133 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 16
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %139 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %140 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 32
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %146 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %147 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, 4
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %153 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %154 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, 8
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %160 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %161 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, 16
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %167 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %168 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, 32
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %174 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %124, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i8* %131, i8* %138, i8* %145, i8* %152, i8* %159, i8* %166, i8* %173)
  %175 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %176 = load i32, i32* @DME1737_REG_TACH_PWM, align 4
  %177 = call i8* @dme1737_read(%struct.dme1737_data* %175, i32 %176)
  %178 = ptrtoint i8* %177 to i32
  store i32 %178, i32* %7, align 4
  %179 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %180 = icmp ne %struct.i2c_client* %179, null
  br i1 %180, label %181, label %202

181:                                              ; preds = %115
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 164
  br i1 %183, label %184, label %202

184:                                              ; preds = %181
  %185 = load %struct.device*, %struct.device** %3, align 8
  %186 = load i32, i32* %7, align 4
  %187 = and i32 %186, 3
  %188 = add nsw i32 %187, 1
  %189 = load i32, i32* %7, align 4
  %190 = ashr i32 %189, 2
  %191 = and i32 %190, 3
  %192 = add nsw i32 %191, 1
  %193 = load i32, i32* %7, align 4
  %194 = ashr i32 %193, 4
  %195 = and i32 %194, 3
  %196 = add nsw i32 %195, 1
  %197 = load i32, i32* %7, align 4
  %198 = ashr i32 %197, 6
  %199 = and i32 %198, 3
  %200 = add nsw i32 %199, 1
  %201 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %185, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.6, i64 0, i64 0), i32 %188, i32 %192, i32 %196, i32 %200)
  br label %223

202:                                              ; preds = %181, %115
  %203 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %204 = icmp ne %struct.i2c_client* %203, null
  br i1 %204, label %222, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %7, align 4
  %207 = icmp ne i32 %206, 36
  br i1 %207, label %208, label %222

208:                                              ; preds = %205
  %209 = load %struct.device*, %struct.device** %3, align 8
  %210 = load i32, i32* %7, align 4
  %211 = and i32 %210, 3
  %212 = add nsw i32 %211, 1
  %213 = load i32, i32* %7, align 4
  %214 = ashr i32 %213, 2
  %215 = and i32 %214, 3
  %216 = add nsw i32 %215, 1
  %217 = load i32, i32* %7, align 4
  %218 = ashr i32 %217, 4
  %219 = and i32 %218, 3
  %220 = add nsw i32 %219, 1
  %221 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %209, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.7, i64 0, i64 0), i32 %212, i32 %216, i32 %220)
  br label %222

222:                                              ; preds = %208, %205, %202
  br label %223

223:                                              ; preds = %222, %184
  %224 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %225 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = and i32 %226, 2
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %301, label %229

229:                                              ; preds = %223
  store i32 0, i32* %6, align 4
  br label %230

230:                                              ; preds = %297, %229
  %231 = load i32, i32* %6, align 4
  %232 = icmp slt i32 %231, 3
  br i1 %232, label %233, label %300

233:                                              ; preds = %230
  %234 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %235 = load i32, i32* %6, align 4
  %236 = call i32 @DME1737_REG_PWM_CONFIG(i32 %235)
  %237 = call i8* @dme1737_read(%struct.dme1737_data* %234, i32 %236)
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %240 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %239, i32 0, i32 5
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %6, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  store i32 %238, i32* %244, align 4
  %245 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %246 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %6, align 4
  %249 = shl i32 1, %248
  %250 = and i32 %247, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %296

252:                                              ; preds = %233
  %253 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %254 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %253, i32 0, i32 5
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %6, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @PWM_EN_FROM_REG(i32 %259)
  %261 = icmp eq i32 %260, -1
  br i1 %261, label %262, label %296

262:                                              ; preds = %252
  %263 = load %struct.device*, %struct.device** %3, align 8
  %264 = load i32, i32* %6, align 4
  %265 = add nsw i32 %264, 1
  %266 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %263, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %265)
  %267 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %268 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %267, i32 0, i32 5
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %6, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @PWM_EN_TO_REG(i32 1, i32 %273)
  %275 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %276 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %275, i32 0, i32 5
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  store i32 %274, i32* %280, align 4
  %281 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %282 = load i32, i32* %6, align 4
  %283 = call i32 @DME1737_REG_PWM(i32 %282)
  %284 = call i32 @dme1737_write(%struct.dme1737_data* %281, i32 %283, i32 0)
  %285 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %286 = load i32, i32* %6, align 4
  %287 = call i32 @DME1737_REG_PWM_CONFIG(i32 %286)
  %288 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %289 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %288, i32 0, i32 5
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @dme1737_write(%struct.dme1737_data* %285, i32 %287, i32 %294)
  br label %296

296:                                              ; preds = %262, %252, %233
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %6, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %6, align 4
  br label %230

300:                                              ; preds = %230
  br label %301

301:                                              ; preds = %300, %223
  %302 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %303 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %302, i32 0, i32 6
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  store i32 1, i32* %305, align 4
  %306 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %307 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %306, i32 0, i32 6
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 1
  store i32 2, i32* %309, align 4
  %310 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %311 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %310, i32 0, i32 6
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 2
  store i32 4, i32* %313, align 4
  %314 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %315 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @dme1737, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %323

319:                                              ; preds = %301
  %320 = call i32 (...) @vid_which_vrm()
  %321 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %322 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %321, i32 0, i32 7
  store i32 %320, i32* %322, align 8
  br label %323

323:                                              ; preds = %319, %301
  store i32 0, i32* %2, align 4
  br label %324

324:                                              ; preds = %323, %55, %33
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @IN_NOMINAL(i64) #1

declare dso_local i8* @dme1737_read(%struct.dme1737_data*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dme1737_write(%struct.dme1737_data*, i32, i32) #1

declare dso_local i64 @dme1737_i2c_get_features(i32, %struct.dme1737_data*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @DME1737_REG_PWM_CONFIG(i32) #1

declare dso_local i32 @PWM_EN_FROM_REG(i32) #1

declare dso_local i32 @PWM_EN_TO_REG(i32, i32) #1

declare dso_local i32 @DME1737_REG_PWM(i32) #1

declare dso_local i32 @vid_which_vrm(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
