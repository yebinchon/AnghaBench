; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_ab3100.c_ab3100_set_voltage_regulator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_ab3100.c_ab3100_set_voltage_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.ab3100_regulator* }
%struct.ab3100_regulator = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"failed to get regulator register %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to set regulator register %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @ab3100_set_voltage_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_set_voltage_regulator(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
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
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ab3100_get_best_voltage_index(%struct.regulator_dev* %15, i32 %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %67

23:                                               ; preds = %3
  %24 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %8, align 8
  %25 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %8, align 8
  %28 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ab3100_get_register_interruptible(i32 %26, i32 %29, i32* %9)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %35 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %34, i32 0, i32 0
  %36 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %8, align 8
  %37 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %67

41:                                               ; preds = %23
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, -225
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 %44, 5
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %8, align 8
  %49 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %8, align 8
  %52 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @ab3100_set_register_interruptible(i32 %50, i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %41
  %59 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %60 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %59, i32 0, i32 0
  %61 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %8, align 8
  %62 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_warn(i32* %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %58, %41
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %33, %21
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @ab3100_get_best_voltage_index(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @ab3100_get_register_interruptible(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @ab3100_set_register_interruptible(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
