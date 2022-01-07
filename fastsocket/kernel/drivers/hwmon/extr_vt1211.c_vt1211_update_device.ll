; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt1211.c_vt1211_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt1211.c_vt1211_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt1211_data = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32, i32**, i32*, i32, i32, i64, i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@VT1211_REG_VID = common dso_local global i32 0, align 4
@regtemp = common dso_local global i32* null, align 8
@regtempmax = common dso_local global i32* null, align 8
@regtemphyst = common dso_local global i32* null, align 8
@VT1211_REG_FAN_DIV = common dso_local global i32 0, align 4
@VT1211_REG_PWM_CTL = common dso_local global i32 0, align 4
@VT1211_REG_PWM_CLK = common dso_local global i32 0, align 4
@VT1211_REG_ALARM2 = common dso_local global i32 0, align 4
@VT1211_REG_ALARM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vt1211_data* (%struct.device*)* @vt1211_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vt1211_data* @vt1211_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.vt1211_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.vt1211_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.vt1211_data* %7, %struct.vt1211_data** %3, align 8
  %8 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %9 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %8, i32 0, i32 18
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i64, i64* @jiffies, align 8
  %12 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %13 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %12, i32 0, i32 19
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HZ, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i64 @time_after(i64 %11, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %21 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %297, label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %26 = load i32, i32* @VT1211_REG_VID, align 4
  %27 = call i32 @vt1211_read8(%struct.vt1211_data* %25, i32 %26)
  %28 = and i32 %27, 31
  %29 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %30 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %77, %24
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %34 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %80

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %41 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %40, i32 0, i32 20
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @ISVOLT(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %38
  %46 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @VT1211_REG_IN(i32 %47)
  %49 = call i32 @vt1211_read8(%struct.vt1211_data* %46, i32 %48)
  %50 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %51 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @VT1211_REG_IN_MIN(i32 %57)
  %59 = call i32 @vt1211_read8(%struct.vt1211_data* %56, i32 %58)
  %60 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %61 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @VT1211_REG_IN_MAX(i32 %67)
  %69 = call i32 @vt1211_read8(%struct.vt1211_data* %66, i32 %68)
  %70 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %71 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  br label %76

76:                                               ; preds = %45, %38
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %31

80:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %136, %80
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %84 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @ARRAY_SIZE(i32* %85)
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %139

88:                                               ; preds = %81
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %91 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %90, i32 0, i32 20
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @ISTEMP(i32 %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %135

95:                                               ; preds = %88
  %96 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %97 = load i32*, i32** @regtemp, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @vt1211_read8(%struct.vt1211_data* %96, i32 %101)
  %103 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %104 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  %109 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %110 = load i32*, i32** @regtempmax, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @vt1211_read8(%struct.vt1211_data* %109, i32 %114)
  %116 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %117 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %115, i32* %121, align 4
  %122 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %123 = load i32*, i32** @regtemphyst, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @vt1211_read8(%struct.vt1211_data* %122, i32 %127)
  %129 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %130 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %129, i32 0, i32 7
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  br label %135

135:                                              ; preds = %95, %88
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  br label %81

139:                                              ; preds = %81
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %178, %139
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %143 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %142, i32 0, i32 8
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @ARRAY_SIZE(i32* %144)
  %146 = icmp slt i32 %141, %145
  br i1 %146, label %147, label %181

147:                                              ; preds = %140
  %148 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @VT1211_REG_FAN(i32 %149)
  %151 = call i32 @vt1211_read8(%struct.vt1211_data* %148, i32 %150)
  %152 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %153 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %152, i32 0, i32 8
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %151, i32* %157, align 4
  %158 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %159 = load i32, i32* %4, align 4
  %160 = call i32 @VT1211_REG_FAN_MIN(i32 %159)
  %161 = call i32 @vt1211_read8(%struct.vt1211_data* %158, i32 %160)
  %162 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %163 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %162, i32 0, i32 9
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %161, i32* %167, align 4
  %168 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @VT1211_REG_PWM(i32 %169)
  %171 = call i32 @vt1211_read8(%struct.vt1211_data* %168, i32 %170)
  %172 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %173 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %172, i32 0, i32 10
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %171, i32* %177, align 4
  br label %178

178:                                              ; preds = %147
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %4, align 4
  br label %140

181:                                              ; preds = %140
  %182 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %183 = load i32, i32* @VT1211_REG_FAN_DIV, align 4
  %184 = call i32 @vt1211_read8(%struct.vt1211_data* %182, i32 %183)
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* %5, align 4
  %186 = ashr i32 %185, 4
  %187 = and i32 %186, 3
  %188 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %189 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %188, i32 0, i32 11
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  store i32 %187, i32* %191, align 4
  %192 = load i32, i32* %5, align 4
  %193 = ashr i32 %192, 6
  %194 = and i32 %193, 3
  %195 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %196 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %195, i32 0, i32 11
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %194, i32* %198, align 4
  %199 = load i32, i32* %5, align 4
  %200 = and i32 %199, 15
  %201 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %202 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %201, i32 0, i32 12
  store i32 %200, i32* %202, align 8
  %203 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %204 = load i32, i32* @VT1211_REG_PWM_CTL, align 4
  %205 = call i32 @vt1211_read8(%struct.vt1211_data* %203, i32 %204)
  store i32 %205, i32* %5, align 4
  %206 = load i32, i32* %5, align 4
  %207 = and i32 %206, 15
  %208 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %209 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %208, i32 0, i32 13
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  store i32 %207, i32* %211, align 4
  %212 = load i32, i32* %5, align 4
  %213 = ashr i32 %212, 4
  %214 = and i32 %213, 15
  %215 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %216 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %215, i32 0, i32 13
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  store i32 %214, i32* %218, align 4
  %219 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %220 = load i32, i32* @VT1211_REG_PWM_CLK, align 4
  %221 = call i32 @vt1211_read8(%struct.vt1211_data* %219, i32 %220)
  %222 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %223 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %222, i32 0, i32 14
  store i32 %221, i32* %223, align 8
  %224 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %225 = call i32 @VT1211_REG_PWM_AUTO_PWM(i32 0, i32 1)
  %226 = call i32 @vt1211_read8(%struct.vt1211_data* %224, i32 %225)
  %227 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %228 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %227, i32 0, i32 15
  %229 = load i32**, i32*** %228, align 8
  %230 = getelementptr inbounds i32*, i32** %229, i64 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  store i32 %226, i32* %232, align 4
  %233 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %234 = call i32 @VT1211_REG_PWM_AUTO_PWM(i32 0, i32 2)
  %235 = call i32 @vt1211_read8(%struct.vt1211_data* %233, i32 %234)
  %236 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %237 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %236, i32 0, i32 15
  %238 = load i32**, i32*** %237, align 8
  %239 = getelementptr inbounds i32*, i32** %238, i64 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  store i32 %235, i32* %241, align 4
  %242 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %243 = call i32 @VT1211_REG_PWM_AUTO_PWM(i32 1, i32 1)
  %244 = call i32 @vt1211_read8(%struct.vt1211_data* %242, i32 %243)
  %245 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %246 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %245, i32 0, i32 15
  %247 = load i32**, i32*** %246, align 8
  %248 = getelementptr inbounds i32*, i32** %247, i64 1
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  store i32 %244, i32* %250, align 4
  %251 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %252 = call i32 @VT1211_REG_PWM_AUTO_PWM(i32 1, i32 2)
  %253 = call i32 @vt1211_read8(%struct.vt1211_data* %251, i32 %252)
  %254 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %255 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %254, i32 0, i32 15
  %256 = load i32**, i32*** %255, align 8
  %257 = getelementptr inbounds i32*, i32** %256, i64 1
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 2
  store i32 %253, i32* %259, align 4
  store i32 0, i32* %4, align 4
  br label %260

260:                                              ; preds = %278, %181
  %261 = load i32, i32* %4, align 4
  %262 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %263 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %262, i32 0, i32 16
  %264 = load i32*, i32** %263, align 8
  %265 = call i32 @ARRAY_SIZE(i32* %264)
  %266 = icmp slt i32 %261, %265
  br i1 %266, label %267, label %281

267:                                              ; preds = %260
  %268 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %269 = load i32, i32* %4, align 4
  %270 = call i32 @VT1211_REG_PWM_AUTO_TEMP(i32 %269)
  %271 = call i32 @vt1211_read8(%struct.vt1211_data* %268, i32 %270)
  %272 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %273 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %272, i32 0, i32 16
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %4, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  store i32 %271, i32* %277, align 4
  br label %278

278:                                              ; preds = %267
  %279 = load i32, i32* %4, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %4, align 4
  br label %260

281:                                              ; preds = %260
  %282 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %283 = load i32, i32* @VT1211_REG_ALARM2, align 4
  %284 = call i32 @vt1211_read8(%struct.vt1211_data* %282, i32 %283)
  %285 = shl i32 %284, 8
  %286 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %287 = load i32, i32* @VT1211_REG_ALARM1, align 4
  %288 = call i32 @vt1211_read8(%struct.vt1211_data* %286, i32 %287)
  %289 = or i32 %285, %288
  %290 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %291 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %290, i32 0, i32 17
  store i32 %289, i32* %291, align 8
  %292 = load i64, i64* @jiffies, align 8
  %293 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %294 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %293, i32 0, i32 19
  store i64 %292, i64* %294, align 8
  %295 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %296 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %295, i32 0, i32 0
  store i32 1, i32* %296, align 8
  br label %297

297:                                              ; preds = %281, %19
  %298 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  %299 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %298, i32 0, i32 18
  %300 = call i32 @mutex_unlock(i32* %299)
  %301 = load %struct.vt1211_data*, %struct.vt1211_data** %3, align 8
  ret %struct.vt1211_data* %301
}

declare dso_local %struct.vt1211_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @vt1211_read8(%struct.vt1211_data*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @ISVOLT(i32, i32) #1

declare dso_local i32 @VT1211_REG_IN(i32) #1

declare dso_local i32 @VT1211_REG_IN_MIN(i32) #1

declare dso_local i32 @VT1211_REG_IN_MAX(i32) #1

declare dso_local i64 @ISTEMP(i32, i32) #1

declare dso_local i32 @VT1211_REG_FAN(i32) #1

declare dso_local i32 @VT1211_REG_FAN_MIN(i32) #1

declare dso_local i32 @VT1211_REG_PWM(i32) #1

declare dso_local i32 @VT1211_REG_PWM_AUTO_PWM(i32, i32) #1

declare dso_local i32 @VT1211_REG_PWM_AUTO_TEMP(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
