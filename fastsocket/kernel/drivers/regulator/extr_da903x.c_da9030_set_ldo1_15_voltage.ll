; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_da903x.c_da9030_set_ldo1_15_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_da903x.c_da9030_set_ldo1_15_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da903x_regulator_info = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"invalid voltage range (%d, %d) uV\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DA9030_LDO_UNLOCK = common dso_local global i32 0, align 4
@DA9030_LDO_UNLOCK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @da9030_set_ldo1_15_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9030_set_ldo1_15_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.da903x_regulator_info*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = call %struct.da903x_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %13)
  store %struct.da903x_regulator_info* %14, %struct.da903x_regulator_info** %8, align 8
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %16 = call %struct.device* @to_da903x_dev(%struct.regulator_dev* %15)
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @check_range(%struct.da903x_regulator_info* %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %82

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %31 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  %34 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %35 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = sub nsw i32 %37, 1
  %39 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %40 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %38, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %44 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %49 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %54 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %52, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* @DA9030_LDO_UNLOCK, align 4
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @DA9030_LDO_UNLOCK_MASK, align 4
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load %struct.device*, %struct.device** %9, align 8
  %64 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %65 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @da903x_update(%struct.device* %63, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %28
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %4, align 4
  br label %82

74:                                               ; preds = %28
  %75 = load %struct.device*, %struct.device** %9, align 8
  %76 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %77 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @da903x_update(%struct.device* %75, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %74, %72, %22
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.da903x_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local %struct.device* @to_da903x_dev(%struct.regulator_dev*) #1

declare dso_local i64 @check_range(%struct.da903x_regulator_info*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @da903x_update(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
