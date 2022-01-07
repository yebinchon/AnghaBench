; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8400-regulator.c_wm8400_dcdc_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8400-regulator.c_wm8400_dcdc_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8400 = type { i32 }

@WM8400_DCDC1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8400_DCDC1_CONTROL_1 = common dso_local global i64 0, align 8
@WM8400_DC1_VSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @wm8400_dcdc_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8400_dcdc_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm8400*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %12 = call %struct.wm8400* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.wm8400* %12, %struct.wm8400** %8, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = call i32 @rdev_get_id(%struct.regulator_dev* %13)
  %15 = load i32, i32* @WM8400_DCDC1, align 4
  %16 = sub nsw i32 %14, %15
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 850000
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %51

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 825001
  %26 = sdiv i32 %25, 25000
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 25000, %27
  %29 = add nsw i32 850000, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %51

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 25000, %36
  %38 = add nsw i32 850000, %37
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.wm8400*, %struct.wm8400** %8, align 8
  %44 = load i64, i64* @WM8400_DCDC1_CONTROL_1, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load i32, i32* @WM8400_DC1_VSEL_MASK, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @wm8400_set_bits(%struct.wm8400* %43, i64 %47, i32 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %35, %32, %20
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.wm8400* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wm8400_set_bits(%struct.wm8400*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
