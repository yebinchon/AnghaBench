; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_store_pwm_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_store_pwm_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i64 }
%struct.abituguru_data = type { i8***, i32 }

@abituguru_pwm_settings_multiplier = common dso_local global i32* null, align 8
@abituguru_pwm_min = common dso_local global i8** null, align 8
@abituguru_pwm_max = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i64 0, align 8
@ABIT_UGURU_FAN_PWM = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_setting(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.abituguru_data*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute_2* %17, %struct.sensor_device_attribute_2** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.abituguru_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.abituguru_data* %19, %struct.abituguru_data** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @simple_strtoul(i8* %20, i32* null, i32 10)
  %22 = load i32*, i32** @abituguru_pwm_settings_multiplier, align 8
  %23 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  %29 = add nsw i32 %21, %28
  %30 = load i32*, i32** @abituguru_pwm_settings_multiplier, align 8
  %31 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %32 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %29, %35
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %13, align 8
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %14, align 8
  %40 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %41 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %4
  %45 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %46 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 1
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %51 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %44
  store i8* inttoptr (i64 77 to i8*), i8** %12, align 8
  br label %62

55:                                               ; preds = %49, %4
  %56 = load i8**, i8*** @abituguru_pwm_min, align 8
  %57 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %58 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %12, align 8
  br label %62

62:                                               ; preds = %55, %54
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ult i8* %63, %64
  br i1 %65, label %75, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %13, align 8
  %68 = load i8**, i8*** @abituguru_pwm_max, align 8
  %69 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %70 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ugt i8* %67, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %66, %62
  %76 = load i64, i64* @EINVAL, align 8
  %77 = sub i64 0, %76
  store i64 %77, i64* %5, align 8
  br label %219

78:                                               ; preds = %66
  %79 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %80 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %79, i32 0, i32 1
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %83 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = and i64 %84, 1
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %78
  %88 = load i8*, i8** %13, align 8
  %89 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %90 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %89, i32 0, i32 0
  %91 = load i8***, i8**** %90, align 8
  %92 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %93 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i8**, i8*** %91, i64 %94
  %96 = load i8**, i8*** %95, align 8
  %97 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %98 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 1
  %101 = getelementptr inbounds i8*, i8** %96, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = icmp uge i8* %88, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %87
  %105 = load i64, i64* @EINVAL, align 8
  %106 = sub i64 0, %105
  store i64 %106, i64* %14, align 8
  br label %214

107:                                              ; preds = %87, %78
  %108 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %109 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = and i64 %110, 1
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %133, label %113

113:                                              ; preds = %107
  %114 = load i8*, i8** %13, align 8
  %115 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %116 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %115, i32 0, i32 0
  %117 = load i8***, i8**** %116, align 8
  %118 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %119 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i8**, i8*** %117, i64 %120
  %122 = load i8**, i8*** %121, align 8
  %123 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %124 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = sub i64 %125, 1
  %127 = getelementptr inbounds i8*, i8** %122, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ule i8* %114, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %113
  %131 = load i64, i64* @EINVAL, align 8
  %132 = sub i64 0, %131
  store i64 %132, i64* %14, align 8
  br label %213

133:                                              ; preds = %113, %107
  %134 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %135 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %134, i32 0, i32 0
  %136 = load i8***, i8**** %135, align 8
  %137 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %138 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i8**, i8*** %136, i64 %139
  %141 = load i8**, i8*** %140, align 8
  %142 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %143 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i8*, i8** %141, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = icmp ne i8* %146, %147
  br i1 %148, label %149, label %212

149:                                              ; preds = %133
  %150 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %151 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %150, i32 0, i32 0
  %152 = load i8***, i8**** %151, align 8
  %153 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %154 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i8**, i8*** %152, i64 %155
  %157 = load i8**, i8*** %156, align 8
  %158 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %159 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds i8*, i8** %157, i64 %160
  %162 = load i8*, i8** %161, align 8
  store i8* %162, i8** %15, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %165 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %164, i32 0, i32 0
  %166 = load i8***, i8**** %165, align 8
  %167 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %168 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i8**, i8*** %166, i64 %169
  %171 = load i8**, i8*** %170, align 8
  %172 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %173 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i8*, i8** %171, i64 %174
  store i8* %163, i8** %175, align 8
  %176 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %177 = load i64, i64* @ABIT_UGURU_FAN_PWM, align 8
  %178 = add nsw i64 %177, 1
  %179 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %180 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %183 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %182, i32 0, i32 0
  %184 = load i8***, i8**** %183, align 8
  %185 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %186 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds i8**, i8*** %184, i64 %187
  %189 = load i8**, i8*** %188, align 8
  %190 = call i64 @abituguru_write(%struct.abituguru_data* %176, i64 %178, i64 %181, i8** %189, i32 5)
  %191 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %192 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ule i64 %190, %193
  br i1 %194, label %195, label %211

195:                                              ; preds = %149
  %196 = load i8*, i8** %15, align 8
  %197 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %198 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %197, i32 0, i32 0
  %199 = load i8***, i8**** %198, align 8
  %200 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %201 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds i8**, i8*** %199, i64 %202
  %204 = load i8**, i8*** %203, align 8
  %205 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %206 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds i8*, i8** %204, i64 %207
  store i8* %196, i8** %208, align 8
  %209 = load i64, i64* @EIO, align 8
  %210 = sub i64 0, %209
  store i64 %210, i64* %14, align 8
  br label %211

211:                                              ; preds = %195, %149
  br label %212

212:                                              ; preds = %211, %133
  br label %213

213:                                              ; preds = %212, %130
  br label %214

214:                                              ; preds = %213, %104
  %215 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %216 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %215, i32 0, i32 1
  %217 = call i32 @mutex_unlock(i32* %216)
  %218 = load i64, i64* %14, align 8
  store i64 %218, i64* %5, align 8
  br label %219

219:                                              ; preds = %214, %75
  %220 = load i64, i64* %5, align 8
  ret i64 %220
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.abituguru_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @abituguru_write(%struct.abituguru_data*, i64, i64, i8**, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
