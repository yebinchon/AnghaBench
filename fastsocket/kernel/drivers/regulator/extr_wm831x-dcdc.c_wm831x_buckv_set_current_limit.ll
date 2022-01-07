; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckv_set_current_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckv_set_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_dcdc = type { i64, %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_DCDC_CONTROL_2 = common dso_local global i64 0, align 8
@wm831x_dcdc_ilim = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@WM831X_DC1_HC_THR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @wm831x_buckv_set_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_buckv_set_current_limit(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm831x_dcdc*, align 8
  %9 = alloca %struct.wm831x*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %13 = call %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev* %12)
  store %struct.wm831x_dcdc* %13, %struct.wm831x_dcdc** %8, align 8
  %14 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %15 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %14, i32 0, i32 1
  %16 = load %struct.wm831x*, %struct.wm831x** %15, align 8
  store %struct.wm831x* %16, %struct.wm831x** %9, align 8
  %17 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %18 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WM831X_DCDC_CONTROL_2, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %37, %3
  %23 = load i32, i32* %11, align 4
  %24 = load i32*, i32** @wm831x_dcdc_ilim, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** @wm831x_dcdc_ilim, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %40

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %22

40:                                               ; preds = %35, %22
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** @wm831x_dcdc_ilim, align 8
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %54

48:                                               ; preds = %40
  %49 = load %struct.wm831x*, %struct.wm831x** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* @WM831X_DC1_HC_THR_MASK, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @wm831x_set_bits(%struct.wm831x* %49, i64 %50, i32 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
