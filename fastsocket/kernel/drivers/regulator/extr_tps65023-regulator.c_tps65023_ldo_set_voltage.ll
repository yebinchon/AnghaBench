; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps65023-regulator.c_tps65023_ldo_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps65023-regulator.c_tps65023_ldo_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps_pmic = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@TPS65023_LDO_1 = common dso_local global i32 0, align 4
@TPS65023_LDO_2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TPS65023_REG_LDO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @tps65023_ldo_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65023_ldo_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
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
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %15 = call %struct.tps_pmic* @rdev_get_drvdata(%struct.regulator_dev* %14)
  store %struct.tps_pmic* %15, %struct.tps_pmic** %8, align 8
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %17 = call i32 @rdev_get_id(%struct.regulator_dev* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @TPS65023_LDO_1, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @TPS65023_LDO_2, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %165

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %31 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %29, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %43 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %44, i64 %46
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %41, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %40, %28
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %165

55:                                               ; preds = %40
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %58 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %56, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %70 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %71, i64 %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %68, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %67, %55
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %165

82:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %120, %82
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %86 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %87, i64 %89
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %84, %93
  br i1 %94, label %95, label %123

95:                                               ; preds = %83
  %96 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %97 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %98, i64 %100
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = mul nsw i32 %109, 1000
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %95
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %123

119:                                              ; preds = %114, %95
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %83

123:                                              ; preds = %118, %83
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %126 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %127, i64 %129
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %124, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %123
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %165

138:                                              ; preds = %123
  %139 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %140 = load i32, i32* @TPS65023_REG_LDO_CTRL, align 4
  %141 = call i32 @tps_65023_reg_read(%struct.tps_pmic* %139, i32 %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %4, align 4
  br label %165

146:                                              ; preds = %138
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @TPS65023_LDO_1, align 4
  %149 = sub nsw i32 %147, %148
  %150 = call i32 @TPS65023_LDO_CTRL_LDOx_MASK(i32 %149)
  %151 = load i32, i32* %9, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @TPS65023_LDO_1, align 4
  %156 = sub nsw i32 %154, %155
  %157 = call i32 @TPS65023_LDO_CTRL_LDOx_SHIFT(i32 %156)
  %158 = shl i32 %153, %157
  %159 = load i32, i32* %9, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %9, align 4
  %161 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %162 = load i32, i32* @TPS65023_REG_LDO_CTRL, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @tps_65023_reg_write(%struct.tps_pmic* %161, i32 %162, i32 %163)
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %146, %144, %135, %79, %52, %25
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local %struct.tps_pmic* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @tps_65023_reg_read(%struct.tps_pmic*, i32) #1

declare dso_local i32 @TPS65023_LDO_CTRL_LDOx_MASK(i32) #1

declare dso_local i32 @TPS65023_LDO_CTRL_LDOx_SHIFT(i32) #1

declare dso_local i32 @tps_65023_reg_write(%struct.tps_pmic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
