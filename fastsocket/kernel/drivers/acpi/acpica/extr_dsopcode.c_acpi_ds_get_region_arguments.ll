; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_get_region_arguments.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_get_region_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i32, %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@ds_get_region_arguments = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@ACPI_TYPE_REGION = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[%4.4s] OpRegion Arg Init at AML %p\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"During address validation of OpRegion [%4.4s]\00", align 1
@AOPOBJ_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_get_region_arguments(%union.acpi_operand_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  %7 = load i32, i32* @ds_get_region_arguments, align 4
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %9 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %7, %union.acpi_operand_object* %8)
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %11 = bitcast %union.acpi_operand_object* %10 to %struct.TYPE_6__*
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @AE_OK, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %22 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %21)
  store %union.acpi_operand_object* %22, %union.acpi_operand_object** %6, align 8
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %24 = icmp ne %union.acpi_operand_object* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @AE_NOT_EXIST, align 4
  %27 = call i32 @return_ACPI_STATUS(i32 %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %30 = bitcast %union.acpi_operand_object* %29 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %31, align 8
  store %struct.acpi_namespace_node* %32, %struct.acpi_namespace_node** %4, align 8
  %33 = load i32, i32* @ACPI_TYPE_REGION, align 4
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %35 = call i32 @acpi_ut_display_init_pathname(i32 %33, %struct.acpi_namespace_node* %34, i32* null)
  %36 = call i32 @ACPI_DEBUG_EXEC(i32 %35)
  %37 = load i32, i32* @ACPI_DB_EXEC, align 4
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %39 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %38)
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.TYPE_5__*
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ACPI_DEBUG_PRINT(i32 %43)
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %46 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %47 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %50 = bitcast %union.acpi_operand_object* %49 to %struct.TYPE_5__*
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %54 = bitcast %union.acpi_operand_object* %53 to %struct.TYPE_5__*
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node* %45, i32 %48, i32 %52, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @ACPI_FAILURE(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %28
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @return_ACPI_STATUS(i32 %62)
  br label %64

64:                                               ; preds = %61, %28
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %66 = bitcast %union.acpi_operand_object* %65 to %struct.TYPE_6__*
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %70 = bitcast %union.acpi_operand_object* %69 to %struct.TYPE_6__*
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %74 = bitcast %union.acpi_operand_object* %73 to %struct.TYPE_6__*
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %79 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %78)
  %80 = call i32 @acpi_os_validate_address(i32 %68, i32 %72, i32 %77, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @ACPI_FAILURE(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %64
  %85 = load i32, i32* @AE_INFO, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %88 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ACPI_EXCEPTION(i32 %90)
  %92 = load i32, i32* @AOPOBJ_INVALID, align 4
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %94 = bitcast %union.acpi_operand_object* %93 to %struct.TYPE_8__*
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %92
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* @AE_OK, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %84, %64
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @return_ACPI_STATUS(i32 %100)
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_EXEC(i32) #1

declare dso_local i32 @acpi_ut_display_init_pathname(i32, %struct.acpi_namespace_node*, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node*, i32, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_os_validate_address(i32, i32, i32, i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
