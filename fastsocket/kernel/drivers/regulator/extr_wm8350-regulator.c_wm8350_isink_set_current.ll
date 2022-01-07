; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_isink_set_current.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_isink_set_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8350 = type { i32 }

@WM8350_CURRENT_SINK_DRIVER_A = common dso_local global i32 0, align 4
@WM8350_CS1_ISEL_MASK = common dso_local global i32 0, align 4
@WM8350_CURRENT_SINK_DRIVER_B = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @wm8350_isink_set_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_isink_set_current(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm8350*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = call %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev* %13)
  store %struct.wm8350* %14, %struct.wm8350** %8, align 8
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %16 = call i32 @rdev_get_id(%struct.regulator_dev* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @get_isink_val(i32 %17, i32 %18, i32* %11)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %52 [
    i32 129, label %26
    i32 128, label %39
  ]

26:                                               ; preds = %24
  %27 = load %struct.wm8350*, %struct.wm8350** %8, align 8
  %28 = load i32, i32* @WM8350_CURRENT_SINK_DRIVER_A, align 4
  %29 = call i32 @wm8350_reg_read(%struct.wm8350* %27, i32 %28)
  %30 = load i32, i32* @WM8350_CS1_ISEL_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.wm8350*, %struct.wm8350** %8, align 8
  %34 = load i32, i32* @WM8350_CURRENT_SINK_DRIVER_A, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @wm8350_reg_write(%struct.wm8350* %33, i32 %34, i32 %37)
  br label %55

39:                                               ; preds = %24
  %40 = load %struct.wm8350*, %struct.wm8350** %8, align 8
  %41 = load i32, i32* @WM8350_CURRENT_SINK_DRIVER_B, align 4
  %42 = call i32 @wm8350_reg_read(%struct.wm8350* %40, i32 %41)
  %43 = load i32, i32* @WM8350_CS1_ISEL_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  store i32 %45, i32* %10, align 4
  %46 = load %struct.wm8350*, %struct.wm8350** %8, align 8
  %47 = load i32, i32* @WM8350_CURRENT_SINK_DRIVER_B, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @wm8350_reg_write(%struct.wm8350* %46, i32 %47, i32 %50)
  br label %55

52:                                               ; preds = %24
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %39, %26
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %52, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @get_isink_val(i32, i32, i32*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
