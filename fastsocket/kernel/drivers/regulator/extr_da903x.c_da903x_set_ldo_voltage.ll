; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_da903x.c_da903x_set_ldo_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_da903x.c_da903x_set_ldo_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da903x_regulator_info = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"invalid voltage range (%d, %d) uV\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @da903x_set_ldo_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da903x_set_ldo_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.da903x_regulator_info*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %13 = call %struct.da903x_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %12)
  store %struct.da903x_regulator_info* %13, %struct.da903x_regulator_info** %8, align 8
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %15 = call %struct.device* @to_da903x_dev(%struct.regulator_dev* %14)
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @check_range(%struct.da903x_regulator_info* %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %63

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %30 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  %33 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %34 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = sub nsw i32 %36, 1
  %38 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %39 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %37, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %43 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %48 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  %51 = sub nsw i32 %50, 1
  %52 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %53 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %51, %54
  store i32 %55, i32* %11, align 4
  %56 = load %struct.device*, %struct.device** %9, align 8
  %57 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %58 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @da903x_update(%struct.device* %56, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %27, %21
  %64 = load i32, i32* %4, align 4
  ret i32 %64
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
