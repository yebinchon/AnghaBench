; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmisc.c_acpi_ut_is_aml_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmisc.c_acpi_ut_is_aml_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }

@ACPI_SIG_DSDT = common dso_local global i32 0, align 4
@ACPI_SIG_PSDT = common dso_local global i32 0, align 4
@ACPI_SIG_SSDT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_is_aml_table(%struct.acpi_table_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_table_header*, align 8
  store %struct.acpi_table_header* %0, %struct.acpi_table_header** %3, align 8
  %4 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %5 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ACPI_SIG_DSDT, align 4
  %8 = call i64 @ACPI_COMPARE_NAME(i32 %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %1
  %11 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ACPI_SIG_PSDT, align 4
  %15 = call i64 @ACPI_COMPARE_NAME(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ACPI_SIG_SSDT, align 4
  %22 = call i64 @ACPI_COMPARE_NAME(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17, %10, %1
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @ACPI_COMPARE_NAME(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
