; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_twl4030-regulator.c_twl4030reg_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_twl4030-regulator.c_twl4030reg_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.twlreg_info = type { i32 }

@DEV_GRP_P1 = common dso_local global i32 0, align 4
@RES_STATE_ACTIVE = common dso_local global i32 0, align 4
@RES_STATE_SLEEP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@P3_GRP = common dso_local global i32 0, align 4
@P2_GRP = common dso_local global i32 0, align 4
@P1_GRP = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@TWL4030_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @twl4030reg_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030reg_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.twlreg_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.twlreg_info* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.twlreg_info* %10, %struct.twlreg_info** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %26 [
    i32 129, label %12
    i32 128, label %19
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @DEV_GRP_P1, align 4
  %14 = load %struct.twlreg_info*, %struct.twlreg_info** %6, align 8
  %15 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RES_STATE_ACTIVE, align 4
  %18 = call i32 @MSG_SINGULAR(i32 %13, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  br label %29

19:                                               ; preds = %2
  %20 = load i32, i32* @DEV_GRP_P1, align 4
  %21 = load %struct.twlreg_info*, %struct.twlreg_info** %6, align 8
  %22 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RES_STATE_SLEEP, align 4
  %25 = call i32 @MSG_SINGULAR(i32 %20, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %61

29:                                               ; preds = %19, %12
  %30 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %31 = call i32 @twl4030reg_grp(%struct.regulator_dev* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %61

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @P3_GRP, align 4
  %39 = load i32, i32* @P2_GRP, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @P1_GRP, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %37, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @EACCES, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %61

48:                                               ; preds = %36
  %49 = load i32, i32* @TWL4030_MODULE_PM_MASTER, align 4
  %50 = load i32, i32* %7, align 4
  %51 = lshr i32 %50, 8
  %52 = call i32 @twl4030_i2c_write_u8(i32 %49, i32 %51, i32 21)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %61

57:                                               ; preds = %48
  %58 = load i32, i32* @TWL4030_MODULE_PM_MASTER, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @twl4030_i2c_write_u8(i32 %58, i32 %59, i32 22)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %55, %45, %34, %26
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.twlreg_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @MSG_SINGULAR(i32, i32, i32) #1

declare dso_local i32 @twl4030reg_grp(%struct.regulator_dev*) #1

declare dso_local i32 @twl4030_i2c_write_u8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
