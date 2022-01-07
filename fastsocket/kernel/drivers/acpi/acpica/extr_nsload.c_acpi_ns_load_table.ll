; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsload.c_acpi_ns_load_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsload.c_acpi_ns_load_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }

@ns_load_table = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@AE_ALREADY_EXISTS = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"**** Loading table into namespace ****\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"**** Begin Table Method Parsing and Object Initialization\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"**** Completed Table Method Parsing and Object Initialization\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_load_table(i32 %0, %struct.acpi_namespace_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %5, align 8
  %7 = load i32, i32* @ns_load_table, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %10 = call i32 @acpi_ut_acquire_mutex(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @ACPI_FAILURE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @return_ACPI_STATUS(i32 %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @acpi_tb_is_table_loaded(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @AE_ALREADY_EXISTS, align 4
  store i32 %22, i32* %6, align 4
  br label %47

23:                                               ; preds = %17
  %24 = load i32, i32* @ACPI_DB_INFO, align 4
  %25 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([40 x i8]* @.str to i32))
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @acpi_tb_allocate_owner_id(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @ACPI_FAILURE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %47

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %35 = call i32 @acpi_ns_parse_table(i32 %33, %struct.acpi_namespace_node* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @ACPI_SUCCESS(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @TRUE, align 4
  %42 = call i32 @acpi_tb_set_table_loaded_flag(i32 %40, i32 %41)
  br label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @acpi_tb_release_owner_id(i32 %44)
  br label %46

46:                                               ; preds = %43, %39
  br label %47

47:                                               ; preds = %46, %31, %21
  %48 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %49 = call i32 @acpi_ut_release_mutex(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @ACPI_FAILURE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @return_ACPI_STATUS(i32 %54)
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* @ACPI_DB_INFO, align 4
  %58 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([59 x i8]* @.str.1 to i32))
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %61 = call i32 @acpi_ds_initialize_objects(i32 %59, %struct.acpi_namespace_node* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @ACPI_DB_INFO, align 4
  %63 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([63 x i8]* @.str.2 to i32))
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @return_ACPI_STATUS(i32 %64)
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @acpi_tb_is_table_loaded(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_tb_allocate_owner_id(i32) #1

declare dso_local i32 @acpi_ns_parse_table(i32, %struct.acpi_namespace_node*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_tb_set_table_loaded_flag(i32, i32) #1

declare dso_local i32 @acpi_tb_release_owner_id(i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

declare dso_local i32 @acpi_ds_initialize_objects(i32, %struct.acpi_namespace_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
