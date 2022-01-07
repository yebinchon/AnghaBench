; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_ldo_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_ldo_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8350 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WM8350_LDO1_CONTROL = common dso_local global i32 0, align 4
@WM8350_LDO2_CONTROL = common dso_local global i32 0, align 4
@WM8350_LDO3_CONTROL = common dso_local global i32 0, align 4
@WM8350_LDO4_CONTROL = common dso_local global i32 0, align 4
@WM8350_LDO1_VSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @wm8350_ldo_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_ldo_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
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
  %24 = icmp slt i32 %23, 900
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  %27 = icmp sgt i32 %26, 3300
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %106

31:                                               ; preds = %25
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 900
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %13, align 4
  %36 = icmp sgt i32 %35, 3300
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %106

40:                                               ; preds = %34
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 1800
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 %44, 851
  %46 = sdiv i32 %45, 50
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @wm8350_ldo_val_to_mvolts(i32 %47)
  %49 = load i32, i32* %13, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %106

54:                                               ; preds = %43
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @wm8350_ldo_val_to_mvolts(i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  br label %80

61:                                               ; preds = %40
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %62, 1701
  %64 = sdiv i32 %63, 100
  %65 = add nsw i32 %64, 16
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @wm8350_ldo_val_to_mvolts(i32 %66)
  %68 = load i32, i32* %13, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %106

73:                                               ; preds = %61
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @wm8350_ldo_val_to_mvolts(i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @BUG_ON(i32 %78)
  br label %80

80:                                               ; preds = %73, %54
  %81 = load i32, i32* %10, align 4
  switch i32 %81, label %90 [
    i32 131, label %82
    i32 130, label %84
    i32 129, label %86
    i32 128, label %88
  ]

82:                                               ; preds = %80
  %83 = load i32, i32* @WM8350_LDO1_CONTROL, align 4
  store i32 %83, i32* %9, align 4
  br label %93

84:                                               ; preds = %80
  %85 = load i32, i32* @WM8350_LDO2_CONTROL, align 4
  store i32 %85, i32* %9, align 4
  br label %93

86:                                               ; preds = %80
  %87 = load i32, i32* @WM8350_LDO3_CONTROL, align 4
  store i32 %87, i32* %9, align 4
  br label %93

88:                                               ; preds = %80
  %89 = load i32, i32* @WM8350_LDO4_CONTROL, align 4
  store i32 %89, i32* %9, align 4
  br label %93

90:                                               ; preds = %80
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %106

93:                                               ; preds = %88, %86, %84, %82
  %94 = load %struct.wm8350*, %struct.wm8350** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @wm8350_reg_read(%struct.wm8350* %94, i32 %95)
  %97 = load i32, i32* @WM8350_LDO1_VSEL_MASK, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  store i32 %99, i32* %14, align 4
  %100 = load %struct.wm8350*, %struct.wm8350** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @wm8350_reg_write(%struct.wm8350* %100, i32 %101, i32 %104)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %93, %90, %70, %51, %37, %28
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm8350_ldo_val_to_mvolts(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
