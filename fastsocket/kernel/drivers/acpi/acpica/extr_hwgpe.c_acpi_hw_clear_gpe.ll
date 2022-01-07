; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwgpe.c_acpi_hw_clear_gpe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwgpe.c_acpi_hw_clear_gpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_event_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_clear_gpe(%struct.acpi_gpe_event_info* %0) #0 {
  %2 = alloca %struct.acpi_gpe_event_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.acpi_gpe_event_info* %0, %struct.acpi_gpe_event_info** %2, align 8
  %5 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %6 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %2, align 8
  %7 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %8, %13
  %15 = shl i32 1, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %2, align 8
  %19 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @acpi_hw_write(i64 %17, i32* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @acpi_hw_write(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
