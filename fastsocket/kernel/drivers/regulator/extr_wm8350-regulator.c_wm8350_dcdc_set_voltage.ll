; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8350 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WM8350_DCDC1_CONTROL = common dso_local global i32 0, align 4
@WM8350_DCDC3_CONTROL = common dso_local global i32 0, align 4
@WM8350_DCDC4_CONTROL = common dso_local global i32 0, align 4
@WM8350_DCDC6_CONTROL = common dso_local global i32 0, align 4
@WM8350_DC1_VSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @wm8350_dcdc_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_dcdc_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm8350*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %16 = call %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev* %15)
  store %struct.wm8350* %16, %struct.wm8350** %8, align 8
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %18 = call i32 @rdev_get_id(%struct.regulator_dev* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sdiv i32 %19, 1000
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %21, 1000
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 850
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  %27 = icmp sgt i32 %26, 4025
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %84

31:                                               ; preds = %25
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 850
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %13, align 4
  %36 = icmp sgt i32 %35, 4025
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %84

40:                                               ; preds = %34
  %41 = load i32, i32* %12, align 4
  %42 = sub nsw i32 %41, 826
  %43 = sdiv i32 %42, 25
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @wm8350_dcdc_val_to_mvolts(i32 %44)
  %46 = load i32, i32* %13, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %84

51:                                               ; preds = %40
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @wm8350_dcdc_val_to_mvolts(i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load i32, i32* %10, align 4
  switch i32 %58, label %68 [
    i32 133, label %59
    i32 131, label %61
    i32 130, label %63
    i32 128, label %65
    i32 132, label %67
    i32 129, label %67
  ]

59:                                               ; preds = %51
  %60 = load i32, i32* @WM8350_DCDC1_CONTROL, align 4
  store i32 %60, i32* %9, align 4
  br label %71

61:                                               ; preds = %51
  %62 = load i32, i32* @WM8350_DCDC3_CONTROL, align 4
  store i32 %62, i32* %9, align 4
  br label %71

63:                                               ; preds = %51
  %64 = load i32, i32* @WM8350_DCDC4_CONTROL, align 4
  store i32 %64, i32* %9, align 4
  br label %71

65:                                               ; preds = %51
  %66 = load i32, i32* @WM8350_DCDC6_CONTROL, align 4
  store i32 %66, i32* %9, align 4
  br label %71

67:                                               ; preds = %51, %51
  br label %68

68:                                               ; preds = %51, %67
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %84

71:                                               ; preds = %65, %63, %61, %59
  %72 = load %struct.wm8350*, %struct.wm8350** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @wm8350_reg_read(%struct.wm8350* %72, i32 %73)
  %75 = load i32, i32* @WM8350_DC1_VSEL_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  store i32 %77, i32* %14, align 4
  %78 = load %struct.wm8350*, %struct.wm8350** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @wm8350_reg_write(%struct.wm8350* %78, i32 %79, i32 %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %71, %68, %48, %37, %28
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm8350_dcdc_val_to_mvolts(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
