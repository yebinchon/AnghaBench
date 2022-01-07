; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utobject.c_acpi_ut_allocate_object_desc_dbg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utobject.c_acpi_ut_allocate_object_desc_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { i32 }

@ut_allocate_object_desc_dbg = common dso_local global i32 0, align 4
@acpi_gbl_operand_cache = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not allocate an object descriptor\00", align 1
@ACPI_DESC_TYPE_OPERAND = common dso_local global i32 0, align 4
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%p Size %X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @acpi_ut_allocate_object_desc_dbg(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.acpi_operand_object*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @ut_allocate_object_desc_dbg, align 4
  %10 = call i32 @ACPI_FUNCTION_TRACE(i32 %9)
  %11 = load i32, i32* @acpi_gbl_operand_cache, align 4
  %12 = call %union.acpi_operand_object* @acpi_os_acquire_object(i32 %11)
  store %union.acpi_operand_object* %12, %union.acpi_operand_object** %8, align 8
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %14 = icmp ne %union.acpi_operand_object* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ACPI_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @return_PTR(%union.acpi_operand_object* null)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %22 = call i32 @memset(%union.acpi_operand_object* %21, i32 0, i32 4)
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %24 = load i32, i32* @ACPI_DESC_TYPE_OPERAND, align 4
  %25 = call i32 @ACPI_SET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %23, i32 %24)
  %26 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %28 = call i32 @ACPI_DEBUG_PRINT(i32 4)
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %30 = call i32 @return_PTR(%union.acpi_operand_object* %29)
  %31 = load i8*, i8** %4, align 8
  ret i8* %31
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_os_acquire_object(i32) #1

declare dso_local i32 @ACPI_ERROR(i8*) #1

declare dso_local i32 @return_PTR(%union.acpi_operand_object*) #1

declare dso_local i32 @memset(%union.acpi_operand_object*, i32, i32) #1

declare dso_local i32 @ACPI_SET_DESCRIPTOR_TYPE(%union.acpi_operand_object*, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
