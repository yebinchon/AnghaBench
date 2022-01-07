; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-ldo.c_wm831x_gp_ldo_set_voltage_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-ldo.c_wm831x_gp_ldo_set_voltage_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_ldo = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_GP_LDO_SELECTOR_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM831X_LDO1_ON_VSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32, i32)* @wm831x_gp_ldo_set_voltage_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_gp_ldo_set_voltage_int(%struct.regulator_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = icmp slt i32 %19, 900000
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %37

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 1700000
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 900000
  %28 = sdiv i32 %27, 50000
  store i32 %28, i32* %12, align 4
  br label %36

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1700000
  %32 = sdiv i32 %31, 100000
  %33 = load i32, i32* @WM831X_GP_LDO_SELECTOR_LOW, align 4
  %34 = add nsw i32 %32, %33
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %29, %25
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @wm831x_gp_ldo_list_voltage(%struct.regulator_dev* %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %5, align 4
  br label %62

45:                                               ; preds = %37
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %62

56:                                               ; preds = %49
  %57 = load %struct.wm831x*, %struct.wm831x** %11, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @WM831X_LDO1_ON_VSEL_MASK, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @wm831x_set_bits(%struct.wm831x* %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %56, %53, %43
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.wm831x_ldo* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_gp_ldo_list_voltage(%struct.regulator_dev*, i32) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
