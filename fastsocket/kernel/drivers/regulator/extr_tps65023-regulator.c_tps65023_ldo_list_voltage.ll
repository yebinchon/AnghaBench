; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps65023-regulator.c_tps65023_ldo_list_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps65023-regulator.c_tps65023_ldo_list_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps_pmic = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32* }

@TPS65023_LDO_1 = common dso_local global i32 0, align 4
@TPS65023_LDO_2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @tps65023_ldo_list_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65023_ldo_list_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps_pmic*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = call %struct.tps_pmic* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.tps_pmic* %9, %struct.tps_pmic** %6, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call i32 @rdev_get_id(%struct.regulator_dev* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @TPS65023_LDO_1, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @TPS65023_LDO_2, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.tps_pmic*, %struct.tps_pmic** %6, align 8
  %25 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp uge i32 %23, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %22
  %38 = load %struct.tps_pmic*, %struct.tps_pmic** %6, align 8
  %39 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %50, 1000
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %37, %34, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.tps_pmic* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
