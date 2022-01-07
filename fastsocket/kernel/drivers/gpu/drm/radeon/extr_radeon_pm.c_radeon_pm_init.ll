; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_pm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_pm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, %struct.TYPE_4__, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@PM_METHOD_PROFILE = common dso_local global i32 0, align 4
@PM_PROFILE_DEFAULT = common dso_local global i32 0, align 4
@DYNPM_STATE_DISABLED = common dso_local global i32 0, align 4
@DYNPM_ACTION_NONE = common dso_local global i32 0, align 4
@THERMAL_TYPE_NONE = common dso_local global i32 0, align 4
@CHIP_BARTS = common dso_local global i64 0, align 8
@CHIP_CAYMAN = common dso_local global i64 0, align 8
@SET_VOLTAGE_TYPE_ASIC_VDDC = common dso_local global i32 0, align 4
@SET_VOLTAGE_TYPE_ASIC_VDDCI = common dso_local global i32 0, align 4
@radeon_dynpm_idle_work_handler = common dso_local global i32 0, align 4
@dev_attr_power_profile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to create device file for power profile\0A\00", align 1
@dev_attr_power_method = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to create device file for power method\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to register debugfs file for PM!\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"radeon: power management initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_pm_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load i32, i32* @PM_METHOD_PROFILE, align 4
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 14
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @PM_PROFILE_DEFAULT, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 13
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @DYNPM_STATE_DISABLED, align 4
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 12
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @DYNPM_ACTION_NONE, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 11
  store i32 %17, i32* %20, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  store i64 %30, i64* %33, align 8
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  store i64 %37, i64* %40, align 8
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 10
  store i64 %44, i64* %47, align 8
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 9
  store i64 %51, i64* %54, align 8
  %55 = load i32, i32* @THERMAL_TYPE_NONE, align 4
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 8
  store i32 %55, i32* %58, align 8
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %151

63:                                               ; preds = %1
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = call i32 @radeon_atombios_get_power_modes(%struct.radeon_device* %69)
  br label %74

71:                                               ; preds = %63
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = call i32 @radeon_combios_get_power_modes(%struct.radeon_device* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = call i32 @radeon_pm_print_states(%struct.radeon_device* %75)
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = call i32 @radeon_pm_init_profile(%struct.radeon_device* %77)
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CHIP_BARTS, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %150

84:                                               ; preds = %74
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CHIP_CAYMAN, align 8
  %89 = icmp sle i64 %87, %88
  br i1 %89, label %90, label %150

90:                                               ; preds = %84
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %150

95:                                               ; preds = %90
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %108 = call i32 @radeon_atom_set_voltage(%struct.radeon_device* %102, i64 %106, i32 %107)
  br label %109

109:                                              ; preds = %101, %95
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDCI, align 4
  %122 = call i32 @radeon_atom_set_voltage(%struct.radeon_device* %116, i64 %120, i32 %121)
  br label %123

123:                                              ; preds = %115, %109
  %124 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @radeon_set_engine_clock(%struct.radeon_device* %130, i64 %134)
  br label %136

136:                                              ; preds = %129, %123
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %136
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @radeon_set_memory_clock(%struct.radeon_device* %143, i64 %147)
  br label %149

149:                                              ; preds = %142, %136
  br label %150

150:                                              ; preds = %149, %90, %84, %74
  br label %151

151:                                              ; preds = %150, %1
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = call i32 @radeon_hwmon_init(%struct.radeon_device* %152)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i32, i32* %4, align 4
  store i32 %157, i32* %2, align 4
  br label %196

158:                                              ; preds = %151
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  %162 = load i32, i32* @radeon_dynpm_idle_work_handler, align 4
  %163 = call i32 @INIT_DELAYED_WORK(i32* %161, i32 %162)
  %164 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp sgt i32 %167, 1
  br i1 %168, label %169, label %195

169:                                              ; preds = %158
  %170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @device_create_file(i32 %172, i32* @dev_attr_power_profile)
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* %4, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %169
  %179 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %180 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @device_create_file(i32 %181, i32* @dev_attr_power_method)
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* %4, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %178
  %188 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %189 = call i64 @radeon_debugfs_pm_init(%struct.radeon_device* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %187
  %194 = call i32 @DRM_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %158
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %195, %156
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @radeon_atombios_get_power_modes(%struct.radeon_device*) #1

declare dso_local i32 @radeon_combios_get_power_modes(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_print_states(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_init_profile(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_set_voltage(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @radeon_set_engine_clock(%struct.radeon_device*, i64) #1

declare dso_local i32 @radeon_set_memory_clock(%struct.radeon_device*, i64) #1

declare dso_local i32 @radeon_hwmon_init(%struct.radeon_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @radeon_debugfs_pm_init(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
