; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8400-regulator.c_wm8400_ldo_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8400-regulator.c_wm8400_ldo_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8400 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WM8400_LDO1_CONTROL = common dso_local global i64 0, align 8
@WM8400_LDO1_VSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @wm8400_ldo_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8400_ldo_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm8400*, align 8
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %11 = call %struct.wm8400* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.wm8400* %11, %struct.wm8400** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 900000
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 3300000
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %74

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 1700000
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 850001
  %26 = sdiv i32 %25, 50000
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %27, 50000
  %29 = add nsw i32 %28, 900000
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %74

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 50000
  %38 = add nsw i32 %37, 900000
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  br label %65

43:                                               ; preds = %20
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1600001
  %46 = sdiv i32 %45, 100000
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 %47, 100000
  %49 = add nsw i32 %48, 1700000
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %74

55:                                               ; preds = %43
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %56, 100000
  %58 = add nsw i32 %57, 1700000
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 15
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %55, %35
  %66 = load %struct.wm8400*, %struct.wm8400** %8, align 8
  %67 = load i64, i64* @WM8400_LDO1_CONTROL, align 8
  %68 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %69 = call i64 @rdev_get_id(%struct.regulator_dev* %68)
  %70 = add nsw i64 %67, %69
  %71 = load i32, i32* @WM8400_LDO1_VSEL_MASK, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @wm8400_set_bits(%struct.wm8400* %66, i64 %70, i32 %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %65, %52, %32, %17
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.wm8400* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wm8400_set_bits(%struct.wm8400*, i64, i32, i32) #1

declare dso_local i64 @rdev_get_id(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
