; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_lp3971.c_lp3971_dcdc_get_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_lp3971.c_lp3971_dcdc_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.lp3971 = type { i32 }

@LP3971_DCDC1 = common dso_local global i32 0, align 4
@BUCK_TARGET_VOL_MASK = common dso_local global i64 0, align 8
@BUCK_TARGET_VOL_MAX_IDX = common dso_local global i64 0, align 8
@buck_voltage_map = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"chip reported incorrect voltage value.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @lp3971_dcdc_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3971_dcdc_get_voltage(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.lp3971*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %8 = call %struct.lp3971* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.lp3971* %8, %struct.lp3971** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %10 = call i32 @rdev_get_id(%struct.regulator_dev* %9)
  %11 = load i32, i32* @LP3971_DCDC1, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.lp3971*, %struct.lp3971** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @LP3971_BUCK_TARGET_VOL1_REG(i32 %14)
  %16 = call i64 @lp3971_reg_read(%struct.lp3971* %13, i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* @BUCK_TARGET_VOL_MASK, align 8
  %18 = load i64, i64* %5, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @BUCK_TARGET_VOL_MAX_IDX, align 8
  %22 = icmp ule i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32*, i32** @buck_voltage_map, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 1000, %27
  store i32 %28, i32* %6, align 4
  br label %33

29:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %30 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %31 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %30, i32 0, i32 0
  %32 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.lp3971* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i64 @lp3971_reg_read(%struct.lp3971*, i32) #1

declare dso_local i32 @LP3971_BUCK_TARGET_VOL1_REG(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
