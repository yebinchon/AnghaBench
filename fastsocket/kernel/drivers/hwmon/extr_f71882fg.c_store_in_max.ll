; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_in_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_in_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i64, i32 }

@F71882FG_REG_IN1_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_in_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_in_max(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.f71882fg_data*, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.f71882fg_data* %12, %struct.f71882fg_data** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @simple_strtol(i8* %13, i32* null, i32 10)
  %15 = sdiv i32 %14, 8
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i64 @SENSORS_LIMIT(i64 %17, i32 0, i32 255)
  store i64 %18, i64* %10, align 8
  %19 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %20 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %23 = load i32, i32* @F71882FG_REG_IN1_HIGH, align 4
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @f71882fg_write8(%struct.f71882fg_data* %22, i32 %23, i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %28 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %30 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i64, i64* %8, align 8
  ret i64 %32
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i64 @SENSORS_LIMIT(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
