; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_w83627ehf_device_remove_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_w83627ehf_device_remove_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.device = type { i32 }
%struct.w83627ehf_data = type { i32, i32, i64, i64 }

@sda_sf3_arrays = common dso_local global %struct.TYPE_40__* null, align 8
@sda_sf3_arrays_fan4 = common dso_local global %struct.TYPE_40__* null, align 8
@sda_in_input = common dso_local global %struct.TYPE_27__* null, align 8
@sda_in_alarm = common dso_local global %struct.TYPE_28__* null, align 8
@sda_in_min = common dso_local global %struct.TYPE_25__* null, align 8
@sda_in_max = common dso_local global %struct.TYPE_26__* null, align 8
@sda_fan_input = common dso_local global %struct.TYPE_30__* null, align 8
@sda_fan_alarm = common dso_local global %struct.TYPE_33__* null, align 8
@sda_fan_div = common dso_local global %struct.TYPE_31__* null, align 8
@sda_fan_min = common dso_local global %struct.TYPE_29__* null, align 8
@sda_pwm = common dso_local global %struct.TYPE_24__* null, align 8
@sda_pwm_mode = common dso_local global %struct.TYPE_22__* null, align 8
@sda_pwm_enable = common dso_local global %struct.TYPE_23__* null, align 8
@sda_target_temp = common dso_local global %struct.TYPE_39__* null, align 8
@sda_tolerance = common dso_local global %struct.TYPE_32__* null, align 8
@sda_temp_input = common dso_local global %struct.TYPE_37__* null, align 8
@sda_temp_max = common dso_local global %struct.TYPE_36__* null, align 8
@sda_temp_max_hyst = common dso_local global %struct.TYPE_35__* null, align 8
@sda_temp_alarm = common dso_local global %struct.TYPE_38__* null, align 8
@sda_temp_type = common dso_local global %struct.TYPE_34__* null, align 8
@dev_attr_name = common dso_local global i32 0, align 4
@dev_attr_cpu0_vid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @w83627ehf_device_remove_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83627ehf_device_remove_files(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.w83627ehf_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.w83627ehf_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.w83627ehf_data* %6, %struct.w83627ehf_data** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.TYPE_40__*, %struct.TYPE_40__** @sda_sf3_arrays, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_40__* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = load %struct.TYPE_40__*, %struct.TYPE_40__** @sda_sf3_arrays, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 0
  %19 = call i32 @device_remove_file(%struct.device* %13, i32* %18)
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %7

23:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.TYPE_40__*, %struct.TYPE_40__** @sda_sf3_arrays_fan4, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_40__* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.device*, %struct.device** %2, align 8
  %31 = load %struct.TYPE_40__*, %struct.TYPE_40__** @sda_sf3_arrays_fan4, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %34, i32 0, i32 0
  %36 = call i32 @device_remove_file(%struct.device* %30, i32* %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %24

40:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %85, %40
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %44 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %88

47:                                               ; preds = %41
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %52 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %85

56:                                               ; preds = %50, %47
  %57 = load %struct.device*, %struct.device** %2, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** @sda_in_input, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = call i32 @device_remove_file(%struct.device* %57, i32* %62)
  %64 = load %struct.device*, %struct.device** %2, align 8
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sda_in_alarm, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 0
  %70 = call i32 @device_remove_file(%struct.device* %64, i32* %69)
  %71 = load %struct.device*, %struct.device** %2, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** @sda_in_min, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = call i32 @device_remove_file(%struct.device* %71, i32* %76)
  %78 = load %struct.device*, %struct.device** %2, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sda_in_max, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 0
  %84 = call i32 @device_remove_file(%struct.device* %78, i32* %83)
  br label %85

85:                                               ; preds = %56, %55
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %41

88:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %121, %88
  %90 = load i32, i32* %3, align 4
  %91 = icmp slt i32 %90, 5
  br i1 %91, label %92, label %124

92:                                               ; preds = %89
  %93 = load %struct.device*, %struct.device** %2, align 8
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** @sda_fan_input, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 0
  %99 = call i32 @device_remove_file(%struct.device* %93, i32* %98)
  %100 = load %struct.device*, %struct.device** %2, align 8
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** @sda_fan_alarm, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 0
  %106 = call i32 @device_remove_file(%struct.device* %100, i32* %105)
  %107 = load %struct.device*, %struct.device** %2, align 8
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** @sda_fan_div, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %111, i32 0, i32 0
  %113 = call i32 @device_remove_file(%struct.device* %107, i32* %112)
  %114 = load %struct.device*, %struct.device** %2, align 8
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sda_fan_min, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = call i32 @device_remove_file(%struct.device* %114, i32* %119)
  br label %121

121:                                              ; preds = %92
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %89

124:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %167, %124
  %126 = load i32, i32* %3, align 4
  %127 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %128 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %170

131:                                              ; preds = %125
  %132 = load %struct.device*, %struct.device** %2, align 8
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** @sda_pwm, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 0
  %138 = call i32 @device_remove_file(%struct.device* %132, i32* %137)
  %139 = load %struct.device*, %struct.device** %2, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** @sda_pwm_mode, align 8
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  %145 = call i32 @device_remove_file(%struct.device* %139, i32* %144)
  %146 = load %struct.device*, %struct.device** %2, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sda_pwm_enable, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = call i32 @device_remove_file(%struct.device* %146, i32* %151)
  %153 = load %struct.device*, %struct.device** %2, align 8
  %154 = load %struct.TYPE_39__*, %struct.TYPE_39__** @sda_target_temp, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %157, i32 0, i32 0
  %159 = call i32 @device_remove_file(%struct.device* %153, i32* %158)
  %160 = load %struct.device*, %struct.device** %2, align 8
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sda_tolerance, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 0
  %166 = call i32 @device_remove_file(%struct.device* %160, i32* %165)
  br label %167

167:                                              ; preds = %131
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %3, align 4
  br label %125

170:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %219, %170
  %172 = load i32, i32* %3, align 4
  %173 = icmp slt i32 %172, 3
  br i1 %173, label %174, label %222

174:                                              ; preds = %171
  %175 = load i32, i32* %3, align 4
  %176 = icmp eq i32 %175, 2
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %179 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %219

183:                                              ; preds = %177, %174
  %184 = load %struct.device*, %struct.device** %2, align 8
  %185 = load %struct.TYPE_37__*, %struct.TYPE_37__** @sda_temp_input, align 8
  %186 = load i32, i32* %3, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %188, i32 0, i32 0
  %190 = call i32 @device_remove_file(%struct.device* %184, i32* %189)
  %191 = load %struct.device*, %struct.device** %2, align 8
  %192 = load %struct.TYPE_36__*, %struct.TYPE_36__** @sda_temp_max, align 8
  %193 = load i32, i32* %3, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %195, i32 0, i32 0
  %197 = call i32 @device_remove_file(%struct.device* %191, i32* %196)
  %198 = load %struct.device*, %struct.device** %2, align 8
  %199 = load %struct.TYPE_35__*, %struct.TYPE_35__** @sda_temp_max_hyst, align 8
  %200 = load i32, i32* %3, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %202, i32 0, i32 0
  %204 = call i32 @device_remove_file(%struct.device* %198, i32* %203)
  %205 = load %struct.device*, %struct.device** %2, align 8
  %206 = load %struct.TYPE_38__*, %struct.TYPE_38__** @sda_temp_alarm, align 8
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %209, i32 0, i32 0
  %211 = call i32 @device_remove_file(%struct.device* %205, i32* %210)
  %212 = load %struct.device*, %struct.device** %2, align 8
  %213 = load %struct.TYPE_34__*, %struct.TYPE_34__** @sda_temp_type, align 8
  %214 = load i32, i32* %3, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %216, i32 0, i32 0
  %218 = call i32 @device_remove_file(%struct.device* %212, i32* %217)
  br label %219

219:                                              ; preds = %183, %182
  %220 = load i32, i32* %3, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %3, align 4
  br label %171

222:                                              ; preds = %171
  %223 = load %struct.device*, %struct.device** %2, align 8
  %224 = call i32 @device_remove_file(%struct.device* %223, i32* @dev_attr_name)
  %225 = load %struct.device*, %struct.device** %2, align 8
  %226 = call i32 @device_remove_file(%struct.device* %225, i32* @dev_attr_cpu0_vid)
  ret void
}

declare dso_local %struct.w83627ehf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_40__*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
