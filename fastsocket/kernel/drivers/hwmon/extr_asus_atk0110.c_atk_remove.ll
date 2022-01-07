; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asus_atk0110.c_atk_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asus_atk0110.c_atk_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.atk_data* }
%struct.atk_data = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"removing...\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to disable EC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @atk_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atk_remove(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atk_data*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 1
  %8 = load %struct.atk_data*, %struct.atk_data** %7, align 8
  store %struct.atk_data* %8, %struct.atk_data** %5, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 0
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 1
  store %struct.atk_data* null, %struct.atk_data** %13, align 8
  %14 = load %struct.atk_data*, %struct.atk_data** %5, align 8
  %15 = call i32 @atk_remove_files(%struct.atk_data* %14)
  %16 = load %struct.atk_data*, %struct.atk_data** %5, align 8
  %17 = call i32 @atk_free_sensors(%struct.atk_data* %16)
  %18 = load %struct.atk_data*, %struct.atk_data** %5, align 8
  %19 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @hwmon_device_unregister(i32 %20)
  %22 = load %struct.atk_data*, %struct.atk_data** %5, align 8
  %23 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.atk_data*, %struct.atk_data** %5, align 8
  %28 = call i64 @atk_ec_ctl(%struct.atk_data* %27, i32 0)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.atk_data*, %struct.atk_data** %5, align 8
  %37 = call i32 @kfree(%struct.atk_data* %36)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @atk_remove_files(%struct.atk_data*) #1

declare dso_local i32 @atk_free_sensors(%struct.atk_data*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i64 @atk_ec_ctl(%struct.atk_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.atk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
