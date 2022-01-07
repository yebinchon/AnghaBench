; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm831x_power.c_wm831x_backup_get_prop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm831x_power.c_wm831x_backup_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.wm831x_power = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_BACKUP_CHARGER_CONTROL = common dso_local global i32 0, align 4
@WM831X_BKUP_CHG_STS = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@WM831X_AUX_BKUP_BATT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @wm831x_backup_get_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_backup_get_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.wm831x_power*, align 8
  %9 = alloca %struct.wm831x*, align 8
  %10 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %12 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.wm831x_power* @dev_get_drvdata(i32 %15)
  store %struct.wm831x_power* %16, %struct.wm831x_power** %8, align 8
  %17 = load %struct.wm831x_power*, %struct.wm831x_power** %8, align 8
  %18 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %17, i32 0, i32 0
  %19 = load %struct.wm831x*, %struct.wm831x** %18, align 8
  store %struct.wm831x* %19, %struct.wm831x** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.wm831x*, %struct.wm831x** %9, align 8
  %21 = load i32, i32* @WM831X_BACKUP_CHARGER_CONTROL, align 4
  %22 = call i32 @wm831x_reg_read(%struct.wm831x* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %65

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %60 [
    i32 129, label %29
    i32 128, label %43
    i32 130, label %48
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @WM831X_BKUP_CHG_STS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %36 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %37 = bitcast %union.power_supply_propval* %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %40 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %41 = bitcast %union.power_supply_propval* %40 to i32*
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %34
  br label %63

43:                                               ; preds = %27
  %44 = load %struct.wm831x*, %struct.wm831x** %9, align 8
  %45 = load i32, i32* @WM831X_AUX_BKUP_BATT, align 4
  %46 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %47 = call i32 @wm831x_power_read_voltage(%struct.wm831x* %44, i32 %45, %union.power_supply_propval* %46)
  store i32 %47, i32* %10, align 4
  br label %63

48:                                               ; preds = %27
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @WM831X_BKUP_CHG_STS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %55 = bitcast %union.power_supply_propval* %54 to i32*
  store i32 1, i32* %55, align 4
  br label %59

56:                                               ; preds = %48
  %57 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %58 = bitcast %union.power_supply_propval* %57 to i32*
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %63

60:                                               ; preds = %27
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %59, %43, %42
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %25
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.wm831x_power* @dev_get_drvdata(i32) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @wm831x_power_read_voltage(%struct.wm831x*, i32, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
