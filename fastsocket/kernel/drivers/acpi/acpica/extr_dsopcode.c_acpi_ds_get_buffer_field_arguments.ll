; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_get_buffer_field_arguments.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_get_buffer_field_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ds_get_buffer_field_arguments = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER_FIELD = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"[%4.4s] BufferField Arg Init\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  %7 = load i32, i32* @ds_get_buffer_field_arguments, align 4
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %9 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %7, %union.acpi_operand_object* %8)
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %11 = bitcast %union.acpi_operand_object* %10 to %struct.TYPE_5__*
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
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
  store %union.acpi_operand_object* %22, %union.acpi_operand_object** %4, align 8
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %25, align 8
  store %struct.acpi_namespace_node* %26, %struct.acpi_namespace_node** %5, align 8
  %27 = load i32, i32* @ACPI_TYPE_BUFFER_FIELD, align 4
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %29 = call i32 @acpi_ut_display_init_pathname(i32 %27, %struct.acpi_namespace_node* %28, i32* null)
  %30 = call i32 @ACPI_DEBUG_EXEC(i32 %29)
  %31 = load i32, i32* @ACPI_DB_EXEC, align 4
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %33 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %32)
  %34 = call i32 @ACPI_DEBUG_PRINT(i32 %33)
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %36 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %37 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %40 = bitcast %union.acpi_operand_object* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %44 = bitcast %union.acpi_operand_object* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node* %35, i32 %38, i32 %42, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_EXEC(i32) #1

declare dso_local i32 @acpi_ut_display_init_pathname(i32, %struct.acpi_namespace_node*, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
