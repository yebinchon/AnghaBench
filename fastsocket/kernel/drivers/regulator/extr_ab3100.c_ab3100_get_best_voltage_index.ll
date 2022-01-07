; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_ab3100.c_ab3100_get_best_voltage_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_ab3100.c_ab3100_get_best_voltage_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.ab3100_regulator* }
%struct.ab3100_regulator = type { i32, i32* }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"requested %d<=x<=%d uV, out of range!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @ab3100_get_best_voltage_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_get_best_voltage_index(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ab3100_regulator*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %13 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %12, i32 0, i32 1
  %14 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %13, align 8
  store %struct.ab3100_regulator* %14, %struct.ab3100_regulator** %8, align 8
  %15 = load i32, i32* @INT_MAX, align 4
  store i32 %15, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %62, %3
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %8, align 8
  %19 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %16
  %23 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %8, align 8
  %24 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %22
  %33 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %8, align 8
  %34 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %32
  %43 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %8, align 8
  %44 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %8, align 8
  %54 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %52, %42, %32, %22
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %16

65:                                               ; preds = %16
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %70 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @dev_warn(i32* %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %68
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
