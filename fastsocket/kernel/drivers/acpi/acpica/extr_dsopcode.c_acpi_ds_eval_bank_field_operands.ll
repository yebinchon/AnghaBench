; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_eval_bank_field_operands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_eval_bank_field_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %union.acpi_operand_object**, i64 }
%union.acpi_operand_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%union.acpi_parse_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %struct.TYPE_5__ }
%struct.acpi_namespace_node = type { i32 }
%struct.TYPE_5__ = type { %union.acpi_parse_object* }
%struct.TYPE_6__ = type { i64 }

@ds_eval_bank_field_operands = common dso_local global i32 0, align 4
@ACPI_WALK_OPERANDS = common dso_local global i32 0, align 4
@AML_INT_NAMEDFIELD_OP = common dso_local global i64 0, align 8
@AE_NOT_EXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_eval_bank_field_operands(%struct.acpi_walk_state* %0, %union.acpi_parse_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca %struct.acpi_namespace_node*, align 8
  %10 = alloca %union.acpi_parse_object*, align 8
  %11 = alloca %union.acpi_parse_object*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %4, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %5, align 8
  %12 = load i32, i32* @ds_eval_bank_field_operands, align 4
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %14 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %12, %union.acpi_parse_object* %13)
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %16 = bitcast %union.acpi_parse_object* %15 to %struct.TYPE_8__*
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %18, align 8
  store %union.acpi_parse_object* %19, %union.acpi_parse_object** %10, align 8
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %21 = bitcast %union.acpi_parse_object* %20 to %struct.TYPE_8__*
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %22, align 8
  store %union.acpi_parse_object* %23, %union.acpi_parse_object** %10, align 8
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %25 = bitcast %union.acpi_parse_object* %24 to %struct.TYPE_8__*
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %26, align 8
  store %union.acpi_parse_object* %27, %union.acpi_parse_object** %10, align 8
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %31 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %32 = call i32 @acpi_ds_create_operand(%struct.acpi_walk_state* %30, %union.acpi_parse_object* %31, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @return_ACPI_STATUS(i32 %37)
  br label %39

39:                                               ; preds = %36, %2
  %40 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %41 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %40, i32 0, i32 0
  %42 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %41, align 8
  %43 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %42, i64 0
  %44 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %45 = call i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %43, %struct.acpi_walk_state* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @ACPI_FAILURE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @return_ACPI_STATUS(i32 %50)
  br label %52

52:                                               ; preds = %49, %39
  %53 = load i32, i32* @ACPI_WALK_OPERANDS, align 4
  %54 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %55 = bitcast %union.acpi_parse_object* %54 to %struct.TYPE_8__*
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @acpi_ps_get_opcode_name(i64 %57)
  %59 = call i32 @ACPI_DUMP_OPERANDS(i32 %53, i32 %58, i32 1)
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %61 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %60, i32 0, i32 0
  %62 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %61, align 8
  %63 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %62, i64 0
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %63, align 8
  store %union.acpi_operand_object* %64, %union.acpi_operand_object** %8, align 8
  %65 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %66 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %65, i32 4)
  store %union.acpi_parse_object* %66, %union.acpi_parse_object** %11, align 8
  br label %67

67:                                               ; preds = %97, %52
  %68 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %69 = icmp ne %union.acpi_parse_object* %68, null
  br i1 %69, label %70, label %102

70:                                               ; preds = %67
  %71 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %72 = bitcast %union.acpi_parse_object* %71 to %struct.TYPE_8__*
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AML_INT_NAMEDFIELD_OP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %70
  %78 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %79 = bitcast %union.acpi_parse_object* %78 to %struct.TYPE_8__*
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %80, align 8
  store %struct.acpi_namespace_node* %81, %struct.acpi_namespace_node** %9, align 8
  %82 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %83 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %82)
  store %union.acpi_operand_object* %83, %union.acpi_operand_object** %7, align 8
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %85 = icmp ne %union.acpi_operand_object* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %77
  %87 = load i32, i32* @AE_NOT_EXIST, align 4
  %88 = call i32 @return_ACPI_STATUS(i32 %87)
  br label %89

89:                                               ; preds = %86, %77
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %91 = bitcast %union.acpi_operand_object* %90 to %struct.TYPE_7__*
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %95 = bitcast %union.acpi_operand_object* %94 to %struct.TYPE_6__*
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  br label %97

97:                                               ; preds = %89, %70
  %98 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %99 = bitcast %union.acpi_parse_object* %98 to %struct.TYPE_8__*
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load %union.acpi_parse_object*, %union.acpi_parse_object** %100, align 8
  store %union.acpi_parse_object* %101, %union.acpi_parse_object** %11, align 8
  br label %67

102:                                              ; preds = %67
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %104 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %103)
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @return_ACPI_STATUS(i32 %105)
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ds_create_operand(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_DUMP_OPERANDS(i32, i32, i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i64) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object*, i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
