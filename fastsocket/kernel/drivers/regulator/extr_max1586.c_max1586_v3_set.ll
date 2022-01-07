; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_max1586.c_max1586_v3_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_max1586.c_max1586_v3_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max1586_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX1586_V3_MAX_VSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"changing voltage v3 to %dmv\0A\00", align 1
@I2C_V3_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @max1586_v3_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1586_v3_set(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.max1586_data*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = call %struct.max1586_data* @rdev_get_drvdata(%struct.regulator_dev* %13)
  store %struct.max1586_data* %14, %struct.max1586_data** %8, align 8
  %15 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %16 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %15, i32 0, i32 2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %9, align 8
  %18 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %19 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %22 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %20, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %27 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ugt i32 %25, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %33 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %84

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %42 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %47 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %52 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub i32 %50, %53
  %55 = load i32, i32* @MAX1586_V3_MAX_VSEL, align 4
  %56 = mul i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %56, %57
  %59 = sub i32 %58, 1
  %60 = load i32, i32* %10, align 4
  %61 = udiv i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @max1586_v3_calc_voltage(%struct.max1586_data* %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %49
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %84

70:                                               ; preds = %49
  %71 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @max1586_v3_calc_voltage(%struct.max1586_data* %73, i32 %74)
  %76 = sdiv i32 %75, 1000
  %77 = call i32 @dev_dbg(i32* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @I2C_V3_SELECT, align 4
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %12, align 4
  %81 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %70, %67, %36
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.max1586_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @max1586_v3_calc_voltage(%struct.max1586_data*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
