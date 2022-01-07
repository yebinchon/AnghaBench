; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_coretemp.c_show_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_coretemp.c_show_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.platform_data = type { %struct.temp_data** }
%struct.temp_data = type { i32, i32, i32, i32, i64, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.platform_data*, align 8
  %11 = alloca %struct.temp_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %13 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute* %13, %struct.sensor_device_attribute** %9, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.platform_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.platform_data* %15, %struct.platform_data** %10, align 8
  %16 = load %struct.platform_data*, %struct.platform_data** %10, align 8
  %17 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %16, i32 0, i32 0
  %18 = load %struct.temp_data**, %struct.temp_data*** %17, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.temp_data*, %struct.temp_data** %18, i64 %21
  %23 = load %struct.temp_data*, %struct.temp_data** %22, align 8
  store %struct.temp_data* %23, %struct.temp_data** %11, align 8
  %24 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %25 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %24, i32 0, i32 3
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %28 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %3
  %32 = load i64, i64* @jiffies, align 8
  %33 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %34 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HZ, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i64 @time_after(i64 %32, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %31, %3
  %41 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %42 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %45 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @rdmsr_on_cpu(i32 %43, i32 %46, i32* %7, i32* %8)
  %48 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %49 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, -2147483648
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %40
  %54 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %55 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = ashr i32 %57, 16
  %59 = and i32 %58, 127
  %60 = mul nsw i32 %59, 1000
  %61 = sub nsw i32 %56, %60
  %62 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %63 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %65 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %53, %40
  %67 = load i64, i64* @jiffies, align 8
  %68 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %69 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %31
  %71 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %72 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %71, i32 0, i32 3
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %75 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %81 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %87

84:                                               ; preds = %70
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = sub nsw i32 0, %85
  br label %87

87:                                               ; preds = %84, %78
  %88 = phi i32 [ %83, %78 ], [ %86, %84 ]
  ret i32 %88
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.platform_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @rdmsr_on_cpu(i32, i32, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
