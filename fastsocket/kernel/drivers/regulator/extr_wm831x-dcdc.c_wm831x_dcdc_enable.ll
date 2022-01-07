; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-dcdc.c_wm831x_dcdc_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-dcdc.c_wm831x_dcdc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_dcdc = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_DCDC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm831x_dcdc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_dcdc_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.wm831x_dcdc*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %7 = call %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.wm831x_dcdc* %7, %struct.wm831x_dcdc** %3, align 8
  %8 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %3, align 8
  %9 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %8, i32 0, i32 0
  %10 = load %struct.wm831x*, %struct.wm831x** %9, align 8
  store %struct.wm831x* %10, %struct.wm831x** %4, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  %13 = shl i32 1, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %15 = load i32, i32* @WM831X_DCDC_ENABLE, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @wm831x_set_bits(%struct.wm831x* %14, i32 %15, i32 %16, i32 %17)
  ret i32 %18
}

declare dso_local %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
