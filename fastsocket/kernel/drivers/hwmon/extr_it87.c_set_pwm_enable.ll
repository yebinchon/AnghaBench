; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_it87.c_set_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_it87.c_set_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.it87_data = type { i32, i32, i32* }

@IT87_REG_FAN_CTL = common dso_local global i32 0, align 4
@IT87_REG_FAN_MAIN_CTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.it87_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %10, align 8
  %17 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %20)
  store %struct.it87_data* %21, %struct.it87_data** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @simple_strtol(i8* %22, i32* null, i32 10)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %25 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %4
  %30 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %31 = load i32, i32* @IT87_REG_FAN_CTL, align 4
  %32 = call i32 @it87_read_value(%struct.it87_data* %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %34 = load i32, i32* @IT87_REG_FAN_CTL, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %11, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = call i32 @it87_write_value(%struct.it87_data* %33, i32 %34, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = shl i32 1, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %44 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %48 = load i32, i32* @IT87_REG_FAN_MAIN_CTRL, align 4
  %49 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %50 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @it87_write_value(%struct.it87_data* %47, i32 %48, i32 %51)
  br label %88

53:                                               ; preds = %4
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %81

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = shl i32 1, %57
  %59 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %60 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %64 = load i32, i32* @IT87_REG_FAN_MAIN_CTRL, align 4
  %65 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %66 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @it87_write_value(%struct.it87_data* %63, i32 %64, i32 %67)
  %69 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @IT87_REG_PWM(i32 %70)
  %72 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %73 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PWM_TO_REG(i32 %78)
  %80 = call i32 @it87_write_value(%struct.it87_data* %69, i32 %71, i32 %79)
  br label %87

81:                                               ; preds = %53
  %82 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %83 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i64, i64* @EINVAL, align 8
  %86 = sub i64 0, %85
  store i64 %86, i64* %5, align 8
  br label %93

87:                                               ; preds = %56
  br label %88

88:                                               ; preds = %87, %29
  %89 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %90 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i64, i64* %9, align 8
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %88, %81
  %94 = load i64, i64* %5, align 8
  ret i64 %94
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @it87_read_value(%struct.it87_data*, i32) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i32) #1

declare dso_local i32 @IT87_REG_PWM(i32) #1

declare dso_local i32 @PWM_TO_REG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
