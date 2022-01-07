; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm8350_power.c_wm8350_bat_get_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm8350_power.c_wm8350_bat_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.wm8350 = type { i32 }

@WM8350_BATT_SUPPLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @wm8350_bat_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_bat_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.wm8350*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.wm8350* @dev_get_drvdata(i32 %13)
  store %struct.wm8350* %14, %struct.wm8350** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %47 [
    i32 129, label %16
    i32 130, label %21
    i32 128, label %32
    i32 131, label %37
    i32 132, label %42
  ]

16:                                               ; preds = %3
  %17 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %18 = call i32 @wm8350_batt_status(%struct.wm8350* %17)
  %19 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %20 = bitcast %union.power_supply_propval* %19 to i32*
  store i32 %18, i32* %20, align 4
  br label %50

21:                                               ; preds = %3
  %22 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %23 = call i32 @wm8350_get_supplies(%struct.wm8350* %22)
  %24 = load i32, i32* @WM8350_BATT_SUPPLY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %31 = bitcast %union.power_supply_propval* %30 to i32*
  store i32 %29, i32* %31, align 4
  br label %50

32:                                               ; preds = %3
  %33 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %34 = call i32 @wm8350_read_battery_uvolts(%struct.wm8350* %33)
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %50

37:                                               ; preds = %3
  %38 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %39 = call i32 @wm8350_bat_check_health(%struct.wm8350* %38)
  %40 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %41 = bitcast %union.power_supply_propval* %40 to i32*
  store i32 %39, i32* %41, align 4
  br label %50

42:                                               ; preds = %3
  %43 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %44 = call i32 @wm8350_bat_get_charge_type(%struct.wm8350* %43)
  %45 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %46 = bitcast %union.power_supply_propval* %45 to i32*
  store i32 %44, i32* %46, align 4
  br label %50

47:                                               ; preds = %3
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %42, %37, %32, %21, %16
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local %struct.wm8350* @dev_get_drvdata(i32) #1

declare dso_local i32 @wm8350_batt_status(%struct.wm8350*) #1

declare dso_local i32 @wm8350_get_supplies(%struct.wm8350*) #1

declare dso_local i32 @wm8350_read_battery_uvolts(%struct.wm8350*) #1

declare dso_local i32 @wm8350_bat_check_health(%struct.wm8350*) #1

declare dso_local i32 @wm8350_bat_get_charge_type(%struct.wm8350*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
