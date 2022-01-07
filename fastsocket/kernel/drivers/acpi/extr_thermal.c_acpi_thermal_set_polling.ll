; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_set_polling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_set_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_thermal = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Polling frequency set to %lu seconds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_thermal*, i32)* @acpi_thermal_set_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_thermal_set_polling(%struct.acpi_thermal* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_thermal*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_thermal* %0, %struct.acpi_thermal** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %7 = icmp ne %struct.acpi_thermal* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %38

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, 10
  %14 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %16, 1000
  %18 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %19 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %11
  %27 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %28 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @thermal_zone_device_update(%struct.TYPE_2__* %29)
  br label %31

31:                                               ; preds = %26, %11
  %32 = load i32, i32* @ACPI_DB_INFO, align 4
  %33 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %34 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %35, 10
  %37 = call i32 @ACPI_DEBUG_PRINT(i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %8
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @thermal_zone_device_update(%struct.TYPE_2__*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
