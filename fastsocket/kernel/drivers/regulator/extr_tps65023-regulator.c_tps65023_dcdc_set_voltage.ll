; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps65023-regulator.c_tps65023_dcdc_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps65023-regulator.c_tps65023_dcdc_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps_pmic = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@TPS65023_DCDC_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TPS65023_REG_DEF_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @tps65023_dcdc_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65023_dcdc_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tps_pmic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = call %struct.tps_pmic* @rdev_get_drvdata(%struct.regulator_dev* %13)
  store %struct.tps_pmic* %14, %struct.tps_pmic** %8, align 8
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %16 = call i32 @rdev_get_id(%struct.regulator_dev* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @TPS65023_DCDC_1, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %138

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %26 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %24, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %38 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %36, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35, %23
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %138

50:                                               ; preds = %35
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %53 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %51, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %65 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %66, i64 %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %63, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %62, %50
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %138

77:                                               ; preds = %62
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %115, %77
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %81 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %79, %88
  br i1 %89, label %90, label %118

90:                                               ; preds = %78
  %91 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %92 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %93, i64 %95
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 %104, 1000
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %90
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp sle i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %118

114:                                              ; preds = %109, %90
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %78

118:                                              ; preds = %113, %78
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %121 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %122, i64 %124
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %119, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %118
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %138

133:                                              ; preds = %118
  %134 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %135 = load i32, i32* @TPS65023_REG_DEF_CORE, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @tps_65023_reg_write(%struct.tps_pmic* %134, i32 %135, i32 %136)
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %133, %130, %74, %47, %20
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.tps_pmic* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @tps_65023_reg_write(%struct.tps_pmic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
