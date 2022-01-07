; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_da903x.c_da9034_set_ldo12_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_da903x.c_da9034_set_ldo12_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da903x_regulator_info = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"invalid voltage range (%d, %d) uV\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @da9034_set_ldo12_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9034_set_ldo12_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
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
  br label %78

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
  %42 = load i32, i32* %10, align 4
  %43 = icmp sge i32 %42, 20
  br i1 %43, label %44, label %47

44:                                               ; preds = %27
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %45, 12
  br label %55

47:                                               ; preds = %27
  %48 = load i32, i32* %10, align 4
  %49 = icmp sgt i32 %48, 7
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi i32 [ 8, %50 ], [ %52, %51 ]
  br label %55

55:                                               ; preds = %53, %44
  %56 = phi i32 [ %46, %44 ], [ %54, %53 ]
  store i32 %56, i32* %10, align 4
  %57 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %58 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %63 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 1, %64
  %66 = sub nsw i32 %65, 1
  %67 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %68 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %66, %69
  store i32 %70, i32* %11, align 4
  %71 = load %struct.device*, %struct.device** %9, align 8
  %72 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %73 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @da903x_update(%struct.device* %71, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %55, %21
  %79 = load i32, i32* %4, align 4
  ret i32 %79
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
