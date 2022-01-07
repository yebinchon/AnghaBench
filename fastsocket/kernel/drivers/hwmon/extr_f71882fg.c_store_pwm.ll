; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_pwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i32, i64, i64*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@F71882FG_REG_PWM_ENABLE = common dso_local global i32 0, align 4
@f8000 = common dso_local global i64 0, align 8
@EROFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.f71882fg_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
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
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @simple_strtol(i8* %20, i32* null, i32 10)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @SENSORS_LIMIT(i64 %22, i32 0, i32 255)
  store i64 %23, i64* %11, align 8
  %24 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %25 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %24, i32 0, i32 5
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %28 = load i32, i32* @F71882FG_REG_PWM_ENABLE, align 4
  %29 = call i32 @f71882fg_read8(%struct.f71882fg_data* %27, i32 %28)
  %30 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %31 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %33 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @f8000, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %4
  %38 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %39 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 2, %41
  %43 = ashr i32 %40, %42
  %44 = and i32 %43, 3
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %61, label %46

46:                                               ; preds = %37, %4
  %47 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %48 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @f8000, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %54 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = mul nsw i32 2, %56
  %58 = ashr i32 %55, %57
  %59 = and i32 %58, 2
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %52, %37
  %62 = load i64, i64* @EROFS, align 8
  %63 = sub i64 0, %62
  store i64 %63, i64* %8, align 8
  br label %117

64:                                               ; preds = %52, %46
  %65 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %66 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = mul nsw i32 2, %68
  %70 = shl i32 1, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %64
  %74 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @F71882FG_REG_PWM(i32 %75)
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @f71882fg_write8(%struct.f71882fg_data* %74, i32 %76, i64 %77)
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %81 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64 %79, i64* %85, align 8
  br label %116

86:                                               ; preds = %64
  %87 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @F71882FG_REG_FAN_FULL_SPEED(i32 %88)
  %90 = call i32 @f71882fg_read16(%struct.f71882fg_data* %87, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i64, i64* %11, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i64 @fan_from_reg(i32 %92)
  %94 = mul nsw i64 %91, %93
  %95 = sdiv i64 %94, 255
  %96 = call i32 @fan_to_reg(i64 %95)
  store i32 %96, i32* %12, align 4
  %97 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @F71882FG_REG_FAN_TARGET(i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @f71882fg_write16(%struct.f71882fg_data* %97, i32 %99, i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %104 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %111 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  br label %116

116:                                              ; preds = %86, %73
  br label %117

117:                                              ; preds = %116, %61
  %118 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %119 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %118, i32 0, i32 5
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i64, i64* %8, align 8
  ret i64 %121
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i64 @SENSORS_LIMIT(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i64) #1

declare dso_local i32 @F71882FG_REG_PWM(i32) #1

declare dso_local i32 @f71882fg_read16(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @F71882FG_REG_FAN_FULL_SPEED(i32) #1

declare dso_local i32 @fan_to_reg(i64) #1

declare dso_local i64 @fan_from_reg(i32) #1

declare dso_local i32 @f71882fg_write16(%struct.f71882fg_data*, i32, i32) #1

declare dso_local i32 @F71882FG_REG_FAN_TARGET(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
