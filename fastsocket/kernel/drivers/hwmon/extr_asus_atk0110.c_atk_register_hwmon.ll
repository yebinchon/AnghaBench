; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asus_atk0110.c_atk_register_hwmon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asus_atk0110.c_atk_register_hwmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atk_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"registering hwmon device\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"populating sysfs directory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atk_data*)* @atk_register_hwmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atk_register_hwmon(%struct.atk_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atk_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.atk_data* %0, %struct.atk_data** %3, align 8
  %6 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %7 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @dev_dbg(%struct.device* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @hwmon_device_register(%struct.device* %12)
  %14 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %15 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %17 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @IS_ERR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %23 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @PTR_ERR(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %30 = call i32 @atk_create_files(%struct.atk_data* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %35

34:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %43

35:                                               ; preds = %33
  %36 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %37 = call i32 @atk_remove_files(%struct.atk_data* %36)
  %38 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %39 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @hwmon_device_unregister(i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %35, %34, %21
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @atk_create_files(%struct.atk_data*) #1

declare dso_local i32 @atk_remove_files(%struct.atk_data*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
