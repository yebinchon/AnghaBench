; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8400-regulator.c_wm8400_dcdc_get_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8400-regulator.c_wm8400_dcdc_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8400 = type { i32 }

@WM8400_DCDC1 = common dso_local global i32 0, align 4
@WM8400_DCDC1_CONTROL_1 = common dso_local global i64 0, align 8
@WM8400_DC1_SLEEP = common dso_local global i32 0, align 4
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@WM8400_DC1_ACTIVE = common dso_local global i32 0, align 4
@REGULATOR_MODE_IDLE = common dso_local global i32 0, align 4
@WM8400_DC1_FRC_PWM = common dso_local global i32 0, align 4
@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm8400_dcdc_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8400_dcdc_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm8400*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.wm8400* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.wm8400* %9, %struct.wm8400** %4, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call i32 @rdev_get_id(%struct.regulator_dev* %10)
  %12 = load i32, i32* @WM8400_DCDC1, align 4
  %13 = sub nsw i32 %11, %12
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %5, align 4
  %15 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %16 = load i64, i64* @WM8400_DCDC1_CONTROL_1, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %21 = call i32 @wm8400_block_read(%struct.wm8400* %15, i64 %19, i32 2, i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

25:                                               ; preds = %1
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @WM8400_DC1_SLEEP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  store i32 %32, i32* %2, align 4
  br label %51

33:                                               ; preds = %25
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WM8400_DC1_ACTIVE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @REGULATOR_MODE_IDLE, align 4
  store i32 %40, i32* %2, align 4
  br label %51

41:                                               ; preds = %33
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @WM8400_DC1_FRC_PWM, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %47, %39, %31, %24
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.wm8400* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm8400_block_read(%struct.wm8400*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
