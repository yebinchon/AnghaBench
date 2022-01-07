; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_da903x.c_da9030_get_ldo14_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_da903x.c_da9030_get_ldo14_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da903x_regulator_info = type { i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @da9030_get_ldo14_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9030_get_ldo14_voltage(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.da903x_regulator_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.da903x_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.da903x_regulator_info* %10, %struct.da903x_regulator_info** %4, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call %struct.device* @to_da903x_dev(%struct.regulator_dev* %11)
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %15 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @da903x_read(%struct.device* %13, i32 %16, i32* %6)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %70

22:                                               ; preds = %1
  %23 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %24 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  %28 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %29 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %27, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %36 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %34, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %22
  %43 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %44 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %47 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, -5
  %51 = sub nsw i32 3, %50
  %52 = mul nsw i32 %48, %51
  %53 = add nsw i32 %45, %52
  store i32 %53, i32* %2, align 4
  br label %70

54:                                               ; preds = %22
  %55 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %56 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %59 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = sdiv i32 %61, 2
  %63 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %64 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, -5
  %68 = mul nsw i32 %65, %67
  %69 = add nsw i32 %62, %68
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %54, %42, %20
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.da903x_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local %struct.device* @to_da903x_dev(%struct.regulator_dev*) #1

declare dso_local i32 @da903x_read(%struct.device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
