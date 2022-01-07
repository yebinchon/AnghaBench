; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsutils.c_acpi_ds_evaluate_name_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsutils.c_acpi_ds_evaluate_name_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %union.acpi_operand_object*, %union.acpi_operand_object**, %union.acpi_parse_object* }
%union.acpi_operand_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%union.acpi_parse_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@ds_evaluate_name_path = common dso_local global i32 0, align 4
@AML_PACKAGE_OP = common dso_local global i64 0, align 8
@AML_VAR_PACKAGE_OP = common dso_local global i64 0, align 8
@AML_REF_OF_OP = common dso_local global i64 0, align 8
@ACPI_PARSEOP_TARGET = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_PARSEOP_IN_STACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_evaluate_name_path(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca %union.acpi_operand_object**, align 8
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca i64, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 2
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  store %union.acpi_parse_object* %12, %union.acpi_parse_object** %5, align 8
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 1
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %14, align 8
  %16 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %15, i64 0
  store %union.acpi_operand_object** %16, %union.acpi_operand_object*** %6, align 8
  %17 = load i32, i32* @ds_evaluate_name_path, align 4
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %19 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %17, %struct.acpi_walk_state* %18)
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %21 = bitcast %union.acpi_parse_object* %20 to %struct.TYPE_8__*
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %140

26:                                               ; preds = %1
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %28 = bitcast %union.acpi_parse_object* %27 to %struct.TYPE_8__*
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AML_PACKAGE_OP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %56, label %36

36:                                               ; preds = %26
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %38 = bitcast %union.acpi_parse_object* %37 to %struct.TYPE_8__*
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AML_VAR_PACKAGE_OP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %36
  %47 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %48 = bitcast %union.acpi_parse_object* %47 to %struct.TYPE_8__*
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AML_REF_OF_OP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46, %36, %26
  br label %140

57:                                               ; preds = %46
  %58 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %59 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %60 = call i32 @acpi_ds_create_operand(%struct.acpi_walk_state* %58, %union.acpi_parse_object* %59, i32 0)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @ACPI_FAILURE(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %140

65:                                               ; preds = %57
  %66 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %67 = bitcast %union.acpi_parse_object* %66 to %struct.TYPE_8__*
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ACPI_PARSEOP_TARGET, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %74, align 8
  store %union.acpi_operand_object* %75, %union.acpi_operand_object** %7, align 8
  br label %120

76:                                               ; preds = %65
  %77 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %77, align 8
  %79 = bitcast %union.acpi_operand_object* %78 to %struct.TYPE_7__*
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %8, align 8
  %82 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %83 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %84 = call i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %82, %struct.acpi_walk_state* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i64 @ACPI_FAILURE(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %140

89:                                               ; preds = %76
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %94, align 8
  %96 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %95)
  %97 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %98 = load %union.acpi_operand_object*, %union.acpi_operand_object** %97, align 8
  %99 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %100 = call i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %98, %union.acpi_operand_object** %7, %struct.acpi_walk_state* %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i64 @ACPI_FAILURE(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %140

105:                                              ; preds = %93
  br label %109

106:                                              ; preds = %89
  %107 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %107, align 8
  store %union.acpi_operand_object* %108, %union.acpi_operand_object** %7, align 8
  br label %109

109:                                              ; preds = %106, %105
  %110 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %111 = call i32 @acpi_ds_obj_stack_pop(i32 1, %struct.acpi_walk_state* %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i64 @ACPI_FAILURE(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %117 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %118 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %117, i32 0, i32 0
  store %union.acpi_operand_object* %116, %union.acpi_operand_object** %118, align 8
  br label %140

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %73
  %121 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %122 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %123 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %122, i32 0, i32 0
  store %union.acpi_operand_object* %121, %union.acpi_operand_object** %123, align 8
  %124 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %125 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %124, i32 0, i32 0
  %126 = load %union.acpi_operand_object*, %union.acpi_operand_object** %125, align 8
  %127 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %128 = call i32 @acpi_ds_result_push(%union.acpi_operand_object* %126, %struct.acpi_walk_state* %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call i64 @ACPI_SUCCESS(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %120
  %133 = load i32, i32* @ACPI_PARSEOP_IN_STACK, align 4
  %134 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %135 = bitcast %union.acpi_parse_object* %134 to %struct.TYPE_8__*
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %133
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %132, %120
  br label %140

140:                                              ; preds = %139, %115, %104, %88, %64, %56, %25
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @return_ACPI_STATUS(i32 %141)
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_create_operand(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_obj_stack_pop(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_result_push(%union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
