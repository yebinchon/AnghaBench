; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-ldo.c_wm831x_gp_ldo_get_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-ldo.c_wm831x_gp_ldo_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_ldo = type { i32, %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_LDO_CONTROL = common dso_local global i32 0, align 4
@WM831X_LDO_ON_CONTROL = common dso_local global i32 0, align 4
@WM831X_LDO1_ON_MODE = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@WM831X_LDO1_LP_MODE = common dso_local global i32 0, align 4
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@REGULATOR_MODE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm831x_gp_ldo_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_gp_ldo_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm831x_ldo*, align 8
  %5 = alloca %struct.wm831x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.wm831x_ldo* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.wm831x_ldo* %10, %struct.wm831x_ldo** %4, align 8
  %11 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %4, align 8
  %12 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %11, i32 0, i32 1
  %13 = load %struct.wm831x*, %struct.wm831x** %12, align 8
  store %struct.wm831x* %13, %struct.wm831x** %5, align 8
  %14 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %4, align 8
  %15 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @WM831X_LDO_CONTROL, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %4, align 8
  %20 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @WM831X_LDO_ON_CONTROL, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @wm831x_reg_read(%struct.wm831x* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %1
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @WM831X_LDO1_ON_MODE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %37, i32* %2, align 4
  br label %55

38:                                               ; preds = %31
  %39 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @wm831x_reg_read(%struct.wm831x* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %55

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @WM831X_LDO1_LP_MODE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @REGULATOR_MODE_IDLE, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %51, %44, %36, %29
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.wm831x_ldo* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
