; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsinit.c_acpi_ds_initialize_objects.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsinit.c_acpi_ds_initialize_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%struct.acpi_init_walk_info = type { i64, i64, i64, i64, i32, i32 }
%struct.acpi_table_header = type { i32 }

@ds_initialize_objects = common dso_local global i32 0, align 4
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"**** Starting initialization of namespace objects ****\0A\00", align 1
@ACPI_DB_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Parsing all Control Methods:\00", align 1
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_NS_WALK_UNLOCK = common dso_local global i32 0, align 4
@acpi_ds_init_one_object = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"During WalkNamespace\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"\0ATable [%4.4s](id %4.4X) - %hd Objects with %hd Devices %hd Methods %hd Regions\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%hd Methods, %hd Regions\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_initialize_objects(i32 %0, %struct.acpi_namespace_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_init_walk_info, align 8
  %8 = alloca %struct.acpi_table_header*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %5, align 8
  %10 = load i32, i32* @ds_initialize_objects, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @acpi_tb_get_owner_id(i32 %12, i32* %9)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @ACPI_FAILURE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %22 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([56 x i8]* @.str to i32))
  %23 = load i32, i32* @ACPI_DB_INIT, align 4
  %24 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([29 x i8]* @.str.1 to i32))
  %25 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %7, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %7, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %7, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %7, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %7, i32 0, i32 5
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %7, i32 0, i32 4
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %34 = call i32 @acpi_ut_acquire_mutex(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @return_ACPI_STATUS(i32 %39)
  br label %41

41:                                               ; preds = %38, %20
  %42 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %44 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %45 = load i32, i32* @ACPI_NS_WALK_UNLOCK, align 4
  %46 = load i32, i32* @acpi_ds_init_one_object, align 4
  %47 = call i32 @acpi_ns_walk_namespace(i32 %42, %struct.acpi_namespace_node* %43, i32 %44, i32 %45, i32 %46, %struct.acpi_init_walk_info* %7, i32* null)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @ACPI_FAILURE(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @AE_INFO, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([21 x i8]* @.str.2 to i32))
  br label %55

55:                                               ; preds = %51, %41
  %56 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %57 = call i32 @acpi_ut_release_mutex(i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @acpi_get_table_by_index(i32 %58, %struct.acpi_table_header** %8)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @ACPI_FAILURE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @return_ACPI_STATUS(i32 %64)
  br label %66

66:                                               ; preds = %63, %55
  %67 = load i32, i32* @ACPI_DB_INIT, align 4
  %68 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %69 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %7, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %7, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %7, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %7, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %80)
  %82 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %83 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %7, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %7, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @ACPI_DEBUG_PRINT(i32 %87)
  %89 = load i32, i32* @AE_OK, align 4
  %90 = call i32 @return_ACPI_STATUS(i32 %89)
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_tb_get_owner_id(i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i32 @acpi_ns_walk_namespace(i32, %struct.acpi_namespace_node*, i32, i32, i32, %struct.acpi_init_walk_info*, i32*) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

declare dso_local i32 @acpi_get_table_by_index(i32, %struct.acpi_table_header**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
