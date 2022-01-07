; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_eval_data_object_operands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_eval_data_object_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, i32, %union.acpi_operand_object*, %union.acpi_operand_object**, i32 }
%union.acpi_parse_object = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@ds_eval_data_object_operands = common dso_local global i32 0, align 4
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4
@AML_NAME_OP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_eval_data_object_operands(%struct.acpi_walk_state* %0, %union.acpi_parse_object* %1, %union.acpi_operand_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca %union.acpi_parse_object*, align 8
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_operand_object*, align 8
  %10 = alloca i64, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %5, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %6, align 8
  store %union.acpi_operand_object* %2, %union.acpi_operand_object** %7, align 8
  %11 = load i32, i32* @ds_eval_data_object_operands, align 4
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 %11)
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %20 = bitcast %union.acpi_parse_object* %19 to %struct.TYPE_10__*
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @acpi_ds_create_operand(%struct.acpi_walk_state* %18, i32 %23, i32 1)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @ACPI_FAILURE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @return_ACPI_STATUS(i32 %29)
  br label %31

31:                                               ; preds = %28, %3
  %32 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %33 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 3
  %37 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %36, align 8
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %39 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %37, i64 %42
  %44 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %45 = call i32 @acpi_ex_resolve_operands(i32 %34, %union.acpi_operand_object** %43, %struct.acpi_walk_state* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @ACPI_FAILURE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %31
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @return_ACPI_STATUS(i32 %50)
  br label %52

52:                                               ; preds = %49, %31
  %53 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %54 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %53, i32 0, i32 3
  %55 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %54, align 8
  %56 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %57 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %55, i64 %60
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %61, align 8
  store %union.acpi_operand_object* %62, %union.acpi_operand_object** %9, align 8
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %64 = bitcast %union.acpi_operand_object* %63 to %struct.TYPE_7__*
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %10, align 8
  %67 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %68 = call i32 @acpi_ds_obj_stack_pop(i32 1, %struct.acpi_walk_state* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @ACPI_FAILURE(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %52
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @return_ACPI_STATUS(i32 %73)
  br label %75

75:                                               ; preds = %72, %52
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %77 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %76)
  %78 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %79 = bitcast %union.acpi_parse_object* %78 to %struct.TYPE_10__*
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %92 [
    i32 130, label %82
    i32 129, label %87
    i32 128, label %87
  ]

82:                                               ; preds = %75
  %83 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %84 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @acpi_ds_build_internal_buffer_obj(%struct.acpi_walk_state* %83, %union.acpi_parse_object* %84, i64 %85, %union.acpi_operand_object** %7)
  store i32 %86, i32* %8, align 4
  br label %95

87:                                               ; preds = %75, %75
  %88 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %89 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @acpi_ds_build_internal_package_obj(%struct.acpi_walk_state* %88, %union.acpi_parse_object* %89, i64 %90, %union.acpi_operand_object** %7)
  store i32 %91, i32* %8, align 4
  br label %95

92:                                               ; preds = %75
  %93 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  %94 = call i32 @return_ACPI_STATUS(i32 %93)
  br label %95

95:                                               ; preds = %92, %87, %82
  %96 = load i32, i32* %8, align 4
  %97 = call i64 @ACPI_SUCCESS(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %139

99:                                               ; preds = %95
  %100 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %101 = bitcast %union.acpi_parse_object* %100 to %struct.TYPE_10__*
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = icmp ne %struct.TYPE_9__* %103, null
  br i1 %104, label %105, label %134

105:                                              ; preds = %99
  %106 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %107 = bitcast %union.acpi_parse_object* %106 to %struct.TYPE_10__*
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 129
  br i1 %113, label %114, label %138

114:                                              ; preds = %105
  %115 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %116 = bitcast %union.acpi_parse_object* %115 to %struct.TYPE_10__*
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 128
  br i1 %122, label %123, label %138

123:                                              ; preds = %114
  %124 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %125 = bitcast %union.acpi_parse_object* %124 to %struct.TYPE_10__*
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* @AML_NAME_OP, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %123, %99
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %136 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %137 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %136, i32 0, i32 2
  store %union.acpi_operand_object* %135, %union.acpi_operand_object** %137, align 8
  br label %138

138:                                              ; preds = %134, %123, %114, %105
  br label %139

139:                                              ; preds = %138, %95
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @return_ACPI_STATUS(i32 %140)
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ds_create_operand(%struct.acpi_walk_state*, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ex_resolve_operands(i32, %union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_obj_stack_pop(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ds_build_internal_buffer_obj(%struct.acpi_walk_state*, %union.acpi_parse_object*, i64, %union.acpi_operand_object**) #1

declare dso_local i32 @acpi_ds_build_internal_package_obj(%struct.acpi_walk_state*, %union.acpi_parse_object*, i64, %union.acpi_operand_object**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
