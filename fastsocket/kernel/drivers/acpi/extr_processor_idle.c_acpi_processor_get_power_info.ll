; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_processor_get_power_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_processor_get_power_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@ACPI_PROCESSOR_MAX_POWER = common dso_local global i32 0, align 4
@ACPI_STATE_C2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @acpi_processor_get_power_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_get_power_info(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 8)
  %11 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %12 = call i32 @acpi_processor_get_power_info_cst(%struct.acpi_processor* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %19 = call i32 @acpi_processor_get_power_info_fadt(%struct.acpi_processor* %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %74

25:                                               ; preds = %20
  %26 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %27 = call i32 @acpi_processor_get_power_info_default(%struct.acpi_processor* %26)
  %28 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %29 = call i32 @acpi_processor_power_verify(%struct.acpi_processor* %28)
  %30 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %70, %25
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @ACPI_PROCESSOR_MAX_POWER, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %37
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %51 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %54 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ACPI_STATE_C2, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %48
  %65 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %66 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %48
  br label %69

69:                                               ; preds = %68, %37
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %33

73:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %23
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @acpi_processor_get_power_info_cst(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_get_power_info_fadt(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_get_power_info_default(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_power_verify(%struct.acpi_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
