; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_isink_get_current.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_isink_get_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8350 = type { i32 }

@WM8350_CURRENT_SINK_DRIVER_A = common dso_local global i32 0, align 4
@WM8350_CS1_ISEL_MASK = common dso_local global i64 0, align 8
@WM8350_CURRENT_SINK_DRIVER_B = common dso_local global i32 0, align 4
@isink_cur = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm8350_isink_get_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_isink_get_current(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.wm8350* %8, %struct.wm8350** %4, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @rdev_get_id(%struct.regulator_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %24 [
    i32 129, label %12
    i32 128, label %18
  ]

12:                                               ; preds = %1
  %13 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %14 = load i32, i32* @WM8350_CURRENT_SINK_DRIVER_A, align 4
  %15 = call i64 @wm8350_reg_read(%struct.wm8350* %13, i32 %14)
  %16 = load i64, i64* @WM8350_CS1_ISEL_MASK, align 8
  %17 = and i64 %15, %16
  store i64 %17, i64* %6, align 8
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %20 = load i32, i32* @WM8350_CURRENT_SINK_DRIVER_B, align 4
  %21 = call i64 @wm8350_reg_read(%struct.wm8350* %19, i32 %20)
  %22 = load i64, i64* @WM8350_CS1_ISEL_MASK, align 8
  %23 = and i64 %21, %22
  store i64 %23, i64* %6, align 8
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

25:                                               ; preds = %18, %12
  %26 = load i32*, i32** @isink_cur, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 50
  %31 = sdiv i32 %30, 100
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %24
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i64 @wm8350_reg_read(%struct.wm8350*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
