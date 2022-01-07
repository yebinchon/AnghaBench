; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_max1586.c_max1586_v6_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_max1586.c_max1586_v6_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.i2c_client = type { i32 }

@MAX1586_V6_MIN_UV = common dso_local global i32 0, align 4
@MAX1586_V6_MAX_UV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"changing voltage v6 to %dmv\0A\00", align 1
@I2C_V6_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @max1586_v6_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1586_v6_set(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %12 = call %struct.i2c_client* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MAX1586_V6_MIN_UV, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MAX1586_V6_MAX_UV, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %71

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MAX1586_V6_MIN_UV, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MAX1586_V6_MAX_UV, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %71

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %35, 3000000
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 3, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 3000000
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 2, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 2500000
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 1800000
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @max1586_v6_calc_voltage(i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %71

58:                                               ; preds = %50
  %59 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @max1586_v6_calc_voltage(i32 %61)
  %63 = sdiv i32 %62, 1000
  %64 = call i32 @dev_dbg(i32* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @I2C_V6_SELECT, align 4
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %10, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %58, %55, %31, %20
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.i2c_client* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @max1586_v6_calc_voltage(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
