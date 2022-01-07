; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-dcdc.c_wm831x_boostp_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-dcdc.c_wm831x_boostp_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_dcdc = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_DCDC_UV_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DCDC%d under voltage\0A\00", align 1
@REGULATOR_STATUS_ERROR = common dso_local global i32 0, align 4
@WM831X_DCDC_STATUS = common dso_local global i32 0, align 4
@REGULATOR_STATUS_ON = common dso_local global i32 0, align 4
@REGULATOR_STATUS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm831x_boostp_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_boostp_get_status(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm831x_dcdc*, align 8
  %5 = alloca %struct.wm831x*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.wm831x_dcdc* %8, %struct.wm831x_dcdc** %4, align 8
  %9 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %4, align 8
  %10 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %9, i32 0, i32 0
  %11 = load %struct.wm831x*, %struct.wm831x** %10, align 8
  store %struct.wm831x* %11, %struct.wm831x** %5, align 8
  %12 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %13 = load i32, i32* @WM831X_DCDC_UV_STATUS, align 4
  %14 = call i32 @wm831x_reg_read(%struct.wm831x* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %54

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %22 = call i32 @rdev_get_id(%struct.regulator_dev* %21)
  %23 = shl i32 1, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %28 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %31 = call i32 @rdev_get_id(%struct.regulator_dev* %30)
  %32 = add nsw i32 %31, 1
  %33 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @REGULATOR_STATUS_ERROR, align 4
  store i32 %34, i32* %2, align 4
  br label %54

35:                                               ; preds = %19
  %36 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %37 = load i32, i32* @WM831X_DCDC_STATUS, align 4
  %38 = call i32 @wm831x_reg_read(%struct.wm831x* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %54

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %46 = call i32 @rdev_get_id(%struct.regulator_dev* %45)
  %47 = shl i32 1, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @REGULATOR_STATUS_ON, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @REGULATOR_STATUS_OFF, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %50, %41, %26, %17
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
