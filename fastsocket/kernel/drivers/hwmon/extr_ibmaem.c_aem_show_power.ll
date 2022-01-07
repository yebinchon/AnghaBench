; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmaem.c_aem_show_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmaem.c_aem_show_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.aem_data = type { i32*, i32, i32* }
%struct.timespec = type { i32 }

@UJ_PER_MJ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @aem_show_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aem_show_power(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.aem_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.timespec, align 4
  %16 = alloca %struct.timespec, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %8, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.aem_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.aem_data* %20, %struct.aem_data** %9, align 8
  %21 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %22 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %25 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %26 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @update_aem_energy_one(%struct.aem_data* %24, i64 %27)
  %29 = call i32 @getnstimeofday(%struct.timespec* %15)
  %30 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %31 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %34 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %39 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %42 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @msecs_to_jiffies(i32 %45)
  %47 = call i64 @schedule_timeout_interruptible(i32 %46)
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %3
  %51 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %52 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  store i32 0, i32* %4, align 4
  br label %87

54:                                               ; preds = %3
  %55 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %56 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %57 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @update_aem_energy_one(%struct.aem_data* %55, i64 %58)
  %60 = call i32 @getnstimeofday(%struct.timespec* %16)
  %61 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %62 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %65 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  %69 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %70 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = call i32 @timespec_to_ns(%struct.timespec* %16)
  %73 = call i32 @timespec_to_ns(%struct.timespec* %15)
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* @UJ_PER_MJ, align 4
  %79 = mul nsw i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @NSEC_PER_SEC, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %13, align 4
  %85 = call i64 @div64_u64(i32 %83, i32 %84)
  %86 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %85)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %54, %50
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.aem_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @update_aem_energy_one(%struct.aem_data*, i64) #1

declare dso_local i32 @getnstimeofday(%struct.timespec*) #1

declare dso_local i64 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @timespec_to_ns(%struct.timespec*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i64 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
