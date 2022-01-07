; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exregion.c_acpi_ex_pci_config_space_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exregion.c_acpi_ex_pci_config_space_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_id = type { i32, i32, i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_pci_config_space_handler = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Pci-Config %d (%d) Seg(%04x) Bus(%04x) Dev(%04x) Func(%04x) Reg(%04x)\0A\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_pci_config_space_handler(i32 %0, i64 %1, i32 %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.acpi_pci_id*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load i32, i32* @AE_OK, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* @ex_pci_config_space_handler, align 4
  %20 = call i32 @ACPI_FUNCTION_TRACE(i32 %19)
  %21 = load i8*, i8** %13, align 8
  %22 = bitcast i8* %21 to %struct.acpi_pci_id*
  store %struct.acpi_pci_id* %22, %struct.acpi_pci_id** %15, align 8
  %23 = load i64, i64* %9, align 8
  %24 = trunc i64 %23 to i32
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %16, align 8
  %26 = load i32, i32* @ACPI_DB_INFO, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %15, align 8
  %30 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %15, align 8
  %33 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %15, align 8
  %36 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %15, align 8
  %39 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %16, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @ACPI_DEBUG_PRINT(i32 %42)
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %59 [
    i32 129, label %45
    i32 128, label %52
  ]

45:                                               ; preds = %6
  %46 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %15, align 8
  %47 = load i64, i64* %16, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @acpi_os_read_pci_configuration(%struct.acpi_pci_id* %46, i64 %47, i32* %17, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  br label %61

52:                                               ; preds = %6
  %53 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %15, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @acpi_os_write_pci_configuration(%struct.acpi_pci_id* %53, i64 %54, i32 %56, i32 %57)
  store i32 %58, i32* %14, align 4
  br label %61

59:                                               ; preds = %6
  %60 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %59, %52, %45
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @return_ACPI_STATUS(i32 %62)
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_os_read_pci_configuration(%struct.acpi_pci_id*, i64, i32*, i32) #1

declare dso_local i32 @acpi_os_write_pci_configuration(%struct.acpi_pci_id*, i64, i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
