; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc_get_optimum_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc_get_optimum_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }

@dcdc1_6_efficiency = common dso_local global i32 0, align 4
@dcdc3_4_efficiency = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32, i32)* @wm8350_dcdc_get_optimum_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_dcdc_get_optimum_mode(%struct.regulator_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %22 [
    i32 131, label %14
    i32 128, label %14
    i32 130, label %18
    i32 129, label %18
  ]

14:                                               ; preds = %4, %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @dcdc1_6_efficiency, align 4
  %17 = call i32 @get_mode(i32 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  br label %24

18:                                               ; preds = %4, %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @dcdc3_4_efficiency, align 4
  %21 = call i32 @get_mode(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %22, %18, %14
  %25 = load i32, i32* %10, align 4
  ret i32 %25
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @get_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
