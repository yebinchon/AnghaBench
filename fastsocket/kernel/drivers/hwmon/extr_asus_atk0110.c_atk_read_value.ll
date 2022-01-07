; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asus_atk0110.c_atk_read_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asus_atk0110.c_atk_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atk_sensor_data = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@CACHE_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atk_sensor_data*, i32*)* @atk_read_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atk_read_value(%struct.atk_sensor_data* %0, i32* %1) #0 {
  %3 = alloca %struct.atk_sensor_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.atk_sensor_data* %0, %struct.atk_sensor_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %3, align 8
  %7 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i64, i64* @jiffies, align 8
  %12 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %3, align 8
  %13 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CACHE_TIME, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i64 @time_after(i64 %11, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %10, %2
  %20 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %3, align 8
  %21 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @atk_read_value_old(%struct.atk_sensor_data* %27, i32* %28)
  store i32 %29, i32* %5, align 4
  br label %34

30:                                               ; preds = %19
  %31 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @atk_read_value_new(%struct.atk_sensor_data* %31, i32* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %3, align 8
  %36 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i64, i64* @jiffies, align 8
  %38 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %3, align 8
  %39 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %3, align 8
  %43 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %49

44:                                               ; preds = %10
  %45 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %3, align 8
  %46 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %34
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @atk_read_value_old(%struct.atk_sensor_data*, i32*) #1

declare dso_local i32 @atk_read_value_new(%struct.atk_sensor_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
