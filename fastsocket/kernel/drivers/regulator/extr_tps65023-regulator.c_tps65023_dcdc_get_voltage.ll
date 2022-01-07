; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps65023-regulator.c_tps65023_dcdc_get_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps65023-regulator.c_tps65023_dcdc_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps_pmic = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@TPS65023_DCDC_1 = common dso_local global i32 0, align 4
@TPS65023_DCDC_3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TPS65023_REG_DEF_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @tps65023_dcdc_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65023_dcdc_get_voltage(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.tps_pmic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.tps_pmic* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.tps_pmic* %8, %struct.tps_pmic** %4, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @rdev_get_id(%struct.regulator_dev* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @TPS65023_DCDC_1, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @TPS65023_DCDC_3, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %70

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @TPS65023_DCDC_1, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  %26 = load %struct.tps_pmic*, %struct.tps_pmic** %4, align 8
  %27 = load i32, i32* @TPS65023_REG_DEF_CORE, align 4
  %28 = call i32 @tps_65023_reg_read(%struct.tps_pmic* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %70

33:                                               ; preds = %25
  %34 = load %struct.tps_pmic*, %struct.tps_pmic** %4, align 8
  %35 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.tps_pmic*, %struct.tps_pmic** %4, align 8
  %47 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 1000
  store i32 %59, i32* %2, align 4
  br label %70

60:                                               ; preds = %21
  %61 = load %struct.tps_pmic*, %struct.tps_pmic** %4, align 8
  %62 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %60, %33, %31, %18
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.tps_pmic* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @tps_65023_reg_read(%struct.tps_pmic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
