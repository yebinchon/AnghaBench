; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_thermal_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_thermal_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.acpi_thermal* }
%struct.acpi_thermal = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@THERMAL_DEVICE_ENABLED = common dso_local global i32 0, align 4
@THERMAL_DEVICE_DISABLED = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s ACPI thermal control\0A\00", align 1
@enabled = common dso_local global i32 0, align 4
@disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32)* @thermal_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thermal_set_mode(%struct.thermal_zone_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_thermal*, align 8
  %7 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %9 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 0
  %10 = load %struct.acpi_thermal*, %struct.acpi_thermal** %9, align 8
  store %struct.acpi_thermal* %10, %struct.acpi_thermal** %6, align 8
  %11 = load %struct.acpi_thermal*, %struct.acpi_thermal** %6, align 8
  %12 = icmp ne %struct.acpi_thermal* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @THERMAL_DEVICE_ENABLED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  br label %30

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @THERMAL_DEVICE_DISABLED, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %55

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.acpi_thermal*, %struct.acpi_thermal** %6, align 8
  %33 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.acpi_thermal*, %struct.acpi_thermal** %6, align 8
  %39 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ACPI_DB_INFO, align 4
  %41 = load %struct.acpi_thermal*, %struct.acpi_thermal** %6, align 8
  %42 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @enabled, align 4
  br label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @disabled, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i32 @ACPI_DEBUG_PRINT(i32 %50)
  %52 = load %struct.acpi_thermal*, %struct.acpi_thermal** %6, align 8
  %53 = call i32 @acpi_thermal_check(%struct.acpi_thermal* %52)
  br label %54

54:                                               ; preds = %49, %30
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %26, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_thermal_check(%struct.acpi_thermal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
