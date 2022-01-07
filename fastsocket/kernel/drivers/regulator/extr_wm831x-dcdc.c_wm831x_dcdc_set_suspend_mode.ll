; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-dcdc.c_wm831x_dcdc_set_suspend_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-dcdc.c_wm831x_dcdc_set_suspend_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_dcdc = type { i64, %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_DCDC_SLEEP_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @wm831x_dcdc_set_suspend_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_dcdc_set_suspend_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm831x_dcdc*, align 8
  %6 = alloca %struct.wm831x*, align 8
  %7 = alloca i64, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.wm831x_dcdc* %9, %struct.wm831x_dcdc** %5, align 8
  %10 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %11 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %10, i32 0, i32 1
  %12 = load %struct.wm831x*, %struct.wm831x** %11, align 8
  store %struct.wm831x* %12, %struct.wm831x** %6, align 8
  %13 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %14 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WM831X_DCDC_SLEEP_CONTROL, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @wm831x_dcdc_set_mode_int(%struct.wm831x* %18, i64 %19, i32 %20)
  ret i32 %21
}

declare dso_local %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_dcdc_set_mode_int(%struct.wm831x*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
