; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8400-regulator.c_wm8400_dcdc_get_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8400-regulator.c_wm8400_dcdc_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8400 = type { i32 }

@WM8400_DCDC1 = common dso_local global i32 0, align 4
@WM8400_DCDC1_CONTROL_1 = common dso_local global i64 0, align 8
@WM8400_DC1_VSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm8400_dcdc_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8400_dcdc_get_voltage(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.wm8400*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %7 = call %struct.wm8400* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.wm8400* %7, %struct.wm8400** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %9 = call i32 @rdev_get_id(%struct.regulator_dev* %8)
  %10 = load i32, i32* @WM8400_DCDC1, align 4
  %11 = sub nsw i32 %9, %10
  %12 = mul nsw i32 %11, 2
  store i32 %12, i32* %5, align 4
  %13 = load %struct.wm8400*, %struct.wm8400** %3, align 8
  %14 = load i64, i64* @WM8400_DCDC1_CONTROL_1, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @wm8400_reg_read(%struct.wm8400* %13, i64 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @WM8400_DC1_VSEL_MASK, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 25000, %22
  %24 = add nsw i32 850000, %23
  ret i32 %24
}

declare dso_local %struct.wm8400* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm8400_reg_read(%struct.wm8400*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
