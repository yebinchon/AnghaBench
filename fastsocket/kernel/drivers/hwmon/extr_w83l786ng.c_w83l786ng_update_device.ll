; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l786ng.c_w83l786ng_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l786ng.c_w83l786ng_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83l786ng_data = type { i32, i32*, i32*, i32*, i32*, i32, i64, i8***, i8**, i8**, i8**, i8**, i8**, i8** }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Updating w83l786ng data.\0A\00", align 1
@W83L786NG_REG_FAN_DIV = common dso_local global i32 0, align 4
@W83L786NG_REG_FAN_CFG = common dso_local global i32 0, align 4
@W83L786NG_PWM_MODE_SHIFT = common dso_local global i32* null, align 8
@W83L786NG_PWM_ENABLE_SHIFT = common dso_local global i32* null, align 8
@W83L786NG_REG_PWM = common dso_local global i32* null, align 8
@W83L786NG_REG_TEMP = common dso_local global i32** null, align 8
@W83L786NG_REG_TOLERANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.w83l786ng_data* (%struct.device*)* @w83l786ng_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.w83l786ng_data* @w83l786ng_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.w83l786ng_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.i2c_client* @to_i2c_client(%struct.device* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = call %struct.w83l786ng_data* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.w83l786ng_data* %12, %struct.w83l786ng_data** %4, align 8
  %13 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %14 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %13, i32 0, i32 5
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i64, i64* @jiffies, align 8
  %17 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %18 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @HZ, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load i32, i32* @HZ, align 4
  %24 = sdiv i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i64 @time_after(i64 %16, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %31 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %237, label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %72, %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %75

41:                                               ; preds = %38
  %42 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @W83L786NG_REG_IN(i32 %43)
  %45 = call i8* @w83l786ng_read_value(%struct.i2c_client* %42, i32 %44)
  %46 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %47 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %46, i32 0, i32 13
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %45, i8** %51, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @W83L786NG_REG_IN_MIN(i32 %53)
  %55 = call i8* @w83l786ng_read_value(%struct.i2c_client* %52, i32 %54)
  %56 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %57 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %56, i32 0, i32 12
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  store i8* %55, i8** %61, align 8
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @W83L786NG_REG_IN_MAX(i32 %63)
  %65 = call i8* @w83l786ng_read_value(%struct.i2c_client* %62, i32 %64)
  %66 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %67 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %66, i32 0, i32 11
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  store i8* %65, i8** %71, align 8
  br label %72

72:                                               ; preds = %41
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %38

75:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %100, %75
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 2
  br i1 %78, label %79, label %103

79:                                               ; preds = %76
  %80 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @W83L786NG_REG_FAN(i32 %81)
  %83 = call i8* @w83l786ng_read_value(%struct.i2c_client* %80, i32 %82)
  %84 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %85 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %84, i32 0, i32 10
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* %83, i8** %89, align 8
  %90 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @W83L786NG_REG_FAN_MIN(i32 %91)
  %93 = call i8* @w83l786ng_read_value(%struct.i2c_client* %90, i32 %92)
  %94 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %95 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %94, i32 0, i32 9
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  store i8* %93, i8** %99, align 8
  br label %100

100:                                              ; preds = %79
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %76

103:                                              ; preds = %76
  %104 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %105 = load i32, i32* @W83L786NG_REG_FAN_DIV, align 4
  %106 = call i8* @w83l786ng_read_value(%struct.i2c_client* %104, i32 %105)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, 7
  %110 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %111 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %109, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  %115 = ashr i32 %114, 4
  %116 = and i32 %115, 7
  %117 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %118 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 %116, i32* %120, align 4
  %121 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %122 = load i32, i32* @W83L786NG_REG_FAN_CFG, align 4
  %123 = call i8* @w83l786ng_read_value(%struct.i2c_client* %121, i32 %122)
  %124 = ptrtoint i8* %123 to i32
  store i32 %124, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %174, %103
  %126 = load i32, i32* %5, align 4
  %127 = icmp slt i32 %126, 2
  br i1 %127, label %128, label %177

128:                                              ; preds = %125
  %129 = load i32, i32* %8, align 4
  %130 = load i32*, i32** @W83L786NG_PWM_MODE_SHIFT, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %129, %134
  %136 = and i32 %135, 1
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 0, i32 1
  %140 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %141 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %139, i32* %145, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32*, i32** @W83L786NG_PWM_ENABLE_SHIFT, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = ashr i32 %146, %151
  %153 = and i32 %152, 2
  %154 = add nsw i32 %153, 1
  %155 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %156 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %154, i32* %160, align 4
  %161 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %162 = load i32*, i32** @W83L786NG_REG_PWM, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @w83l786ng_read_value(%struct.i2c_client* %161, i32 %166)
  %168 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %169 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %168, i32 0, i32 8
  %170 = load i8**, i8*** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  store i8* %167, i8** %173, align 8
  br label %174

174:                                              ; preds = %128
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %125

177:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %211, %177
  %179 = load i32, i32* %5, align 4
  %180 = icmp slt i32 %179, 2
  br i1 %180, label %181, label %214

181:                                              ; preds = %178
  store i32 0, i32* %6, align 4
  br label %182

182:                                              ; preds = %207, %181
  %183 = load i32, i32* %6, align 4
  %184 = icmp slt i32 %183, 3
  br i1 %184, label %185, label %210

185:                                              ; preds = %182
  %186 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %187 = load i32**, i32*** @W83L786NG_REG_TEMP, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i8* @w83l786ng_read_value(%struct.i2c_client* %186, i32 %195)
  %197 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %198 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %197, i32 0, i32 7
  %199 = load i8***, i8**** %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8**, i8*** %199, i64 %201
  %203 = load i8**, i8*** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  store i8* %196, i8** %206, align 8
  br label %207

207:                                              ; preds = %185
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %6, align 4
  br label %182

210:                                              ; preds = %182
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %178

214:                                              ; preds = %178
  %215 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %216 = load i32, i32* @W83L786NG_REG_TOLERANCE, align 4
  %217 = call i8* @w83l786ng_read_value(%struct.i2c_client* %215, i32 %216)
  %218 = ptrtoint i8* %217 to i32
  store i32 %218, i32* %7, align 4
  %219 = load i32, i32* %7, align 4
  %220 = and i32 %219, 15
  %221 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %222 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %221, i32 0, i32 4
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  store i32 %220, i32* %224, align 4
  %225 = load i32, i32* %7, align 4
  %226 = ashr i32 %225, 4
  %227 = and i32 %226, 15
  %228 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %229 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %228, i32 0, i32 4
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  store i32 %227, i32* %231, align 4
  %232 = load i64, i64* @jiffies, align 8
  %233 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %234 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %233, i32 0, i32 6
  store i64 %232, i64* %234, align 8
  %235 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %236 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %235, i32 0, i32 0
  store i32 1, i32* %236, align 8
  br label %237

237:                                              ; preds = %214, %29
  %238 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  %239 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %238, i32 0, i32 5
  %240 = call i32 @mutex_unlock(i32* %239)
  %241 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %4, align 8
  ret %struct.w83l786ng_data* %241
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83l786ng_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i8* @w83l786ng_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @W83L786NG_REG_IN(i32) #1

declare dso_local i32 @W83L786NG_REG_IN_MIN(i32) #1

declare dso_local i32 @W83L786NG_REG_IN_MAX(i32) #1

declare dso_local i32 @W83L786NG_REG_FAN(i32) #1

declare dso_local i32 @W83L786NG_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
