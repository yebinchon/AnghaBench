; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_generic_address = type { i64, i32 }

@hw_read = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@ACPI_DB_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Read:  %8.8X width %2d from %8.8X%8.8X (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_read(i64* %0, %struct.acpi_generic_address* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.acpi_generic_address*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store %struct.acpi_generic_address* %1, %struct.acpi_generic_address** %5, align 8
  %9 = load i32, i32* @hw_read, align 4
  %10 = call i32 @ACPI_FUNCTION_NAME(i32 %9)
  %11 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %12 = call i32 @acpi_hw_validate_register(%struct.acpi_generic_address* %11, i32 32, i64* %6)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %57

18:                                               ; preds = %2
  %19 = load i64*, i64** %4, align 8
  store i64 0, i64* %19, align 8
  %20 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %29 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @acpi_os_read_memory(i32 %27, i64* %7, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load i64*, i64** %4, align 8
  store i64 %32, i64* %33, align 8
  br label %42

34:                                               ; preds = %18
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64*, i64** %4, align 8
  %38 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %39 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @acpi_hw_read_port(i32 %36, i64* %37, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %34, %25
  %43 = load i32, i32* @ACPI_DB_IO, align 4
  %44 = load i64*, i64** %4, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %47 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @ACPI_FORMAT_UINT64(i64 %49)
  %51 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %52 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @acpi_ut_get_region_name(i64 %53)
  %55 = call i32 @ACPI_DEBUG_PRINT(i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %42, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @acpi_hw_validate_register(%struct.acpi_generic_address*, i32, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_os_read_memory(i32, i64*, i32) #1

declare dso_local i32 @acpi_hw_read_port(i32, i64*, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local i32 @acpi_ut_get_region_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
