; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_twl4030-regulator.c_twl4030reg_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_twl4030-regulator.c_twl4030reg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twlreg_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.platform_device = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.regulator_init_data* }
%struct.regulator_init_data = type { %struct.regulation_constraints }
%struct.regulation_constraints = type { i32, i32 }
%struct.regulator_dev = type { i32 }

@twl4030_regs = common dso_local global %struct.twlreg_info* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_VOLTAGE = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_MODE = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't register %s, %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl4030reg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030reg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.twlreg_info*, align 8
  %6 = alloca %struct.regulator_init_data*, align 8
  %7 = alloca %struct.regulation_constraints*, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.twlreg_info* null, %struct.twlreg_info** %5, align 8
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.twlreg_info*, %struct.twlreg_info** @twl4030_regs, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.twlreg_info* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = load %struct.twlreg_info*, %struct.twlreg_info** @twl4030_regs, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %15, i64 %17
  %19 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %32

27:                                               ; preds = %14
  %28 = load %struct.twlreg_info*, %struct.twlreg_info** @twl4030_regs, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %28, i64 %30
  store %struct.twlreg_info* %31, %struct.twlreg_info** %5, align 8
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %9

35:                                               ; preds = %27, %9
  %36 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %37 = icmp ne %struct.twlreg_info* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %96

41:                                               ; preds = %35
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.regulator_init_data*, %struct.regulator_init_data** %44, align 8
  store %struct.regulator_init_data* %45, %struct.regulator_init_data** %6, align 8
  %46 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %47 = icmp ne %struct.regulator_init_data* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %96

51:                                               ; preds = %41
  %52 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %53 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %52, i32 0, i32 0
  store %struct.regulation_constraints* %53, %struct.regulation_constraints** %7, align 8
  %54 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  %55 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.regulation_constraints*, %struct.regulation_constraints** %7, align 8
  %58 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @REGULATOR_CHANGE_VOLTAGE, align 4
  %62 = load i32, i32* @REGULATOR_CHANGE_MODE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @REGULATOR_CHANGE_STATUS, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.regulation_constraints*, %struct.regulation_constraints** %7, align 8
  %67 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %71 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %70, i32 0, i32 0
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 1
  %74 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %75 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %76 = call %struct.regulator_dev* @regulator_register(%struct.TYPE_4__* %71, %struct.TYPE_5__* %73, %struct.regulator_init_data* %74, %struct.twlreg_info* %75)
  store %struct.regulator_dev* %76, %struct.regulator_dev** %8, align 8
  %77 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %78 = call i64 @IS_ERR(%struct.regulator_dev* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %51
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 1
  %83 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %84 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %88 = call i32 @PTR_ERR(%struct.regulator_dev* %87)
  %89 = call i32 @dev_err(%struct.TYPE_5__* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %88)
  %90 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %91 = call i32 @PTR_ERR(%struct.regulator_dev* %90)
  store i32 %91, i32* %2, align 4
  br label %96

92:                                               ; preds = %51
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %95 = call i32 @platform_set_drvdata(%struct.platform_device* %93, %struct.regulator_dev* %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %80, %48, %38
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @ARRAY_SIZE(%struct.twlreg_info*) #1

declare dso_local %struct.regulator_dev* @regulator_register(%struct.TYPE_4__*, %struct.TYPE_5__*, %struct.regulator_init_data*, %struct.twlreg_info*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
