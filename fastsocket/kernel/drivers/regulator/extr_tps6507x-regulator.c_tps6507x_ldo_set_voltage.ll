; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps6507x-regulator.c_tps6507x_ldo_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps6507x-regulator.c_tps6507x_ldo_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps_pmic = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@TPS6507X_LDO_1 = common dso_local global i32 0, align 4
@TPS6507X_LDO_2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TPS6507X_REG_LDO_CTRL1 = common dso_local global i32 0, align 4
@TPS6507X_REG_DEFLDO2 = common dso_local global i32 0, align 4
@TPS6507X_REG_LDO_CTRL1_LDO1_MASK = common dso_local global i32 0, align 4
@TPS6507X_REG_DEFLDO2_LDO2_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @tps6507x_ldo_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6507x_ldo_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
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
  %15 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %17 = call %struct.tps_pmic* @rdev_get_drvdata(%struct.regulator_dev* %16)
  store %struct.tps_pmic* %17, %struct.tps_pmic** %8, align 8
  %18 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %19 = call i32 @rdev_get_id(%struct.regulator_dev* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @TPS6507X_LDO_1, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @TPS6507X_LDO_2, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %179

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @TPS6507X_LDO_1, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @TPS6507X_REG_LDO_CTRL1, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @TPS6507X_REG_DEFLDO2, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @TPS6507X_LDO_1, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @TPS6507X_REG_LDO_CTRL1_LDO1_MASK, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @TPS6507X_REG_DEFLDO2_LDO2_MASK, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %52 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %50, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %64 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %65, i64 %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %62, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %61, %49
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %179

76:                                               ; preds = %61
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %79 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %80, i64 %82
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %77, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %91 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %92, i64 %94
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %89, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %88, %76
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %179

103:                                              ; preds = %88
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %141, %103
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %107 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %108, i64 %110
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %105, %114
  br i1 %115, label %116, label %144

116:                                              ; preds = %104
  %117 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %118 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %119, i64 %121
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = mul nsw i32 %130, 1000
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %116
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %144

140:                                              ; preds = %135, %116
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %104

144:                                              ; preds = %139, %104
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %147 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %148, i64 %150
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %145, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %144
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %179

159:                                              ; preds = %144
  %160 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @tps_6507x_reg_read(%struct.tps_pmic* %160, i32 %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %4, align 4
  br label %179

167:                                              ; preds = %159
  %168 = load i32, i32* %13, align 4
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %9, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %9, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %9, align 4
  %175 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @tps_6507x_reg_write(%struct.tps_pmic* %175, i32 %176, i32 %177)
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %167, %165, %156, %100, %73, %27
  %180 = load i32, i32* %4, align 4
  ret i32 %180
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
