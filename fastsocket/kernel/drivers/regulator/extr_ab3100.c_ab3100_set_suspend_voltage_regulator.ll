; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_ab3100.c_ab3100_set_suspend_voltage_regulator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_ab3100.c_ab3100_set_suspend_voltage_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.ab3100_regulator* }
%struct.ab3100_regulator = type { i64, i32 }

@AB3100_LDO_E = common dso_local global i64 0, align 8
@AB3100_LDO_E_SLEEP = common dso_local global i32 0, align 4
@AB3100_BUCK = common dso_local global i64 0, align 8
@AB3100_BUCK_SLEEP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to get regulator register %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to set regulator register %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @ab3100_set_suspend_voltage_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_set_suspend_voltage_regulator(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ab3100_regulator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %11, i32 0, i32 1
  %13 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %12, align 8
  store %struct.ab3100_regulator* %13, %struct.ab3100_regulator** %6, align 8
  %14 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %15 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AB3100_LDO_E, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @AB3100_LDO_E_SLEEP, align 4
  store i32 %20, i32* %10, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %23 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AB3100_BUCK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @AB3100_BUCK_SLEEP, align 4
  store i32 %28, i32* %10, align 4
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %76

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ab3100_get_best_voltage_index(%struct.regulator_dev* %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %39 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @ab3100_get_register_interruptible(i32 %40, i32 %41, i32* %7)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %33
  %46 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %47 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @dev_warn(i32* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %76

51:                                               ; preds = %33
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, -225
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 %54, 5
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %59 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ab3100_set_register_interruptible(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %51
  %67 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %68 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %67, i32 0, i32 0
  %69 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %70 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @dev_warn(i32* %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %66, %51
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %45, %29
  %77 = load i32, i32* %3, align 4
  ret i32 %77
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
