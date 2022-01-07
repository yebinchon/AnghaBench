; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_show_temp8.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_show_temp8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.lm90_data = type { i64, i32* }

@adt7461 = common dso_local global i64 0, align 8
@max6646 = common dso_local global i64 0, align 8
@lm99 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_temp8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_temp8(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sensor_device_attribute*, align 8
  %8 = alloca %struct.lm90_data*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %11 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %10)
  store %struct.sensor_device_attribute* %11, %struct.sensor_device_attribute** %7, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.lm90_data* @lm90_update_device(%struct.device* %12)
  store %struct.lm90_data* %13, %struct.lm90_data** %8, align 8
  %14 = load %struct.lm90_data*, %struct.lm90_data** %8, align 8
  %15 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @adt7461, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.lm90_data*, %struct.lm90_data** %8, align 8
  %21 = load %struct.lm90_data*, %struct.lm90_data** %8, align 8
  %22 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %7, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @temp_from_u8_adt7461(%struct.lm90_data* %20, i32 %28)
  store i32 %29, i32* %9, align 4
  br label %57

30:                                               ; preds = %3
  %31 = load %struct.lm90_data*, %struct.lm90_data** %8, align 8
  %32 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @max6646, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.lm90_data*, %struct.lm90_data** %8, align 8
  %38 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %7, align 8
  %41 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @temp_from_u8(i32 %44)
  store i32 %45, i32* %9, align 4
  br label %56

46:                                               ; preds = %30
  %47 = load %struct.lm90_data*, %struct.lm90_data** %8, align 8
  %48 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %7, align 8
  %51 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @temp_from_s8(i32 %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %46, %36
  br label %57

57:                                               ; preds = %56, %19
  %58 = load %struct.lm90_data*, %struct.lm90_data** %8, align 8
  %59 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @lm99, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %7, align 8
  %65 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 3
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 16000
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %63, %57
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @sprintf(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %73)
  ret i32 %74
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm90_data* @lm90_update_device(%struct.device*) #1

declare dso_local i32 @temp_from_u8_adt7461(%struct.lm90_data*, i32) #1

declare dso_local i32 @temp_from_u8(i32) #1

declare dso_local i32 @temp_from_s8(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
