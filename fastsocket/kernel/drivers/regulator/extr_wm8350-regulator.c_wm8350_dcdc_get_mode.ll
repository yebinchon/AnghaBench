; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc_get_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8350 = type { i32 }

@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@WM8350_DCDC1_FORCE_PWM = common dso_local global i32 0, align 4
@WM8350_DCDC3_FORCE_PWM = common dso_local global i32 0, align 4
@WM8350_DCDC4_FORCE_PWM = common dso_local global i32 0, align 4
@WM8350_DCDC6_FORCE_PWM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8350_DCDC_ACTIVE_OPTIONS = common dso_local global i32 0, align 4
@WM8350_DCDC1_FORCE_PWM_ENA = common dso_local global i32 0, align 4
@WM8350_DCDC_SLEEP_OPTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"mask %x active %x sleep %x force %x\00", align 1
@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@REGULATOR_MODE_IDLE = common dso_local global i32 0, align 4
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm8350_dcdc_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_dcdc_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %13 = call %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev* %12)
  store %struct.wm8350* %13, %struct.wm8350** %4, align 8
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %15 = call i32 @rdev_get_id(%struct.regulator_dev* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %26 [
    i32 131, label %18
    i32 130, label %20
    i32 129, label %22
    i32 128, label %24
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @WM8350_DCDC1_FORCE_PWM, align 4
  store i32 %19, i32* %11, align 4
  br label %29

20:                                               ; preds = %1
  %21 = load i32, i32* @WM8350_DCDC3_FORCE_PWM, align 4
  store i32 %21, i32* %11, align 4
  br label %29

22:                                               ; preds = %1
  %23 = load i32, i32* @WM8350_DCDC4_FORCE_PWM, align 4
  store i32 %23, i32* %11, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @WM8350_DCDC6_FORCE_PWM, align 4
  store i32 %25, i32* %11, align 4
  br label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %86

29:                                               ; preds = %24, %22, %20, %18
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %30, 131
  %32 = shl i32 1, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %34 = load i32, i32* @WM8350_DCDC_ACTIVE_OPTIONS, align 4
  %35 = call i32 @wm8350_reg_read(%struct.wm8350* %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @wm8350_reg_read(%struct.wm8350* %38, i32 %39)
  %41 = load i32, i32* @WM8350_DCDC1_FORCE_PWM_ENA, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %44 = load i32, i32* @WM8350_DCDC_SLEEP_OPTIONS, align 4
  %45 = call i32 @wm8350_reg_read(%struct.wm8350* %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %49 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %29
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  store i32 %65, i32* %10, align 4
  br label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %66, %64
  br label %84

69:                                               ; preds = %58, %29
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @REGULATOR_MODE_IDLE, align 4
  store i32 %76, i32* %10, align 4
  br label %83

77:                                               ; preds = %72, %69
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %80, %77
  br label %83

83:                                               ; preds = %82, %75
  br label %84

84:                                               ; preds = %83, %68
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %26
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
