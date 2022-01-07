; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pmu_battery.c_pmu_bat_get_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pmu_battery.c_pmu_bat_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.pmu_battery_dev = type { %struct.pmu_battery_info* }
%struct.pmu_battery_info = type { i32, i32, i32, i32, i32, i32 }

@PMU_BATT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@PMU_BATT_PRESENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @pmu_bat_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_bat_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.pmu_battery_dev*, align 8
  %9 = alloca %struct.pmu_battery_info*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.pmu_battery_dev* @to_pmu_battery_dev(%struct.power_supply* %10)
  store %struct.pmu_battery_dev* %11, %struct.pmu_battery_dev** %8, align 8
  %12 = load %struct.pmu_battery_dev*, %struct.pmu_battery_dev** %8, align 8
  %13 = getelementptr inbounds %struct.pmu_battery_dev, %struct.pmu_battery_dev* %12, i32 0, i32 0
  %14 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %13, align 8
  store %struct.pmu_battery_info* %14, %struct.pmu_battery_info** %9, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %83 [
    i32 130, label %16
    i32 131, label %32
    i32 132, label %44
    i32 134, label %49
    i32 133, label %56
    i32 135, label %63
    i32 128, label %70
    i32 129, label %77
  ]

16:                                               ; preds = %3
  %17 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %18 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PMU_BATT_CHARGING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  store i32 %24, i32* %26, align 4
  br label %31

27:                                               ; preds = %16
  %28 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i32*
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %23
  br label %86

32:                                               ; preds = %3
  %33 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %34 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PMU_BATT_PRESENT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %43 = bitcast %union.power_supply_propval* %42 to i32*
  store i32 %41, i32* %43, align 4
  br label %86

44:                                               ; preds = %3
  %45 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %46 = call i32 @pmu_bat_get_model_name(%struct.pmu_battery_info* %45)
  %47 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %48 = bitcast %union.power_supply_propval* %47 to i32*
  store i32 %46, i32* %48, align 4
  br label %86

49:                                               ; preds = %3
  %50 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %51 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 1000
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %55 = bitcast %union.power_supply_propval* %54 to i32*
  store i32 %53, i32* %55, align 4
  br label %86

56:                                               ; preds = %3
  %57 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %58 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 1000
  %61 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %62 = bitcast %union.power_supply_propval* %61 to i32*
  store i32 %60, i32* %62, align 4
  br label %86

63:                                               ; preds = %3
  %64 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %65 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 1000
  %68 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %69 = bitcast %union.power_supply_propval* %68 to i32*
  store i32 %67, i32* %69, align 4
  br label %86

70:                                               ; preds = %3
  %71 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %72 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 1000
  %75 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %76 = bitcast %union.power_supply_propval* %75 to i32*
  store i32 %74, i32* %76, align 4
  br label %86

77:                                               ; preds = %3
  %78 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %79 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %82 = bitcast %union.power_supply_propval* %81 to i32*
  store i32 %80, i32* %82, align 4
  br label %86

83:                                               ; preds = %3
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %87

86:                                               ; preds = %77, %70, %63, %56, %49, %44, %32, %31
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.pmu_battery_dev* @to_pmu_battery_dev(%struct.power_supply*) #1

declare dso_local i32 @pmu_bat_get_model_name(%struct.pmu_battery_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
