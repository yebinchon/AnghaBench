; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_ldo_get_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_ldo_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8350 = type { i32 }

@WM8350_LDO1_CONTROL = common dso_local global i32 0, align 4
@WM8350_LDO2_CONTROL = common dso_local global i32 0, align 4
@WM8350_LDO3_CONTROL = common dso_local global i32 0, align 4
@WM8350_LDO4_CONTROL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8350_LDO1_VSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm8350_ldo_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_ldo_get_voltage(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.wm8350* %9, %struct.wm8350** %4, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call i32 @rdev_get_id(%struct.regulator_dev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %21 [
    i32 131, label %13
    i32 130, label %15
    i32 129, label %17
    i32 128, label %19
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @WM8350_LDO1_CONTROL, align 4
  store i32 %14, i32* %5, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @WM8350_LDO2_CONTROL, align 4
  store i32 %16, i32* %5, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @WM8350_LDO3_CONTROL, align 4
  store i32 %18, i32* %5, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @WM8350_LDO4_CONTROL, align 4
  store i32 %20, i32* %5, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %19, %17, %15, %13
  %25 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @wm8350_reg_read(%struct.wm8350* %25, i32 %26)
  %28 = load i32, i32* @WM8350_LDO1_VSEL_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @wm8350_ldo_val_to_mvolts(i32 %30)
  %32 = mul nsw i32 %31, 1000
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_ldo_val_to_mvolts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
