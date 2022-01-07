; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_ab3100.c_ab3100_get_voltage_regulator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_ab3100.c_ab3100_get_voltage_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.ab3100_regulator* }
%struct.ab3100_regulator = type { i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"failed to get regulator value in register %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"regulator register %02x contains an illegal voltage setting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @ab3100_get_voltage_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_get_voltage_regulator(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.ab3100_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %7, i32 0, i32 1
  %9 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %8, align 8
  store %struct.ab3100_regulator* %9, %struct.ab3100_regulator** %4, align 8
  %10 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %11 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %16 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %2, align 4
  br label %63

18:                                               ; preds = %1
  %19 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %20 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %23 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ab3100_get_register_interruptible(i32 %21, i32 %24, i32* %5)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %18
  %29 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %30 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %29, i32 0, i32 0
  %31 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %32 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %63

36:                                               ; preds = %18
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 224
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 5
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %43 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %36
  %47 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %48 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %47, i32 0, i32 0
  %49 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %50 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %63

55:                                               ; preds = %36
  %56 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %57 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %55, %46, %28, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @ab3100_get_register_interruptible(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
