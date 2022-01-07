; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_fan.c_fan_get_cur_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_fan.c_fan_get_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_STATE_D3 = common dso_local global i32 0, align 4
@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64*)* @fan_get_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_get_cur_state(%struct.thermal_cooling_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %10 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %9, i32 0, i32 0
  %11 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  store %struct.acpi_device* %11, %struct.acpi_device** %6, align 8
  %12 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %13 = icmp ne %struct.acpi_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @acpi_bus_get_power(i32 %20, i32* %8)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %17
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ACPI_STATE_D3, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %37

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ACPI_STATE_D0, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 -1
  br label %37

37:                                               ; preds = %31, %30
  %38 = phi i32 [ 0, %30 ], [ %36, %31 ]
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %5, align 8
  store i64 %39, i64* %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %24, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @acpi_bus_get_power(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
