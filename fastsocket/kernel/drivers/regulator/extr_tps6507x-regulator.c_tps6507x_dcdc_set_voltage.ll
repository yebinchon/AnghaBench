; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps6507x-regulator.c_tps6507x_dcdc_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps6507x-regulator.c_tps6507x_dcdc_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps_pmic = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@TPS6507X_REG_DEFDCDC1 = common dso_local global i32 0, align 4
@TPS6507X_REG_DEFDCDC2_LOW = common dso_local global i32 0, align 4
@TPS6507X_REG_DEFDCDC3_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TPS6507X_DEFDCDCX_DCDC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @tps6507x_dcdc_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6507x_dcdc_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tps_pmic*, align 8
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
  %16 = call %struct.tps_pmic* @rdev_get_drvdata(%struct.regulator_dev* %15)
  store %struct.tps_pmic* %16, %struct.tps_pmic** %8, align 8
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %18 = call i32 @rdev_get_id(%struct.regulator_dev* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  switch i32 %19, label %26 [
    i32 130, label %20
    i32 129, label %22
    i32 128, label %24
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @TPS6507X_REG_DEFDCDC1, align 4
  store i32 %21, i32* %12, align 4
  br label %29

22:                                               ; preds = %3
  %23 = load i32, i32* @TPS6507X_REG_DEFDCDC2_LOW, align 4
  store i32 %23, i32* %12, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @TPS6507X_REG_DEFDCDC3_LOW, align 4
  store i32 %25, i32* %12, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %159

29:                                               ; preds = %24, %22, %20
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %32 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %30, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %44 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %42, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %41, %29
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %159

56:                                               ; preds = %41
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %59 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %60, i64 %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %57, %66
  br i1 %67, label %80, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %71 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %72, i64 %74
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %69, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %68, %56
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %159

83:                                               ; preds = %68
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %121, %83
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %87 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %88, i64 %90
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %85, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %84
  %97 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %98 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %99, i64 %101
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = mul nsw i32 %110, 1000
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp sle i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %96
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp sle i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %124

120:                                              ; preds = %115, %96
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %84

124:                                              ; preds = %119, %84
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %127 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %128, i64 %130
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %125, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %124
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %159

139:                                              ; preds = %124
  %140 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @tps_6507x_reg_read(%struct.tps_pmic* %140, i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %4, align 4
  br label %159

147:                                              ; preds = %139
  %148 = load i32, i32* @TPS6507X_DEFDCDCX_DCDC_MASK, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %9, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %9, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %9, align 4
  %155 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @tps_6507x_reg_write(%struct.tps_pmic* %155, i32 %156, i32 %157)
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %147, %145, %136, %80, %53, %26
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.tps_pmic* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @tps_6507x_reg_read(%struct.tps_pmic*, i32) #1

declare dso_local i32 @tps_6507x_reg_write(%struct.tps_pmic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
