; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc_set_suspend_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc_set_suspend_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8350 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@WM8350_DCDC1_LOW_POWER = common dso_local global i32 0, align 4
@WM8350_DCDC_HIB_MODE_MASK = common dso_local global i32 0, align 4
@WM8350_DCDC3_LOW_POWER = common dso_local global i32 0, align 4
@WM8350_DCDC4_LOW_POWER = common dso_local global i32 0, align 4
@WM8350_DCDC6_LOW_POWER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm8350_dcdc_set_suspend_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_dcdc_set_suspend_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.wm8350* %8, %struct.wm8350** %4, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @rdev_get_id(%struct.regulator_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %69 [
    i32 133, label %12
    i32 131, label %26
    i32 130, label %40
    i32 128, label %54
    i32 132, label %68
    i32 129, label %68
  ]

12:                                               ; preds = %1
  %13 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %14 = load i32, i32* @WM8350_DCDC1_LOW_POWER, align 4
  %15 = call i32 @wm8350_reg_read(%struct.wm8350* %13, i32 %14)
  %16 = load i32, i32* @WM8350_DCDC_HIB_MODE_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %20 = load i32, i32* @WM8350_DCDC1_LOW_POWER, align 4
  %21 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %22 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wm8350_reg_write(%struct.wm8350* %19, i32 %20, i32 %24)
  br label %72

26:                                               ; preds = %1
  %27 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %28 = load i32, i32* @WM8350_DCDC3_LOW_POWER, align 4
  %29 = call i32 @wm8350_reg_read(%struct.wm8350* %27, i32 %28)
  %30 = load i32, i32* @WM8350_DCDC_HIB_MODE_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %34 = load i32, i32* @WM8350_DCDC3_LOW_POWER, align 4
  %35 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %36 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wm8350_reg_write(%struct.wm8350* %33, i32 %34, i32 %38)
  br label %72

40:                                               ; preds = %1
  %41 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %42 = load i32, i32* @WM8350_DCDC4_LOW_POWER, align 4
  %43 = call i32 @wm8350_reg_read(%struct.wm8350* %41, i32 %42)
  %44 = load i32, i32* @WM8350_DCDC_HIB_MODE_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %48 = load i32, i32* @WM8350_DCDC4_LOW_POWER, align 4
  %49 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %50 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @wm8350_reg_write(%struct.wm8350* %47, i32 %48, i32 %52)
  br label %72

54:                                               ; preds = %1
  %55 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %56 = load i32, i32* @WM8350_DCDC6_LOW_POWER, align 4
  %57 = call i32 @wm8350_reg_read(%struct.wm8350* %55, i32 %56)
  %58 = load i32, i32* @WM8350_DCDC_HIB_MODE_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  store i32 %60, i32* %6, align 4
  %61 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %62 = load i32, i32* @WM8350_DCDC6_LOW_POWER, align 4
  %63 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %64 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @wm8350_reg_write(%struct.wm8350* %61, i32 %62, i32 %66)
  br label %72

68:                                               ; preds = %1, %1
  br label %69

69:                                               ; preds = %1, %68
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %54, %40, %26, %12
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
