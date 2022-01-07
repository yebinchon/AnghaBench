; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckp_set_voltage_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckp_set_voltage_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_dcdc = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WM831X_DC3_ON_VSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32, i32)* @wm831x_buckp_set_voltage_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_buckp_set_voltage_int(%struct.regulator_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm831x_dcdc*, align 8
  %11 = alloca %struct.wm831x*, align 8
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %14 = call %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev* %13)
  store %struct.wm831x_dcdc* %14, %struct.wm831x_dcdc** %10, align 8
  %15 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %10, align 8
  %16 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %15, i32 0, i32 0
  %17 = load %struct.wm831x*, %struct.wm831x** %16, align 8
  store %struct.wm831x* %17, %struct.wm831x** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %18, 34000000
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 850000
  %23 = sdiv i32 %22, 25000
  store i32 %23, i32* %12, align 4
  br label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %42

27:                                               ; preds = %20
  %28 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @wm831x_buckp_list_voltage(%struct.regulator_dev* %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %42

36:                                               ; preds = %27
  %37 = load %struct.wm831x*, %struct.wm831x** %11, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @WM831X_DC3_ON_VSEL_MASK, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @wm831x_set_bits(%struct.wm831x* %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %36, %33, %24
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_buckp_list_voltage(%struct.regulator_dev*, i32) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
