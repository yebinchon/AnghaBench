; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_show_volt_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_show_volt_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.adt7462_data = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_volt_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_volt_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sensor_device_attribute*, align 8
  %8 = alloca %struct.adt7462_data*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %11 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %10)
  store %struct.sensor_device_attribute* %11, %struct.sensor_device_attribute** %7, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.adt7462_data* @adt7462_update_device(%struct.device* %12)
  store %struct.adt7462_data* %13, %struct.adt7462_data** %8, align 8
  %14 = load %struct.adt7462_data*, %struct.adt7462_data** %8, align 8
  %15 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %7, align 8
  %16 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @voltage_multiplier(%struct.adt7462_data* %14, i64 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.adt7462_data*, %struct.adt7462_data** %8, align 8
  %20 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %7, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sdiv i32 %29, 1000
  store i32 %30, i32* %9, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %32)
  ret i32 %33
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adt7462_data* @adt7462_update_device(%struct.device*) #1

declare dso_local i32 @voltage_multiplier(%struct.adt7462_data*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
