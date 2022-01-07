; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_ab3100.c_ab3100_disable_regulator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_ab3100.c_ab3100_disable_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.ab3100_regulator* }
%struct.ab3100_regulator = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@AB3100_LDO_D = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"disabling LDO D - shut down system\0A\00", align 1
@ab3100_reg_init_order = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to get register 0x%x\0A\00", align 1
@AB3100_REG_ON_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @ab3100_disable_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_disable_regulator(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.ab3100_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %8, i32 0, i32 1
  %10 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %9, align 8
  store %struct.ab3100_regulator* %10, %struct.ab3100_regulator** %4, align 8
  %11 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %12 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AB3100_LDO_D, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %1
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %18 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %17, i32 0, i32 0
  %19 = call i32 @dev_info(i32* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %44, %16
  %21 = load i32, i32* %7, align 4
  %22 = load i64*, i64** @ab3100_reg_init_order, align 8
  %23 = call i32 @ARRAY_SIZE(i64* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %27 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i64*, i64** @ab3100_reg_init_order, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %35 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ab3100_set_register_interruptible(i32 %28, i64 %33, i32 %42)
  br label %44

44:                                               ; preds = %25
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %20

47:                                               ; preds = %20
  %48 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %49 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* @AB3100_LDO_D, align 8
  %52 = call i32 @ab3100_set_register_interruptible(i32 %50, i64 %51, i32 0)
  store i32 %52, i32* %2, align 4
  br label %84

53:                                               ; preds = %1
  %54 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %55 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %58 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ab3100_get_register_interruptible(i32 %56, i64 %59, i32* %6)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %65 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %64, i32 0, i32 0
  %66 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %67 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %84

71:                                               ; preds = %53
  %72 = load i32, i32* @AB3100_REG_ON_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %77 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %80 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @ab3100_set_register_interruptible(i32 %78, i64 %81, i32 %82)
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %71, %63, %47
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @ab3100_set_register_interruptible(i32, i64, i32) #1

declare dso_local i32 @ab3100_get_register_interruptible(i32, i64, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
