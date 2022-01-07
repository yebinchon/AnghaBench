; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_show_sf_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_show_sf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32 }
%struct.w83793_data = type { i32, i32, i32, i32 }

@SETUP_PWM_DEFAULT = common dso_local global i32 0, align 4
@SETUP_PWM_UPTIME = common dso_local global i32 0, align 4
@SETUP_PWM_DOWNTIME = common dso_local global i32 0, align 4
@SETUP_TEMP_CRITICAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_sf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_sf_setup(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sensor_device_attribute_2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.w83793_data*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %12 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %11)
  store %struct.sensor_device_attribute_2* %12, %struct.sensor_device_attribute_2** %7, align 8
  %13 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %7, align 8
  %14 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.w83793_data* @w83793_update_device(%struct.device* %16)
  store %struct.w83793_data* %17, %struct.w83793_data** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @SETUP_PWM_DEFAULT, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.w83793_data*, %struct.w83793_data** %9, align 8
  %23 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 63
  %26 = shl i32 %25, 2
  store i32 %26, i32* %10, align 4
  br label %58

27:                                               ; preds = %3
  %28 = load i32, i32* @SETUP_PWM_UPTIME, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.w83793_data*, %struct.w83793_data** %9, align 8
  %33 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @TIME_FROM_REG(i32 %34)
  store i32 %35, i32* %10, align 4
  br label %57

36:                                               ; preds = %27
  %37 = load i32, i32* @SETUP_PWM_DOWNTIME, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.w83793_data*, %struct.w83793_data** %9, align 8
  %42 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @TIME_FROM_REG(i32 %43)
  store i32 %44, i32* %10, align 4
  br label %56

45:                                               ; preds = %36
  %46 = load i32, i32* @SETUP_TEMP_CRITICAL, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.w83793_data*, %struct.w83793_data** %9, align 8
  %51 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 127
  %54 = call i32 @TEMP_FROM_REG(i32 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %49, %45
  br label %56

56:                                               ; preds = %55, %40
  br label %57

57:                                               ; preds = %56, %31
  br label %58

58:                                               ; preds = %57, %21
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %60)
  ret i32 %61
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.w83793_data* @w83793_update_device(%struct.device*) #1

declare dso_local i32 @TIME_FROM_REG(i32) #1

declare dso_local i32 @TEMP_FROM_REG(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
