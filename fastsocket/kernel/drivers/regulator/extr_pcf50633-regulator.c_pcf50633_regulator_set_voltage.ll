; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_pcf50633-regulator.c_pcf50633_regulator_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_pcf50633-regulator.c_pcf50633_regulator_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.pcf50633 = type { i32 }

@PCF50633_NUM_REGULATORS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pcf50633_regulator_registers = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @pcf50633_regulator_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_regulator_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcf50633*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = call %struct.pcf50633* @rdev_get_drvdata(%struct.regulator_dev* %13)
  store %struct.pcf50633* %14, %struct.pcf50633** %8, align 8
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %16 = call i32 @rdev_get_id(%struct.regulator_dev* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @PCF50633_NUM_REGULATORS, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %52

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = sdiv i32 %24, 1000
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** @pcf50633_regulator_registers, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %44 [
    i32 137, label %32
    i32 136, label %35
    i32 135, label %38
    i32 133, label %41
    i32 132, label %41
    i32 131, label %41
    i32 130, label %41
    i32 129, label %41
    i32 128, label %41
    i32 134, label %41
  ]

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @auto_voltage_bits(i32 %33)
  store i32 %34, i32* %11, align 4
  br label %47

35:                                               ; preds = %23
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @down_voltage_bits(i32 %36)
  store i32 %37, i32* %11, align 4
  br label %47

38:                                               ; preds = %23
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @down_voltage_bits(i32 %39)
  store i32 %40, i32* %11, align 4
  br label %47

41:                                               ; preds = %23, %23, %23, %23, %23, %23, %23
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @ldo_voltage_bits(i32 %42)
  store i32 %43, i32* %11, align 4
  br label %47

44:                                               ; preds = %23
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %41, %38, %35, %32
  %48 = load %struct.pcf50633*, %struct.pcf50633** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @pcf50633_reg_write(%struct.pcf50633* %48, i32 %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %44, %20
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.pcf50633* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @auto_voltage_bits(i32) #1

declare dso_local i32 @down_voltage_bits(i32) #1

declare dso_local i32 @ldo_voltage_bits(i32) #1

declare dso_local i32 @pcf50633_reg_write(%struct.pcf50633*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
