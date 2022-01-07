; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_dock.c_find_dock_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_dock.c_find_dock_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dock_station = type { i64 }
%struct.dock_dependent_device = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*, i8**)* @find_dock_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_dock_devices(i64 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dock_station*, align 8
  %13 = alloca %struct.dock_dependent_device*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.dock_station*
  store %struct.dock_station* %15, %struct.dock_station** %12, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @acpi_bus_get_ejd(i64 %16, i64* %10)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @acpi_get_parent(i64 %22, i64* %11)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %53

28:                                               ; preds = %21
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @acpi_bus_get_ejd(i64 %29, i64* %10)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @ACPI_FAILURE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %53

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.dock_station*, %struct.dock_station** %12, align 8
  %39 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load i64, i64* %5, align 8
  %44 = call %struct.dock_dependent_device* @alloc_dock_dependent_device(i64 %43)
  store %struct.dock_dependent_device* %44, %struct.dock_dependent_device** %13, align 8
  %45 = load %struct.dock_dependent_device*, %struct.dock_dependent_device** %13, align 8
  %46 = icmp ne %struct.dock_dependent_device* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.dock_station*, %struct.dock_station** %12, align 8
  %49 = load %struct.dock_dependent_device*, %struct.dock_dependent_device** %13, align 8
  %50 = call i32 @add_dock_dependent_device(%struct.dock_station* %48, %struct.dock_dependent_device* %49)
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %34, %27
  %54 = load i32, i32* @AE_OK, align 4
  ret i32 %54
}

declare dso_local i32 @acpi_bus_get_ejd(i64, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_get_parent(i64, i64*) #1

declare dso_local %struct.dock_dependent_device* @alloc_dock_dependent_device(i64) #1

declare dso_local i32 @add_dock_dependent_device(%struct.dock_station*, %struct.dock_dependent_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
