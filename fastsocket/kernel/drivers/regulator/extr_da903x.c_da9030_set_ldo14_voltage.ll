; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_da903x.c_da9030_set_ldo14_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_da903x.c_da9030_set_ldo14_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da903x_regulator_info = type { i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"invalid voltage range (%d, %d) uV\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @da9030_set_ldo14_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9030_set_ldo14_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
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
  br label %90

28:                                               ; preds = %3
  %29 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %30 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %33 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = sdiv i32 %35, 2
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %28
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %45 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %50 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %48, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, 4
  store i32 %54, i32* %10, align 4
  br label %68

55:                                               ; preds = %28
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %60 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %65 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %63, %66
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %55, %40
  %69 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %70 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = shl i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %75 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 1, %76
  %78 = sub nsw i32 %77, 1
  %79 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %80 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %78, %81
  store i32 %82, i32* %11, align 4
  %83 = load %struct.device*, %struct.device** %9, align 8
  %84 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %85 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @da903x_update(%struct.device* %83, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %68, %22
  %91 = load i32, i32* %4, align 4
  ret i32 %91
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
