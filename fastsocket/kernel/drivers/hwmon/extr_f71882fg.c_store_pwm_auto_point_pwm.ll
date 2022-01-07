; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_pwm_auto_point_pwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_pwm_auto_point_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i32, i64**, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@F71882FG_REG_PWM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_auto_point_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_auto_point_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.f71882fg_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.f71882fg_data* %14, %struct.f71882fg_data** %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %20 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @simple_strtol(i8* %23, i32* null, i32 10)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @SENSORS_LIMIT(i64 %25, i32 0, i32 255)
  store i64 %26, i64* %12, align 8
  %27 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %28 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %31 = load i32, i32* @F71882FG_REG_PWM_ENABLE, align 4
  %32 = call i32 @f71882fg_read8(%struct.f71882fg_data* %30, i32 %31)
  %33 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %34 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %36 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 2, %38
  %40 = shl i32 1, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %4
  br label %55

44:                                               ; preds = %4
  %45 = load i64, i64* %12, align 8
  %46 = icmp slt i64 %45, 29
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i64 255, i64* %12, align 8
  br label %54

48:                                               ; preds = %44
  %49 = load i64, i64* %12, align 8
  %50 = sub nsw i64 255, %49
  %51 = mul nsw i64 %50, 32
  %52 = load i64, i64* %12, align 8
  %53 = sdiv i64 %51, %52
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %48, %47
  br label %55

55:                                               ; preds = %54, %43
  %56 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @F71882FG_REG_POINT_PWM(i32 %57, i32 %58)
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @f71882fg_write8(%struct.f71882fg_data* %56, i32 %59, i64 %60)
  %62 = load i64, i64* %12, align 8
  %63 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %64 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %63, i32 0, i32 1
  %65 = load i64**, i64*** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64*, i64** %65, i64 %67
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %62, i64* %72, align 8
  %73 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %74 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %73, i32 0, i32 2
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i64, i64* %8, align 8
  ret i64 %76
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i64 @SENSORS_LIMIT(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i64) #1

declare dso_local i32 @F71882FG_REG_POINT_PWM(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
