; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_thermal.c_processor_set_cur_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_thermal.c_processor_set_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%struct.acpi_processor = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64)* @processor_set_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processor_set_cur_state(%struct.thermal_cooling_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca %struct.acpi_processor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %11 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %10, i32 0, i32 0
  %12 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  store %struct.acpi_device* %12, %struct.acpi_device** %6, align 8
  %13 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %14 = call %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device* %13)
  store %struct.acpi_processor* %14, %struct.acpi_processor** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %16 = icmp ne %struct.acpi_device* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %19 = icmp ne %struct.acpi_processor* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %76

23:                                               ; preds = %17
  %24 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %25 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @cpufreq_get_max_state(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %30 = call i64 @acpi_processor_max_state(%struct.acpi_processor* %29)
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %76

35:                                               ; preds = %23
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ule i64 %36, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %42 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %48 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %54 = call i32 @acpi_processor_set_throttling(%struct.acpi_processor* %53, i64 0, i32 0)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %46, %40
  %56 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %57 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @cpufreq_set_cur_state(i32 %58, i32 %60)
  br label %74

62:                                               ; preds = %35
  %63 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %64 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @cpufreq_set_cur_state(i32 %65, i32 %66)
  %68 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %69, %71
  %73 = call i32 @acpi_processor_set_throttling(%struct.acpi_processor* %68, i64 %72, i32 0)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %62, %55
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %32, %20
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @cpufreq_get_max_state(i32) #1

declare dso_local i64 @acpi_processor_max_state(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_set_throttling(%struct.acpi_processor*, i64, i32) #1

declare dso_local i32 @cpufreq_set_cur_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
