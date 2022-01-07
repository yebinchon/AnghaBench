; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_lp3971.c_lp3971_ldo_get_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_lp3971.c_lp3971_ldo_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.lp3971 = type { i32 }

@LP3971_LDO1 = common dso_local global i32 0, align 4
@LDO_VOL_CONTR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @lp3971_ldo_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3971_ldo_get_voltage(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.lp3971*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %8 = call %struct.lp3971* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.lp3971* %8, %struct.lp3971** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %10 = call i32 @rdev_get_id(%struct.regulator_dev* %9)
  %11 = load i32, i32* @LP3971_LDO1, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.lp3971*, %struct.lp3971** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @LP3971_LDO_VOL_CONTR_REG(i32 %14)
  %16 = call i64 @lp3971_reg_read(%struct.lp3971* %13, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @LDO_VOL_CONTR_SHIFT(i32 %18)
  %20 = lshr i64 %17, %19
  %21 = load i64, i64* @LDO_VOL_CONTR_MASK, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32* @LDO_VOL_VALUE_MAP(i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 1000, %27
  ret i32 %28
}

declare dso_local %struct.lp3971* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i64 @lp3971_reg_read(%struct.lp3971*, i32) #1

declare dso_local i32 @LP3971_LDO_VOL_CONTR_REG(i32) #1

declare dso_local i64 @LDO_VOL_CONTR_SHIFT(i32) #1

declare dso_local i32* @LDO_VOL_VALUE_MAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
