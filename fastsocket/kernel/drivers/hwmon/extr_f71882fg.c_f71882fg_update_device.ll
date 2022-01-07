; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_f71882fg_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_f71882fg_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f71882fg_data = type { i64, i32, i32, i32*, i32, i8*, i8**, i8*, i8**, i8**, i8**, i8**, i8*, i32*, i8*, i8*, i8*, i8***, i8***, i8**, i8**, i8*, i8*, i8*, i8**, i8**, i8**, i8*, i8* }
%struct.device = type { i32 }

@f71882fg = common dso_local global i64 0, align 8
@f71858fg = common dso_local global i64 0, align 8
@f8000 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@F71882FG_REG_IN1_HIGH = common dso_local global i32 0, align 4
@F71882FG_REG_IN_BEEP = common dso_local global i32 0, align 4
@f71862fg = common dso_local global i64 0, align 8
@F71882FG_REG_FAN_BEEP = common dso_local global i32 0, align 4
@F71882FG_REG_TEMP_BEEP = common dso_local global i32 0, align 4
@F71882FG_REG_TEMP_TYPE = common dso_local global i32 0, align 4
@F71882FG_REG_PECI = common dso_local global i32 0, align 4
@F71882FG_REG_PWM_ENABLE = common dso_local global i32 0, align 4
@F71882FG_REG_TEMP_STATUS = common dso_local global i32 0, align 4
@F71882FG_REG_TEMP_DIODE_OPEN = common dso_local global i32 0, align 4
@F71882FG_REG_FAN_STATUS = common dso_local global i32 0, align 4
@F71882FG_REG_IN_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.f71882fg_data* (%struct.device*)* @f71882fg_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.f71882fg_data* @f71882fg_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.f71882fg_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.f71882fg_data* %11, %struct.f71882fg_data** %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %13 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @f71882fg, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 4, i32 3
  store i32 %18, i32* %7, align 4
  %19 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %20 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @f71858fg, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %26 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @f8000, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %1
  %31 = phi i1 [ true, %1 ], [ %29, %24 ]
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 3, i32 9
  store i32 %33, i32* %8, align 4
  %34 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %35 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %34, i32 0, i32 4
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i8*, i8** @jiffies, align 8
  %38 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %39 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %38, i32 0, i32 16
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @HZ, align 4
  %42 = mul nsw i32 60, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %40, i64 %43
  %45 = call i64 @time_after(i8* %37, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %30
  %48 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %49 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %365, label %52

52:                                               ; preds = %47, %30
  %53 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %54 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @f71882fg, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %60 = load i32, i32* @F71882FG_REG_IN1_HIGH, align 4
  %61 = call i8* @f71882fg_read8(%struct.f71882fg_data* %59, i32 %60)
  %62 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %63 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %62, i32 0, i32 28
  store i8* %61, i8** %63, align 8
  %64 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %65 = load i32, i32* @F71882FG_REG_IN_BEEP, align 4
  %66 = call i8* @f71882fg_read8(%struct.f71882fg_data* %64, i32 %65)
  %67 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %68 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %67, i32 0, i32 27
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %58, %52
  %70 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %71 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %101, %69
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %76 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 3, %77
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %73
  %81 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @F71882FG_REG_TEMP_OVT(i32 %82)
  %84 = call i8* @f71882fg_read8(%struct.f71882fg_data* %81, i32 %83)
  %85 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %86 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %85, i32 0, i32 26
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* %84, i8** %90, align 8
  %91 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @F71882FG_REG_TEMP_HIGH(i32 %92)
  %94 = call i8* @f71882fg_read8(%struct.f71882fg_data* %91, i32 %93)
  %95 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %96 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %95, i32 0, i32 25
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  store i8* %94, i8** %100, align 8
  br label %101

101:                                              ; preds = %80
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %73

104:                                              ; preds = %73
  %105 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %106 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @f8000, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %112 = call i32 @F71882FG_REG_TEMP_HYST(i32 0)
  %113 = call i8* @f71882fg_read8(%struct.f71882fg_data* %111, i32 %112)
  %114 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %115 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %114, i32 0, i32 24
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  store i8* %113, i8** %117, align 8
  %118 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %119 = call i32 @F71882FG_REG_TEMP_HYST(i32 1)
  %120 = call i8* @f71882fg_read8(%struct.f71882fg_data* %118, i32 %119)
  %121 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %122 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %121, i32 0, i32 24
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  store i8* %120, i8** %124, align 8
  br label %125

125:                                              ; preds = %110, %104
  %126 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %127 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @f71862fg, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %125
  %132 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %133 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @f71882fg, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %170

137:                                              ; preds = %131, %125
  %138 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %139 = load i32, i32* @F71882FG_REG_FAN_BEEP, align 4
  %140 = call i8* @f71882fg_read8(%struct.f71882fg_data* %138, i32 %139)
  %141 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %142 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %141, i32 0, i32 23
  store i8* %140, i8** %142, align 8
  %143 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %144 = load i32, i32* @F71882FG_REG_TEMP_BEEP, align 4
  %145 = call i8* @f71882fg_read8(%struct.f71882fg_data* %143, i32 %144)
  %146 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %147 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %146, i32 0, i32 22
  store i8* %145, i8** %147, align 8
  %148 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %149 = load i32, i32* @F71882FG_REG_TEMP_TYPE, align 4
  %150 = call i8* @f71882fg_read8(%struct.f71882fg_data* %148, i32 %149)
  %151 = ptrtoint i8* %150 to i32
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = and i32 %152, 4
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 2, i32 4
  %157 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %158 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, 8
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 2, i32 4
  %166 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %167 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  store i32 %165, i32* %169, align 4
  br label %170

170:                                              ; preds = %137, %131
  %171 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %172 = load i32, i32* @F71882FG_REG_PECI, align 4
  %173 = call i8* @f71882fg_read8(%struct.f71882fg_data* %171, i32 %172)
  %174 = ptrtoint i8* %173 to i32
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = and i32 %175, 3
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %183

178:                                              ; preds = %170
  %179 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %180 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  store i32 6, i32* %182, align 4
  br label %221

183:                                              ; preds = %170
  %184 = load i32, i32* %6, align 4
  %185 = and i32 %184, 3
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %189 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  store i32 5, i32* %191, align 4
  br label %220

192:                                              ; preds = %183
  %193 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %194 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @f71862fg, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %204, label %198

198:                                              ; preds = %192
  %199 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %200 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @f71882fg, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %198, %192
  %205 = load i32, i32* %5, align 4
  %206 = and i32 %205, 2
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i32 2, i32 4
  %210 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %211 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  store i32 %209, i32* %213, align 4
  br label %219

214:                                              ; preds = %198
  %215 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %216 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  store i32 2, i32* %218, align 4
  br label %219

219:                                              ; preds = %214, %204
  br label %220

220:                                              ; preds = %219, %187
  br label %221

221:                                              ; preds = %220, %178
  %222 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %223 = load i32, i32* @F71882FG_REG_PWM_ENABLE, align 4
  %224 = call i8* @f71882fg_read8(%struct.f71882fg_data* %222, i32 %223)
  %225 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %226 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %225, i32 0, i32 21
  store i8* %224, i8** %226, align 8
  %227 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %228 = call i32 @F71882FG_REG_FAN_HYST(i32 0)
  %229 = call i8* @f71882fg_read8(%struct.f71882fg_data* %227, i32 %228)
  %230 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %231 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %230, i32 0, i32 20
  %232 = load i8**, i8*** %231, align 8
  %233 = getelementptr inbounds i8*, i8** %232, i64 0
  store i8* %229, i8** %233, align 8
  %234 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %235 = call i32 @F71882FG_REG_FAN_HYST(i32 1)
  %236 = call i8* @f71882fg_read8(%struct.f71882fg_data* %234, i32 %235)
  %237 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %238 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %237, i32 0, i32 20
  %239 = load i8**, i8*** %238, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i64 1
  store i8* %236, i8** %240, align 8
  store i32 0, i32* %4, align 4
  br label %241

241:                                              ; preds = %358, %221
  %242 = load i32, i32* %4, align 4
  %243 = load i32, i32* %7, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %361

245:                                              ; preds = %241
  %246 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @F71882FG_REG_POINT_MAPPING(i32 %247)
  %249 = call i8* @f71882fg_read8(%struct.f71882fg_data* %246, i32 %248)
  %250 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %251 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %250, i32 0, i32 19
  %252 = load i8**, i8*** %251, align 8
  %253 = load i32, i32* %4, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  store i8* %249, i8** %255, align 8
  %256 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %257 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @f71862fg, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %261, label %308

261:                                              ; preds = %245
  store i32 0, i32* %9, align 4
  br label %262

262:                                              ; preds = %281, %261
  %263 = load i32, i32* %9, align 4
  %264 = icmp slt i32 %263, 5
  br i1 %264, label %265, label %284

265:                                              ; preds = %262
  %266 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %267 = load i32, i32* %4, align 4
  %268 = load i32, i32* %9, align 4
  %269 = call i32 @F71882FG_REG_POINT_PWM(i32 %267, i32 %268)
  %270 = call i8* @f71882fg_read8(%struct.f71882fg_data* %266, i32 %269)
  %271 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %272 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %271, i32 0, i32 18
  %273 = load i8***, i8**** %272, align 8
  %274 = load i32, i32* %4, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8**, i8*** %273, i64 %275
  %277 = load i8**, i8*** %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8*, i8** %277, i64 %279
  store i8* %270, i8** %280, align 8
  br label %281

281:                                              ; preds = %265
  %282 = load i32, i32* %9, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %9, align 4
  br label %262

284:                                              ; preds = %262
  store i32 0, i32* %9, align 4
  br label %285

285:                                              ; preds = %304, %284
  %286 = load i32, i32* %9, align 4
  %287 = icmp slt i32 %286, 4
  br i1 %287, label %288, label %307

288:                                              ; preds = %285
  %289 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %290 = load i32, i32* %4, align 4
  %291 = load i32, i32* %9, align 4
  %292 = call i32 @F71882FG_REG_POINT_TEMP(i32 %290, i32 %291)
  %293 = call i8* @f71882fg_read8(%struct.f71882fg_data* %289, i32 %292)
  %294 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %295 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %294, i32 0, i32 17
  %296 = load i8***, i8**** %295, align 8
  %297 = load i32, i32* %4, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8**, i8*** %296, i64 %298
  %300 = load i8**, i8*** %299, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8*, i8** %300, i64 %302
  store i8* %293, i8** %303, align 8
  br label %304

304:                                              ; preds = %288
  %305 = load i32, i32* %9, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %9, align 4
  br label %285

307:                                              ; preds = %285
  br label %357

308:                                              ; preds = %245
  %309 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %310 = load i32, i32* %4, align 4
  %311 = call i32 @F71882FG_REG_POINT_PWM(i32 %310, i32 1)
  %312 = call i8* @f71882fg_read8(%struct.f71882fg_data* %309, i32 %311)
  %313 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %314 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %313, i32 0, i32 18
  %315 = load i8***, i8**** %314, align 8
  %316 = load i32, i32* %4, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8**, i8*** %315, i64 %317
  %319 = load i8**, i8*** %318, align 8
  %320 = getelementptr inbounds i8*, i8** %319, i64 1
  store i8* %312, i8** %320, align 8
  %321 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %322 = load i32, i32* %4, align 4
  %323 = call i32 @F71882FG_REG_POINT_PWM(i32 %322, i32 4)
  %324 = call i8* @f71882fg_read8(%struct.f71882fg_data* %321, i32 %323)
  %325 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %326 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %325, i32 0, i32 18
  %327 = load i8***, i8**** %326, align 8
  %328 = load i32, i32* %4, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8**, i8*** %327, i64 %329
  %331 = load i8**, i8*** %330, align 8
  %332 = getelementptr inbounds i8*, i8** %331, i64 4
  store i8* %324, i8** %332, align 8
  %333 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %334 = load i32, i32* %4, align 4
  %335 = call i32 @F71882FG_REG_POINT_TEMP(i32 %334, i32 0)
  %336 = call i8* @f71882fg_read8(%struct.f71882fg_data* %333, i32 %335)
  %337 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %338 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %337, i32 0, i32 17
  %339 = load i8***, i8**** %338, align 8
  %340 = load i32, i32* %4, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8**, i8*** %339, i64 %341
  %343 = load i8**, i8*** %342, align 8
  %344 = getelementptr inbounds i8*, i8** %343, i64 0
  store i8* %336, i8** %344, align 8
  %345 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %346 = load i32, i32* %4, align 4
  %347 = call i32 @F71882FG_REG_POINT_TEMP(i32 %346, i32 3)
  %348 = call i8* @f71882fg_read8(%struct.f71882fg_data* %345, i32 %347)
  %349 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %350 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %349, i32 0, i32 17
  %351 = load i8***, i8**** %350, align 8
  %352 = load i32, i32* %4, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8**, i8*** %351, i64 %353
  %355 = load i8**, i8*** %354, align 8
  %356 = getelementptr inbounds i8*, i8** %355, i64 3
  store i8* %348, i8** %356, align 8
  br label %357

357:                                              ; preds = %308, %307
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %4, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %4, align 4
  br label %241

361:                                              ; preds = %241
  %362 = load i8*, i8** @jiffies, align 8
  %363 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %364 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %363, i32 0, i32 16
  store i8* %362, i8** %364, align 8
  br label %365

365:                                              ; preds = %361, %47
  %366 = load i8*, i8** @jiffies, align 8
  %367 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %368 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %367, i32 0, i32 5
  %369 = load i8*, i8** %368, align 8
  %370 = load i32, i32* @HZ, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr i8, i8* %369, i64 %371
  %373 = call i64 @time_after(i8* %366, i8* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %380, label %375

375:                                              ; preds = %365
  %376 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %377 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %519, label %380

380:                                              ; preds = %375, %365
  %381 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %382 = load i32, i32* @F71882FG_REG_TEMP_STATUS, align 4
  %383 = call i8* @f71882fg_read8(%struct.f71882fg_data* %381, i32 %382)
  %384 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %385 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %384, i32 0, i32 15
  store i8* %383, i8** %385, align 8
  %386 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %387 = load i32, i32* @F71882FG_REG_TEMP_DIODE_OPEN, align 4
  %388 = call i8* @f71882fg_read8(%struct.f71882fg_data* %386, i32 %387)
  %389 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %390 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %389, i32 0, i32 14
  store i8* %388, i8** %390, align 8
  %391 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %392 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 4
  store i32 %393, i32* %4, align 4
  br label %394

394:                                              ; preds = %411, %380
  %395 = load i32, i32* %4, align 4
  %396 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %397 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 4
  %399 = add nsw i32 3, %398
  %400 = icmp slt i32 %395, %399
  br i1 %400, label %401, label %414

401:                                              ; preds = %394
  %402 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %403 = load i32, i32* %4, align 4
  %404 = call i32 @f71882fg_read_temp(%struct.f71882fg_data* %402, i32 %403)
  %405 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %406 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %405, i32 0, i32 13
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %4, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  store i32 %404, i32* %410, align 4
  br label %411

411:                                              ; preds = %401
  %412 = load i32, i32* %4, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %4, align 4
  br label %394

414:                                              ; preds = %394
  %415 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %416 = load i32, i32* @F71882FG_REG_FAN_STATUS, align 4
  %417 = call i8* @f71882fg_read8(%struct.f71882fg_data* %415, i32 %416)
  %418 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %419 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %418, i32 0, i32 12
  store i8* %417, i8** %419, align 8
  store i32 0, i32* %4, align 4
  br label %420

420:                                              ; preds = %465, %414
  %421 = load i32, i32* %4, align 4
  %422 = load i32, i32* %7, align 4
  %423 = icmp slt i32 %421, %422
  br i1 %423, label %424, label %468

424:                                              ; preds = %420
  %425 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %426 = load i32, i32* %4, align 4
  %427 = call i32 @F71882FG_REG_FAN(i32 %426)
  %428 = call i8* @f71882fg_read16(%struct.f71882fg_data* %425, i32 %427)
  %429 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %430 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %429, i32 0, i32 8
  %431 = load i8**, i8*** %430, align 8
  %432 = load i32, i32* %4, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i8*, i8** %431, i64 %433
  store i8* %428, i8** %434, align 8
  %435 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %436 = load i32, i32* %4, align 4
  %437 = call i32 @F71882FG_REG_FAN_TARGET(i32 %436)
  %438 = call i8* @f71882fg_read16(%struct.f71882fg_data* %435, i32 %437)
  %439 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %440 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %439, i32 0, i32 11
  %441 = load i8**, i8*** %440, align 8
  %442 = load i32, i32* %4, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i8*, i8** %441, i64 %443
  store i8* %438, i8** %444, align 8
  %445 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %446 = load i32, i32* %4, align 4
  %447 = call i32 @F71882FG_REG_FAN_FULL_SPEED(i32 %446)
  %448 = call i8* @f71882fg_read16(%struct.f71882fg_data* %445, i32 %447)
  %449 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %450 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %449, i32 0, i32 10
  %451 = load i8**, i8*** %450, align 8
  %452 = load i32, i32* %4, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i8*, i8** %451, i64 %453
  store i8* %448, i8** %454, align 8
  %455 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %456 = load i32, i32* %4, align 4
  %457 = call i32 @F71882FG_REG_PWM(i32 %456)
  %458 = call i8* @f71882fg_read8(%struct.f71882fg_data* %455, i32 %457)
  %459 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %460 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %459, i32 0, i32 9
  %461 = load i8**, i8*** %460, align 8
  %462 = load i32, i32* %4, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i8*, i8** %461, i64 %463
  store i8* %458, i8** %464, align 8
  br label %465

465:                                              ; preds = %424
  %466 = load i32, i32* %4, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %4, align 4
  br label %420

468:                                              ; preds = %420
  %469 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %470 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %469, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = load i64, i64* @f8000, align 8
  %473 = icmp eq i64 %471, %472
  br i1 %473, label %474, label %482

474:                                              ; preds = %468
  %475 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %476 = call i32 @F71882FG_REG_FAN(i32 3)
  %477 = call i8* @f71882fg_read16(%struct.f71882fg_data* %475, i32 %476)
  %478 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %479 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %478, i32 0, i32 8
  %480 = load i8**, i8*** %479, align 8
  %481 = getelementptr inbounds i8*, i8** %480, i64 3
  store i8* %477, i8** %481, align 8
  br label %482

482:                                              ; preds = %474, %468
  %483 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %484 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %483, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = load i64, i64* @f71882fg, align 8
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %488, label %494

488:                                              ; preds = %482
  %489 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %490 = load i32, i32* @F71882FG_REG_IN_STATUS, align 4
  %491 = call i8* @f71882fg_read8(%struct.f71882fg_data* %489, i32 %490)
  %492 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %493 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %492, i32 0, i32 7
  store i8* %491, i8** %493, align 8
  br label %494

494:                                              ; preds = %488, %482
  store i32 0, i32* %4, align 4
  br label %495

495:                                              ; preds = %510, %494
  %496 = load i32, i32* %4, align 4
  %497 = load i32, i32* %8, align 4
  %498 = icmp slt i32 %496, %497
  br i1 %498, label %499, label %513

499:                                              ; preds = %495
  %500 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %501 = load i32, i32* %4, align 4
  %502 = call i32 @F71882FG_REG_IN(i32 %501)
  %503 = call i8* @f71882fg_read8(%struct.f71882fg_data* %500, i32 %502)
  %504 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %505 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %504, i32 0, i32 6
  %506 = load i8**, i8*** %505, align 8
  %507 = load i32, i32* %4, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i8*, i8** %506, i64 %508
  store i8* %503, i8** %509, align 8
  br label %510

510:                                              ; preds = %499
  %511 = load i32, i32* %4, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %4, align 4
  br label %495

513:                                              ; preds = %495
  %514 = load i8*, i8** @jiffies, align 8
  %515 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %516 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %515, i32 0, i32 5
  store i8* %514, i8** %516, align 8
  %517 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %518 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %517, i32 0, i32 1
  store i32 1, i32* %518, align 8
  br label %519

519:                                              ; preds = %513, %375
  %520 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %521 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %520, i32 0, i32 4
  %522 = call i32 @mutex_unlock(i32* %521)
  %523 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  ret %struct.f71882fg_data* %523
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i8* @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @F71882FG_REG_TEMP_OVT(i32) #1

declare dso_local i32 @F71882FG_REG_TEMP_HIGH(i32) #1

declare dso_local i32 @F71882FG_REG_TEMP_HYST(i32) #1

declare dso_local i32 @F71882FG_REG_FAN_HYST(i32) #1

declare dso_local i32 @F71882FG_REG_POINT_MAPPING(i32) #1

declare dso_local i32 @F71882FG_REG_POINT_PWM(i32, i32) #1

declare dso_local i32 @F71882FG_REG_POINT_TEMP(i32, i32) #1

declare dso_local i32 @f71882fg_read_temp(%struct.f71882fg_data*, i32) #1

declare dso_local i8* @f71882fg_read16(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @F71882FG_REG_FAN(i32) #1

declare dso_local i32 @F71882FG_REG_FAN_TARGET(i32) #1

declare dso_local i32 @F71882FG_REG_FAN_FULL_SPEED(i32) #1

declare dso_local i32 @F71882FG_REG_PWM(i32) #1

declare dso_local i32 @F71882FG_REG_IN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
