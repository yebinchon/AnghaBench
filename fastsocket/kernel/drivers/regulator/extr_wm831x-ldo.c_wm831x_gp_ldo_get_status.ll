; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-ldo.c_wm831x_gp_ldo_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-ldo.c_wm831x_gp_ldo_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_ldo = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_LDO_STATUS = common dso_local global i32 0, align 4
@REGULATOR_STATUS_OFF = common dso_local global i32 0, align 4
@WM831X_LDO_UV_STATUS = common dso_local global i32 0, align 4
@REGULATOR_STATUS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm831x_gp_ldo_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_gp_ldo_get_status(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm831x_ldo*, align 8
  %5 = alloca %struct.wm831x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.wm831x_ldo* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.wm831x_ldo* %9, %struct.wm831x_ldo** %4, align 8
  %10 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %4, align 8
  %11 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %10, i32 0, i32 0
  %12 = load %struct.wm831x*, %struct.wm831x** %11, align 8
  store %struct.wm831x* %12, %struct.wm831x** %5, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %14 = call i32 @rdev_get_id(%struct.regulator_dev* %13)
  %15 = shl i32 1, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %17 = load i32, i32* @WM831X_LDO_STATUS, align 4
  %18 = call i32 @wm831x_reg_read(%struct.wm831x* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %50

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @REGULATOR_STATUS_OFF, align 4
  store i32 %29, i32* %2, align 4
  br label %50

30:                                               ; preds = %23
  %31 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %32 = load i32, i32* @WM831X_LDO_UV_STATUS, align 4
  %33 = call i32 @wm831x_reg_read(%struct.wm831x* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @REGULATOR_STATUS_ERROR, align 4
  store i32 %39, i32* %2, align 4
  br label %50

40:                                               ; preds = %30
  %41 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %42 = call i32 @wm831x_gp_ldo_get_mode(%struct.regulator_dev* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @regulator_mode_to_status(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %45, %38, %28, %21
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.wm831x_ldo* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @wm831x_gp_ldo_get_mode(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_mode_to_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
