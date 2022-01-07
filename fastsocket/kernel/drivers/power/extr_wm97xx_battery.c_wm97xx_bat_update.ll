; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm97xx_battery.c_wm97xx_bat_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm97xx_battery.c_wm97xx_bat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wm97xx_pdata* }
%struct.wm97xx_pdata = type { %struct.wm97xx_batt_pdata* }
%struct.wm97xx_batt_pdata = type { i64 }

@bat_status = common dso_local global i32 0, align 4
@work_lock = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: %i -> %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.power_supply*)* @wm97xx_bat_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm97xx_bat_update(%struct.power_supply* %0) #0 {
  %2 = alloca %struct.power_supply*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm97xx_pdata*, align 8
  %5 = alloca %struct.wm97xx_batt_pdata*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %2, align 8
  %6 = load i32, i32* @bat_status, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %8 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.wm97xx_pdata*, %struct.wm97xx_pdata** %12, align 8
  store %struct.wm97xx_pdata* %13, %struct.wm97xx_pdata** %4, align 8
  %14 = load %struct.wm97xx_pdata*, %struct.wm97xx_pdata** %4, align 8
  %15 = getelementptr inbounds %struct.wm97xx_pdata, %struct.wm97xx_pdata* %14, i32 0, i32 0
  %16 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %15, align 8
  store %struct.wm97xx_batt_pdata* %16, %struct.wm97xx_batt_pdata** %5, align 8
  %17 = call i32 @mutex_lock(i32* @work_lock)
  %18 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %5, align 8
  %19 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %5, align 8
  %24 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @gpio_get_value(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* @bat_status, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @bat_status, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %43 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @bat_status, align 4
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46)
  %48 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %49 = call i32 @power_supply_changed(%struct.power_supply* %48)
  br label %50

50:                                               ; preds = %41, %36
  %51 = call i32 @mutex_unlock(i32* @work_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @gpio_get_value(i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @power_supply_changed(%struct.power_supply*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
