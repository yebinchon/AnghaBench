; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2760_battery.c_ds2760_battery_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2760_battery.c_ds2760_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ds2760_device_info = type { i8*, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@ds2760_battery_props = common dso_local global i32 0, align 4
@ds2760_battery_get_property = common dso_local global i32 0, align 4
@ds2760_battery_set_charged = common dso_local global i32 0, align 4
@ds2760_battery_external_power_changed = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@DS2760_STATUS_REG = common dso_local global i64 0, align 8
@pmod_enabled = common dso_local global i64 0, align 8
@DS2760_STATUS_PMOD = common dso_local global i8 0, align 1
@rated_capacity = common dso_local global i64 0, align 8
@current_accum = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed to register battery\0A\00", align 1
@ds2760_battery_work = common dso_local global i32 0, align 4
@ds2760_battery_set_charged_work = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ds2760_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2760_battery_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds2760_device_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ds2760_device_info* @kzalloc(i32 64, i32 %6)
  store %struct.ds2760_device_info* %7, %struct.ds2760_device_info** %5, align 8
  %8 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %9 = icmp ne %struct.ds2760_device_info* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %154

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %16 = call i32 @platform_set_drvdata(%struct.platform_device* %14, %struct.ds2760_device_info* %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %20 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %19, i32 0, i32 5
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %26 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_name(%struct.TYPE_7__* %28)
  %30 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %31 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 6
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %34 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %35 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 5
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @ds2760_battery_props, align 4
  %38 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %39 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @ds2760_battery_props, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %44 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @ds2760_battery_get_property, align 4
  %47 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %48 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @ds2760_battery_set_charged, align 4
  %51 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %52 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @ds2760_battery_external_power_changed, align 4
  %55 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %56 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %59 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %60 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %62 = call i32 @ds2760_battery_read_status(%struct.ds2760_device_info* %61)
  %63 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %64 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* @DS2760_STATUS_REG, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %3, align 1
  %69 = load i64, i64* @pmod_enabled, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %13
  %72 = load i8, i8* @DS2760_STATUS_PMOD, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8, i8* %3, align 1
  %75 = sext i8 %74 to i32
  %76 = or i32 %75, %73
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %3, align 1
  br label %86

78:                                               ; preds = %13
  %79 = load i8, i8* @DS2760_STATUS_PMOD, align 1
  %80 = sext i8 %79 to i32
  %81 = xor i32 %80, -1
  %82 = load i8, i8* %3, align 1
  %83 = sext i8 %82 to i32
  %84 = and i32 %83, %81
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %3, align 1
  br label %86

86:                                               ; preds = %78, %71
  %87 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %88 = load i8, i8* %3, align 1
  %89 = call i32 @ds2760_battery_write_status(%struct.ds2760_device_info* %87, i8 signext %88)
  %90 = load i64, i64* @rated_capacity, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %94 = load i64, i64* @rated_capacity, align 8
  %95 = call i32 @ds2760_battery_write_rated_capacity(%struct.ds2760_device_info* %93, i64 %94)
  br label %96

96:                                               ; preds = %92, %86
  %97 = load i64, i64* @current_accum, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %101 = load i64, i64* @current_accum, align 8
  %102 = call i32 @ds2760_battery_set_current_accum(%struct.ds2760_device_info* %100, i64 %101)
  br label %103

103:                                              ; preds = %99, %96
  %104 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %107 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %106, i32 0, i32 1
  %108 = call i32 @power_supply_register(%struct.TYPE_7__* %105, %struct.TYPE_6__* %107)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %113 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %112, i32 0, i32 5
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = call i32 @dev_err(%struct.TYPE_7__* %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %151

116:                                              ; preds = %103
  %117 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %118 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %117, i32 0, i32 2
  %119 = load i32, i32* @ds2760_battery_work, align 4
  %120 = call i32 @INIT_DELAYED_WORK(i32* %118, i32 %119)
  %121 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %122 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %121, i32 0, i32 4
  %123 = load i32, i32* @ds2760_battery_set_charged_work, align 4
  %124 = call i32 @INIT_DELAYED_WORK(i32* %122, i32 %123)
  %125 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @dev_name(%struct.TYPE_7__* %126)
  %128 = call i32 @create_singlethread_workqueue(i32 %127)
  %129 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %130 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %132 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %116
  %136 = load i32, i32* @ESRCH, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %147

138:                                              ; preds = %116
  %139 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %140 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %143 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %142, i32 0, i32 2
  %144 = load i32, i32* @HZ, align 4
  %145 = mul nsw i32 %144, 1
  %146 = call i32 @queue_delayed_work(i32 %141, i32* %143, i32 %145)
  br label %155

147:                                              ; preds = %135
  %148 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %149 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %148, i32 0, i32 1
  %150 = call i32 @power_supply_unregister(%struct.TYPE_6__* %149)
  br label %151

151:                                              ; preds = %147, %111
  %152 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %5, align 8
  %153 = call i32 @kfree(%struct.ds2760_device_info* %152)
  br label %154

154:                                              ; preds = %151, %10
  br label %155

155:                                              ; preds = %154, %138
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.ds2760_device_info* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ds2760_device_info*) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ds2760_battery_read_status(%struct.ds2760_device_info*) #1

declare dso_local i32 @ds2760_battery_write_status(%struct.ds2760_device_info*, i8 signext) #1

declare dso_local i32 @ds2760_battery_write_rated_capacity(%struct.ds2760_device_info*, i64) #1

declare dso_local i32 @ds2760_battery_set_current_accum(%struct.ds2760_device_info*, i64) #1

declare dso_local i32 @power_supply_register(%struct.TYPE_7__*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @power_supply_unregister(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.ds2760_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
