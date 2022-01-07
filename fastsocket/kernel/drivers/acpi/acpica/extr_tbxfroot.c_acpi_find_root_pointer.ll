; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbxfroot.c_acpi_find_root_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbxfroot.c_acpi_find_root_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_EBDA_PTR_LOCATION = common dso_local global i64 0, align 8
@ACPI_EBDA_PTR_LENGTH = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Could not map memory at %8.8X for length %X\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_EBDA_WINDOW_SIZE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_HI_RSDP_WINDOW_BASE = common dso_local global i64 0, align 8
@ACPI_HI_RSDP_WINDOW_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"A valid RSDP was not found\00", align 1
@AE_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_find_root_pointer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 (i32*)* @acpi_find_root_pointer)
  %8 = load i64, i64* @ACPI_EBDA_PTR_LOCATION, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @ACPI_EBDA_PTR_LENGTH, align 4
  %11 = call i32* @acpi_os_map_memory(i32 %9, i32 %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @AE_INFO, align 4
  %16 = load i64, i64* @ACPI_EBDA_PTR_LOCATION, align 8
  %17 = load i32, i32* @ACPI_EBDA_PTR_LENGTH, align 4
  %18 = call i32 @ACPI_ERROR(i32 %17)
  %19 = load i32, i32* @AE_NO_MEMORY, align 4
  %20 = call i32 @return_ACPI_STATUS(i32 %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ACPI_MOVE_16_TO_32(i32* %6, i32* %22)
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 4
  store i32 %25, i32* %6, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @ACPI_EBDA_PTR_LENGTH, align 4
  %28 = call i32 @acpi_os_unmap_memory(i32* %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 1024
  br i1 %30, label %31, label %65

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ACPI_EBDA_WINDOW_SIZE, align 4
  %34 = call i32* @acpi_os_map_memory(i32 %32, i32 %33)
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @AE_INFO, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ACPI_EBDA_WINDOW_SIZE, align 4
  %41 = call i32 @ACPI_ERROR(i32 %40)
  %42 = load i32, i32* @AE_NO_MEMORY, align 4
  %43 = call i32 @return_ACPI_STATUS(i32 %42)
  br label %44

44:                                               ; preds = %37, %31
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @ACPI_EBDA_WINDOW_SIZE, align 4
  %47 = call i32* @acpi_tb_scan_memory_for_rsdp(i32* %45, i32 %46)
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @ACPI_EBDA_WINDOW_SIZE, align 4
  %50 = call i32 @acpi_os_unmap_memory(i32* %48, i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %44
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i64 @ACPI_PTR_DIFF(i32* %54, i32* %55)
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %3, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @AE_OK, align 4
  %63 = call i32 @return_ACPI_STATUS(i32 %62)
  br label %64

64:                                               ; preds = %53, %44
  br label %65

65:                                               ; preds = %64, %21
  %66 = load i64, i64* @ACPI_HI_RSDP_WINDOW_BASE, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @ACPI_HI_RSDP_WINDOW_SIZE, align 4
  %69 = call i32* @acpi_os_map_memory(i32 %67, i32 %68)
  store i32* %69, i32** %4, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @AE_INFO, align 4
  %74 = load i64, i64* @ACPI_HI_RSDP_WINDOW_BASE, align 8
  %75 = load i32, i32* @ACPI_HI_RSDP_WINDOW_SIZE, align 4
  %76 = call i32 @ACPI_ERROR(i32 %75)
  %77 = load i32, i32* @AE_NO_MEMORY, align 4
  %78 = call i32 @return_ACPI_STATUS(i32 %77)
  br label %79

79:                                               ; preds = %72, %65
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @ACPI_HI_RSDP_WINDOW_SIZE, align 4
  %82 = call i32* @acpi_tb_scan_memory_for_rsdp(i32* %80, i32 %81)
  store i32* %82, i32** %5, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @ACPI_HI_RSDP_WINDOW_SIZE, align 4
  %85 = call i32 @acpi_os_unmap_memory(i32* %83, i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %79
  %89 = load i64, i64* @ACPI_HI_RSDP_WINDOW_BASE, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = call i64 @ACPI_PTR_DIFF(i32* %90, i32* %91)
  %93 = add nsw i64 %89, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32*, i32** %3, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @AE_OK, align 4
  %98 = call i32 @return_ACPI_STATUS(i32 %97)
  br label %99

99:                                               ; preds = %88, %79
  %100 = load i32, i32* @AE_INFO, align 4
  %101 = call i32 @ACPI_ERROR(i32 ptrtoint ([27 x i8]* @.str.1 to i32))
  %102 = load i32, i32* @AE_NOT_FOUND, align 4
  %103 = call i32 @return_ACPI_STATUS(i32 %102)
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (i32*)*) #1

declare dso_local i32* @acpi_os_map_memory(i32, i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_MOVE_16_TO_32(i32*, i32*) #1

declare dso_local i32 @acpi_os_unmap_memory(i32*, i32) #1

declare dso_local i32* @acpi_tb_scan_memory_for_rsdp(i32*, i32) #1

declare dso_local i64 @ACPI_PTR_DIFF(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
