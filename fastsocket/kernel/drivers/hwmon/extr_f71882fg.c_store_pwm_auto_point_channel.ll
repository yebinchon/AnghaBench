; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_pwm_auto_point_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_pwm_auto_point_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i32*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_auto_point_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_auto_point_channel(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.f71882fg_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.f71882fg_data* %14, %struct.f71882fg_data** %10, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @simple_strtol(i8* %19, i32* null, i32 10)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  switch i64 %21, label %25 [
    i64 1, label %22
    i64 2, label %23
    i64 4, label %24
  ]

22:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  br label %28

23:                                               ; preds = %4
  store i64 1, i64* %12, align 8
  br label %28

24:                                               ; preds = %4
  store i64 2, i64* %12, align 8
  br label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %75

28:                                               ; preds = %24, %23, %22
  %29 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %30 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* %12, align 8
  %34 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %35 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @F71882FG_REG_POINT_MAPPING(i32 %38)
  %40 = call i32 @f71882fg_read8(%struct.f71882fg_data* %37, i32 %39)
  %41 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %42 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %48 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 252
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %12, align 8
  %57 = or i64 %55, %56
  store i64 %57, i64* %12, align 8
  %58 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @F71882FG_REG_POINT_MAPPING(i32 %59)
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @f71882fg_write8(%struct.f71882fg_data* %58, i32 %60, i64 %61)
  %63 = load i64, i64* %12, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %66 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %72 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i64, i64* %9, align 8
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %28, %25
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

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
