; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm831x_power.c_wm831x_usb_get_prop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm831x_power.c_wm831x_usb_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.wm831x_power = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_PWR_USB = common dso_local global i32 0, align 4
@WM831X_AUX_USB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @wm831x_usb_get_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_usb_get_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.wm831x_power*, align 8
  %8 = alloca %struct.wm831x*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %11 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.wm831x_power* @dev_get_drvdata(i32 %14)
  store %struct.wm831x_power* %15, %struct.wm831x_power** %7, align 8
  %16 = load %struct.wm831x_power*, %struct.wm831x_power** %7, align 8
  %17 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %16, i32 0, i32 0
  %18 = load %struct.wm831x*, %struct.wm831x** %17, align 8
  store %struct.wm831x* %18, %struct.wm831x** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %30 [
    i32 129, label %20
    i32 128, label %25
  ]

20:                                               ; preds = %3
  %21 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %22 = load i32, i32* @WM831X_PWR_USB, align 4
  %23 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %24 = call i32 @wm831x_power_check_online(%struct.wm831x* %21, i32 %22, %union.power_supply_propval* %23)
  store i32 %24, i32* %9, align 4
  br label %33

25:                                               ; preds = %3
  %26 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %27 = load i32, i32* @WM831X_AUX_USB, align 4
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %29 = call i32 @wm831x_power_read_voltage(%struct.wm831x* %26, i32 %27, %union.power_supply_propval* %28)
  store i32 %29, i32* %9, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %25, %20
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local %struct.wm831x_power* @dev_get_drvdata(i32) #1

declare dso_local i32 @wm831x_power_check_online(%struct.wm831x*, i32, %union.power_supply_propval*) #1

declare dso_local i32 @wm831x_power_read_voltage(%struct.wm831x*, i32, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
