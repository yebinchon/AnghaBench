; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71805f.c_set_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71805f.c_set_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71805f_data = type { i32*, i32 }
%struct.sensor_device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@f71805f_attr_pwm = common dso_local global i32* null, align 8
@S_IRUGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"chmod -w pwm%d failed\0A\00", align 1
@FAN_CTRL_MODE_MASK = common dso_local global i32 0, align 4
@FAN_CTRL_MODE_MANUAL = common dso_local global i32 0, align 4
@FAN_CTRL_MODE_TEMPERATURE = common dso_local global i32 0, align 4
@FAN_CTRL_MODE_SPEED = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"chmod +w pwm%d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.f71805f_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.f71805f_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.f71805f_data* %16, %struct.f71805f_data** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %11, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @simple_strtoul(i8* %22, i32* null, i32 10)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp ult i64 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %13, align 8
  %28 = icmp ugt i64 %27, 3
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %4
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %115

32:                                               ; preds = %26
  %33 = load i64, i64* %13, align 8
  %34 = icmp ugt i64 %33, 1
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = load i32*, i32** @f71805f_attr_pwm, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @S_IRUGO, align 4
  %44 = call i64 @sysfs_chmod_file(i32* %37, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @dev_dbg(%struct.device* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %35
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %54 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @F71805F_REG_FAN_CTRL(i32 %57)
  %59 = call i32 @f71805f_read8(%struct.f71805f_data* %56, i32 %58)
  %60 = load i32, i32* @FAN_CTRL_MODE_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  store i32 %62, i32* %14, align 4
  %63 = load i64, i64* %13, align 8
  switch i64 %63, label %76 [
    i64 1, label %64
    i64 2, label %68
    i64 3, label %72
  ]

64:                                               ; preds = %52
  %65 = load i32, i32* @FAN_CTRL_MODE_MANUAL, align 4
  %66 = load i32, i32* %14, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %14, align 4
  br label %76

68:                                               ; preds = %52
  %69 = load i32, i32* @FAN_CTRL_MODE_TEMPERATURE, align 4
  %70 = load i32, i32* %14, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %14, align 4
  br label %76

72:                                               ; preds = %52
  %73 = load i32, i32* @FAN_CTRL_MODE_SPEED, align 4
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %52, %72, %68, %64
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %79 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @F71805F_REG_FAN_CTRL(i32 %85)
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @f71805f_write8(%struct.f71805f_data* %84, i32 %86, i32 %87)
  %89 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %90 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i64, i64* %13, align 8
  %93 = icmp eq i64 %92, 1
  br i1 %93, label %94, label %113

94:                                               ; preds = %76
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = getelementptr inbounds %struct.device, %struct.device* %95, i32 0, i32 0
  %97 = load i32*, i32** @f71805f_attr_pwm, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @S_IRUGO, align 4
  %103 = load i32, i32* @S_IWUSR, align 4
  %104 = or i32 %102, %103
  %105 = call i64 @sysfs_chmod_file(i32* %96, i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %94
  %108 = load %struct.device*, %struct.device** %6, align 8
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  %111 = call i32 @dev_dbg(%struct.device* %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %107, %94
  br label %113

113:                                              ; preds = %112, %76
  %114 = load i64, i64* %9, align 8
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %113, %29
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local %struct.f71805f_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i64 @sysfs_chmod_file(i32*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f71805f_read8(%struct.f71805f_data*, i32) #1

declare dso_local i32 @F71805F_REG_FAN_CTRL(i32) #1

declare dso_local i32 @f71805f_write8(%struct.f71805f_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
