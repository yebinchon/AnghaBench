; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_rscreate.c_acpi_rs_create_resource_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_rscreate.c_acpi_rs_create_resource_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.acpi_buffer = type { i64, i8* }

@rs_create_resource_list = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"AmlBuffer = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Status=%X ListSizeNeeded=%X\0A\00", align 1
@acpi_rs_convert_aml_to_resources = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"OutputBuffer %p Length %X\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_rs_create_resource_list(%union.acpi_operand_object* %0, %struct.acpi_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %struct.acpi_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store %struct.acpi_buffer* %1, %struct.acpi_buffer** %5, align 8
  store i64 0, i64* %8, align 8
  %11 = load i32, i32* @rs_create_resource_list, align 4
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 %11)
  %13 = load i32, i32* @ACPI_DB_INFO, align 4
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %15 = ptrtoint %union.acpi_operand_object* %14 to i32
  %16 = call i32 @ACPI_DEBUG_PRINT(i32 %15)
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %18 = bitcast %union.acpi_operand_object* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @acpi_rs_get_list_length(i32* %25, i32 %26, i64* %8)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @ACPI_DB_INFO, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @ACPI_DEBUG_PRINT(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @return_ACPI_STATUS(i32 %37)
  br label %39

39:                                               ; preds = %36, %2
  %40 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer* %40, i64 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @return_ACPI_STATUS(i32 %47)
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %51 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %10, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @acpi_rs_convert_aml_to_resources, align 4
  %56 = call i32 @acpi_ut_walk_aml_resources(i32* %53, i32 %54, i32 %55, i8** %10)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @ACPI_FAILURE(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @return_ACPI_STATUS(i32 %61)
  br label %63

63:                                               ; preds = %60, %49
  %64 = load i32, i32* @ACPI_DB_INFO, align 4
  %65 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %66 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %69 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @ACPI_DEBUG_PRINT(i32 %71)
  %73 = load i32, i32* @AE_OK, align 4
  %74 = call i32 @return_ACPI_STATUS(i32 %73)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_rs_get_list_length(i32*, i32, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer*, i64) #1

declare dso_local i32 @acpi_ut_walk_aml_resources(i32*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
