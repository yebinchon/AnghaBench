; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_thermal = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_THERMAL_MODE_ACTIVE = common dso_local global i32 0, align 4
@tzp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_thermal*)* @acpi_thermal_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_thermal_get_info(%struct.acpi_thermal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_thermal*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_thermal* %0, %struct.acpi_thermal** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %6 = icmp ne %struct.acpi_thermal* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %12 = call i32 @acpi_thermal_get_trip_points(%struct.acpi_thermal* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %10
  %18 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %19 = call i32 @acpi_thermal_get_temperature(%struct.acpi_thermal* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %45

24:                                               ; preds = %17
  %25 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %26 = load i32, i32* @ACPI_THERMAL_MODE_ACTIVE, align 4
  %27 = call i32 @acpi_thermal_set_cooling_mode(%struct.acpi_thermal* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i64, i64* @tzp, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* @tzp, align 8
  %39 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %44

41:                                               ; preds = %34
  %42 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %43 = call i32 @acpi_thermal_get_polling_frequency(%struct.acpi_thermal* %42)
  br label %44

44:                                               ; preds = %41, %37
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %22, %15, %7
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @acpi_thermal_get_trip_points(%struct.acpi_thermal*) #1

declare dso_local i32 @acpi_thermal_get_temperature(%struct.acpi_thermal*) #1

declare dso_local i32 @acpi_thermal_set_cooling_mode(%struct.acpi_thermal*, i32) #1

declare dso_local i32 @acpi_thermal_get_polling_frequency(%struct.acpi_thermal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
