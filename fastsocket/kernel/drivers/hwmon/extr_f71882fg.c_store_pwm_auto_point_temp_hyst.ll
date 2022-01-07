; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_pwm_auto_point_temp_hyst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_pwm_auto_point_temp_hyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i32**, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_auto_point_temp_hyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_auto_point_temp_hyst(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.f71882fg_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.f71882fg_data* %15, %struct.f71882fg_data** %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %21 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @simple_strtol(i8* %24, i32* null, i32 10)
  %26 = sdiv i32 %25, 1000
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %12, align 8
  %28 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %29 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %28, i32 0, i32 2
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @F71882FG_REG_POINT_TEMP(i32 %32, i32 %33)
  %35 = call i8* @f71882fg_read8(%struct.f71882fg_data* %31, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %38 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %36, i32* %46, align 4
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %49 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 15
  %60 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %61 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @SENSORS_LIMIT(i64 %47, i32 %59, i32 %70)
  store i64 %71, i64* %12, align 8
  %72 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %73 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %12, align 8
  %85 = sub nsw i64 %83, %84
  store i64 %85, i64* %12, align 8
  %86 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sdiv i32 %87, 2
  %89 = call i32 @F71882FG_REG_FAN_HYST(i32 %88)
  %90 = call i8* @f71882fg_read8(%struct.f71882fg_data* %86, i32 %89)
  %91 = ptrtoint i8* %90 to i32
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %4
  %96 = load i32, i32* %13, align 4
  %97 = and i32 %96, 15
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %12, align 8
  %100 = shl i64 %99, 4
  %101 = or i64 %98, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %13, align 4
  br label %110

103:                                              ; preds = %4
  %104 = load i32, i32* %13, align 4
  %105 = and i32 %104, 240
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %12, align 8
  %108 = or i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %103, %95
  %111 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sdiv i32 %112, 2
  %114 = call i32 @F71882FG_REG_FAN_HYST(i32 %113)
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @f71882fg_write8(%struct.f71882fg_data* %111, i32 %114, i32 %115)
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %119 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sdiv i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %117, i32* %124, align 4
  %125 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %126 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %125, i32 0, i32 2
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i64, i64* %8, align 8
  ret i64 %128
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @F71882FG_REG_POINT_TEMP(i32, i32) #1

declare dso_local i64 @SENSORS_LIMIT(i64, i32, i32) #1

declare dso_local i32 @F71882FG_REG_FAN_HYST(i32) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
