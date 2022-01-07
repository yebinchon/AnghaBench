; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_excreate.c_acpi_ex_create_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_excreate.c_acpi_ex_create_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.acpi_namespace_node*, i64, i64, i64 }
%struct.TYPE_8__ = type { %union.acpi_operand_object* }
%struct.TYPE_9__ = type { i64*, i32 }

@ex_create_region = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_NUM_PREDEFINED_REGIONS = common dso_local global i64 0, align 8
@ACPI_USER_REGION_BEGIN = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid AddressSpace type %X\00", align 1
@AE_AML_INVALID_SPACE_ID = common dso_local global i32 0, align 4
@ACPI_DB_LOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Region Type - %s (%X)\0A\00", align 1
@ACPI_TYPE_REGION = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_create_region(i64* %0, i32 %1, i64 %2, %struct.acpi_walk_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.acpi_walk_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca %struct.acpi_namespace_node*, align 8
  %13 = alloca %union.acpi_operand_object*, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.acpi_walk_state* %3, %struct.acpi_walk_state** %9, align 8
  %14 = load i32, i32* @ex_create_region, align 4
  %15 = call i32 @ACPI_FUNCTION_TRACE(i32 %14)
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %20, align 8
  store %struct.acpi_namespace_node* %21, %struct.acpi_namespace_node** %12, align 8
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %12, align 8
  %23 = call i64 @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @AE_OK, align 4
  %27 = call i32 @return_ACPI_STATUS(i32 %26)
  br label %28

28:                                               ; preds = %25, %4
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @ACPI_NUM_PREDEFINED_REGIONS, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @ACPI_USER_REGION_BEGIN, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* @AE_INFO, align 4
  %38 = load i64, i64* %8, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @ACPI_ERROR(i32 %39)
  %41 = load i32, i32* @AE_AML_INVALID_SPACE_ID, align 4
  %42 = call i32 @return_ACPI_STATUS(i32 %41)
  br label %43

43:                                               ; preds = %36, %32, %28
  %44 = load i32, i32* @ACPI_DB_LOAD, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @acpi_ut_get_region_name(i64 %45)
  %47 = load i64, i64* %8, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @ACPI_DEBUG_PRINT(i32 %48)
  %50 = load i32, i32* @ACPI_TYPE_REGION, align 4
  %51 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %50)
  store %union.acpi_operand_object* %51, %union.acpi_operand_object** %11, align 8
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %53 = icmp ne %union.acpi_operand_object* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %55, i32* %10, align 4
  br label %87

56:                                               ; preds = %43
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %58 = bitcast %union.acpi_operand_object* %57 to %struct.TYPE_8__*
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %59, align 8
  store %union.acpi_operand_object* %60, %union.acpi_operand_object** %13, align 8
  %61 = load i64*, i64** %6, align 8
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %63 = bitcast %union.acpi_operand_object* %62 to %struct.TYPE_9__*
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i64* %61, i64** %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %67 = bitcast %union.acpi_operand_object* %66 to %struct.TYPE_9__*
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %71 = bitcast %union.acpi_operand_object* %70 to %struct.TYPE_10__*
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  store i64 %69, i64* %72, align 8
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %74 = bitcast %union.acpi_operand_object* %73 to %struct.TYPE_10__*
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.TYPE_10__*
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %12, align 8
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %81 = bitcast %union.acpi_operand_object* %80 to %struct.TYPE_10__*
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  store %struct.acpi_namespace_node* %79, %struct.acpi_namespace_node** %82, align 8
  %83 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %12, align 8
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %85 = load i32, i32* @ACPI_TYPE_REGION, align 4
  %86 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %83, %union.acpi_operand_object* %84, i32 %85)
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %56, %54
  %88 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %89 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %88)
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @return_ACPI_STATUS(i32 %90)
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_region_name(i64) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
