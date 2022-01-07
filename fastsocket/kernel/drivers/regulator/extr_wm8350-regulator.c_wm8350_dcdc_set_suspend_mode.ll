; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc_set_suspend_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc_set_suspend_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8350 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WM8350_DCDC_HIB_MODE_IMAGE = common dso_local global i32 0, align 4
@WM8350_DCDC_HIB_MODE_STANDBY = common dso_local global i32 0, align 4
@WM8350_DCDC_HIB_MODE_LDO_IM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @wm8350_dcdc_set_suspend_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_dcdc_set_suspend_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.wm8350* %10, %struct.wm8350** %6, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %31 [
    i32 133, label %14
    i32 131, label %18
    i32 130, label %22
    i32 128, label %26
    i32 132, label %30
    i32 129, label %30
  ]

14:                                               ; preds = %2
  %15 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %16 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32* %17, i32** %8, align 8
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %20 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32* %21, i32** %8, align 8
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %24 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32* %25, i32** %8, align 8
  br label %34

26:                                               ; preds = %2
  %27 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %28 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32* %29, i32** %8, align 8
  br label %34

30:                                               ; preds = %2, %2
  br label %31

31:                                               ; preds = %2, %30
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %49

34:                                               ; preds = %26, %22, %18, %14
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %45 [
    i32 135, label %36
    i32 136, label %39
    i32 134, label %42
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* @WM8350_DCDC_HIB_MODE_IMAGE, align 4
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  br label %48

39:                                               ; preds = %34
  %40 = load i32, i32* @WM8350_DCDC_HIB_MODE_STANDBY, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %48

42:                                               ; preds = %34
  %43 = load i32, i32* @WM8350_DCDC_HIB_MODE_LDO_IM, align 4
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  br label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %42, %39, %36
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45, %31
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
