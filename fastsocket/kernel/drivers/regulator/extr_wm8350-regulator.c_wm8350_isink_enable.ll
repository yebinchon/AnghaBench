; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_isink_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_isink_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8350 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@WM8350_POWER_MGMT_7 = common dso_local global i32 0, align 4
@WM8350_CS1_ENA = common dso_local global i32 0, align 4
@WM8350_CSA_FLASH_CONTROL = common dso_local global i32 0, align 4
@WM8350_CS1_DRIVE = common dso_local global i32 0, align 4
@WM8350_DCDC_LDO_REQUESTED = common dso_local global i32 0, align 4
@WM8350_DCDC_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8350_CS2_ENA = common dso_local global i32 0, align 4
@WM8350_CSB_FLASH_CONTROL = common dso_local global i32 0, align 4
@WM8350_CS2_DRIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm8350_isink_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_isink_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %7 = call %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.wm8350* %7, %struct.wm8350** %4, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call i32 @rdev_get_id(%struct.regulator_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %67 [
    i32 129, label %11
    i32 128, label %39
  ]

11:                                               ; preds = %1
  %12 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %13 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %35 [
    i32 131, label %16
    i32 130, label %16
  ]

16:                                               ; preds = %11, %11
  %17 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %18 = load i32, i32* @WM8350_POWER_MGMT_7, align 4
  %19 = load i32, i32* @WM8350_CS1_ENA, align 4
  %20 = call i32 @wm8350_set_bits(%struct.wm8350* %17, i32 %18, i32 %19)
  %21 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %22 = load i32, i32* @WM8350_CSA_FLASH_CONTROL, align 4
  %23 = load i32, i32* @WM8350_CS1_DRIVE, align 4
  %24 = call i32 @wm8350_set_bits(%struct.wm8350* %21, i32 %22, i32 %23)
  %25 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %26 = load i32, i32* @WM8350_DCDC_LDO_REQUESTED, align 4
  %27 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %28 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WM8350_DCDC_1, align 4
  %32 = sub nsw i32 %30, %31
  %33 = shl i32 1, %32
  %34 = call i32 @wm8350_set_bits(%struct.wm8350* %25, i32 %26, i32 %33)
  br label %38

35:                                               ; preds = %11
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %71

38:                                               ; preds = %16
  br label %70

39:                                               ; preds = %1
  %40 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %41 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %63 [
    i32 131, label %44
    i32 130, label %44
  ]

44:                                               ; preds = %39, %39
  %45 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %46 = load i32, i32* @WM8350_POWER_MGMT_7, align 4
  %47 = load i32, i32* @WM8350_CS2_ENA, align 4
  %48 = call i32 @wm8350_set_bits(%struct.wm8350* %45, i32 %46, i32 %47)
  %49 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %50 = load i32, i32* @WM8350_CSB_FLASH_CONTROL, align 4
  %51 = load i32, i32* @WM8350_CS2_DRIVE, align 4
  %52 = call i32 @wm8350_set_bits(%struct.wm8350* %49, i32 %50, i32 %51)
  %53 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %54 = load i32, i32* @WM8350_DCDC_LDO_REQUESTED, align 4
  %55 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %56 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @WM8350_DCDC_1, align 4
  %60 = sub nsw i32 %58, %59
  %61 = shl i32 1, %60
  %62 = call i32 @wm8350_set_bits(%struct.wm8350* %53, i32 %54, i32 %61)
  br label %66

63:                                               ; preds = %39
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %71

66:                                               ; preds = %44
  br label %70

67:                                               ; preds = %1
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %66, %38
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %67, %63, %35
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
