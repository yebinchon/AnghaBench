; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_pwm_interpolate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_pwm_interpolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_interpolate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_interpolate(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.f71882fg_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.f71882fg_data* %13, %struct.f71882fg_data** %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @simple_strtoul(i8* %18, i32* null, i32 10)
  store i64 %19, i64* %11, align 8
  %20 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %21 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @F71882FG_REG_POINT_MAPPING(i32 %24)
  %26 = call i32 @f71882fg_read8(%struct.f71882fg_data* %23, i32 %25)
  %27 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %28 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %4
  %36 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %37 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, 16
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %11, align 8
  br label %55

45:                                               ; preds = %4
  %46 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %47 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, -17
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %45, %35
  %56 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @F71882FG_REG_POINT_MAPPING(i32 %57)
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @f71882fg_write8(%struct.f71882fg_data* %56, i32 %58, i64 %59)
  %61 = load i64, i64* %11, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %64 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  %69 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %70 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i64, i64* %8, align 8
  ret i64 %72
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @F71882FG_REG_POINT_MAPPING(i32) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
