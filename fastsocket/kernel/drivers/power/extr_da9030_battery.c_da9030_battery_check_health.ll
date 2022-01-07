; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_da9030_battery.c_da9030_battery_check_health.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_da9030_battery.c_da9030_battery_check_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9030_charger = type { i32 }
%union.power_supply_propval = type { i32 }

@DA9030_FAULT_LOG_OVER_TEMP = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@DA9030_FAULT_LOG_VBAT_OVER = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9030_charger*, %union.power_supply_propval*)* @da9030_battery_check_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9030_battery_check_health(%struct.da9030_charger* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca %struct.da9030_charger*, align 8
  %4 = alloca %union.power_supply_propval*, align 8
  store %struct.da9030_charger* %0, %struct.da9030_charger** %3, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %4, align 8
  %5 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %6 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DA9030_FAULT_LOG_OVER_TEMP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %13 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %14 = bitcast %union.power_supply_propval* %13 to i32*
  store i32 %12, i32* %14, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %17 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DA9030_FAULT_LOG_VBAT_OVER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %15
  %27 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %29 = bitcast %union.power_supply_propval* %28 to i32*
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
