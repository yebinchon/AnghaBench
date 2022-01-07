; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-ldo.c_wm831x_alive_ldo_set_voltage_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-ldo.c_wm831x_alive_ldo_set_voltage_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_ldo = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WM831X_LDO11_ON_VSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32, i32)* @wm831x_alive_ldo_set_voltage_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_alive_ldo_set_voltage_int(%struct.regulator_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm831x_ldo*, align 8
  %11 = alloca %struct.wm831x*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %15 = call %struct.wm831x_ldo* @rdev_get_drvdata(%struct.regulator_dev* %14)
  store %struct.wm831x_ldo* %15, %struct.wm831x_ldo** %10, align 8
  %16 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %10, align 8
  %17 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %16, i32 0, i32 0
  %18 = load %struct.wm831x*, %struct.wm831x** %17, align 8
  store %struct.wm831x* %18, %struct.wm831x** %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sub nsw i32 %19, 800000
  %21 = sdiv i32 %20, 50000
  store i32 %21, i32* %12, align 4
  %22 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @wm831x_alive_ldo_list_voltage(%struct.regulator_dev* %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %46

29:                                               ; preds = %4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %46

40:                                               ; preds = %33
  %41 = load %struct.wm831x*, %struct.wm831x** %11, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @WM831X_LDO11_ON_VSEL_MASK, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @wm831x_set_bits(%struct.wm831x* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %40, %37, %27
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.wm831x_ldo* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_alive_ldo_list_voltage(%struct.regulator_dev*, i32) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
