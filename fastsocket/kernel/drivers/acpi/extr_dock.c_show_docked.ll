; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_dock.c_show_docked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_dock.c_show_docked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.device_attribute = type { i32 }
%struct.acpi_device = type { i32 }
%struct.dock_station = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_docked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_docked(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.acpi_device*, align 8
  %9 = alloca %struct.dock_station*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.dock_station**
  %14 = load %struct.dock_station*, %struct.dock_station** %13, align 8
  store %struct.dock_station* %14, %struct.dock_station** %9, align 8
  %15 = load %struct.dock_station*, %struct.dock_station** %9, align 8
  %16 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @acpi_bus_get_device(i32 %17, %struct.acpi_device** %8)
  %19 = call i64 @ACPI_SUCCESS(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = call i32 @snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %4, align 4
  br label %29

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i32 @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
