; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_set_pwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_set_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adm1031_data = type { i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@ADM1031_CONF1_AUTO_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@ADM1031_REG_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.adm1031_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.i2c_client* @to_i2c_client(%struct.device* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %18 = call %struct.adm1031_data* @i2c_get_clientdata(%struct.i2c_client* %17)
  store %struct.adm1031_data* %18, %struct.adm1031_data** %11, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @simple_strtol(i8* %23, i32* null, i32 10)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %26 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %29 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ADM1031_CONF1_AUTO_MODE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %4
  %35 = load i32, i32* %13, align 4
  %36 = ashr i32 %35, 4
  %37 = and i32 %36, 15
  %38 = icmp ne i32 %37, 5
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %41 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %40, i32 0, i32 2
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %5, align 8
  br label %93

45:                                               ; preds = %34, %4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @PWM_TO_REG(i32 %46)
  %48 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %49 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %55 = load i32, i32* @ADM1031_REG_PWM, align 4
  %56 = call i32 @adm1031_read_value(%struct.i2c_client* %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %58 = load i32, i32* @ADM1031_REG_PWM, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %45
  %62 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %63 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 4
  %70 = and i32 %69, 240
  %71 = load i32, i32* %14, align 4
  %72 = and i32 %71, 15
  %73 = or i32 %70, %72
  br label %86

74:                                               ; preds = %45
  %75 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %76 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 15
  %83 = load i32, i32* %14, align 4
  %84 = and i32 %83, 240
  %85 = or i32 %82, %84
  br label %86

86:                                               ; preds = %74, %61
  %87 = phi i32 [ %73, %61 ], [ %85, %74 ]
  %88 = call i32 @adm1031_write_value(%struct.i2c_client* %57, i32 %58, i32 %87)
  %89 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %90 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %89, i32 0, i32 2
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i64, i64* %9, align 8
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %86, %39
  %94 = load i64, i64* %5, align 8
  ret i64 %94
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm1031_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @PWM_TO_REG(i32) #1

declare dso_local i32 @adm1031_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @adm1031_write_value(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
