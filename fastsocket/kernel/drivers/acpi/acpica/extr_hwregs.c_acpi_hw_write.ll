; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_generic_address = type { i64, i32 }

@hw_write = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@ACPI_DB_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Wrote: %8.8X width %2d   to %8.8X%8.8X (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_write(i64 %0, %struct.acpi_generic_address* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_generic_address*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.acpi_generic_address* %1, %struct.acpi_generic_address** %5, align 8
  %8 = load i32, i32* @hw_write, align 4
  %9 = call i32 @ACPI_FUNCTION_NAME(i32 %8)
  %10 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %11 = call i32 @acpi_hw_validate_register(%struct.acpi_generic_address* %10, i32 32, i64* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %19 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %28 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @acpi_os_write_memory(i32 %25, i64 %26, i32 %29)
  store i32 %30, i32* %7, align 4
  br label %39

31:                                               ; preds = %17
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @acpi_hw_write_port(i32 %33, i64 %34, i32 %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %31, %23
  %40 = load i32, i32* @ACPI_DB_IO, align 4
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %43 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @ACPI_FORMAT_UINT64(i64 %45)
  %47 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %48 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @acpi_ut_get_region_name(i64 %49)
  %51 = call i32 @ACPI_DEBUG_PRINT(i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %39, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @acpi_hw_validate_register(%struct.acpi_generic_address*, i32, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_os_write_memory(i32, i64, i32) #1

declare dso_local i32 @acpi_hw_write_port(i32, i64, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local i32 @acpi_ut_get_region_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
