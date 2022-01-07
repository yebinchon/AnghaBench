; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_da9030_battery.c_da9030_battery_check_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_da9030_battery.c_da9030_battery_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9030_charger = type { i64, i64 }
%union.power_supply_propval = type { i32 }

@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9030_charger*, %union.power_supply_propval*)* @da9030_battery_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9030_battery_check_status(%struct.da9030_charger* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca %struct.da9030_charger*, align 8
  %4 = alloca %union.power_supply_propval*, align 8
  store %struct.da9030_charger* %0, %struct.da9030_charger** %3, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %4, align 8
  %5 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %6 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %11 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %16 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %17 = bitcast %union.power_supply_propval* %16 to i32*
  store i32 %15, i32* %17, align 4
  br label %22

18:                                               ; preds = %9
  %19 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i32*
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %14
  br label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
