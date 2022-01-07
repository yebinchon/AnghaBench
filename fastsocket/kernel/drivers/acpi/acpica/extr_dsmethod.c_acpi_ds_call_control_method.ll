; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_call_control_method.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_call_control_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_thread_state = type { i32 }
%struct.acpi_walk_state = type { i64, i32**, %struct.acpi_namespace_node*, i32 }
%struct.acpi_namespace_node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%union.acpi_parse_object = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64 (%struct.acpi_walk_state.0*)*, i32, i32, i32 }
%struct.acpi_walk_state.0 = type opaque
%struct.acpi_evaluate_info = type { i32** }

@ds_call_control_method = common dso_local global i32 0, align 4
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Calling method %p, currentstate=%p\0A\00", align 1
@AE_NULL_ENTRY = common dso_local global i64 0, align 8
@AE_NULL_OBJECT = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i64 0, align 8
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"**** Begin nested execution of [%4.4s] **** WalkState=%p\0A\00", align 1
@AML_METHOD_INTERNAL_ONLY = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@AE_CTRL_TERMINATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ds_call_control_method(%struct.acpi_thread_state* %0, %struct.acpi_walk_state* %1, %union.acpi_parse_object* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_thread_state*, align 8
  %6 = alloca %struct.acpi_walk_state*, align 8
  %7 = alloca %union.acpi_parse_object*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.acpi_namespace_node*, align 8
  %10 = alloca %struct.acpi_walk_state*, align 8
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca %struct.acpi_evaluate_info*, align 8
  %13 = alloca i64, align 8
  store %struct.acpi_thread_state* %0, %struct.acpi_thread_state** %5, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %6, align 8
  store %union.acpi_parse_object* %2, %union.acpi_parse_object** %7, align 8
  store %struct.acpi_walk_state* null, %struct.acpi_walk_state** %10, align 8
  %14 = load i32, i32* @ds_call_control_method, align 4
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %16 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %14, %struct.acpi_walk_state* %15)
  %17 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %19 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %22 = ptrtoint %struct.acpi_walk_state* %21 to i32
  %23 = call i32 @ACPI_DEBUG_PRINT(i32 %22)
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 2
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %25, align 8
  store %struct.acpi_namespace_node* %26, %struct.acpi_namespace_node** %9, align 8
  %27 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %28 = icmp ne %struct.acpi_namespace_node* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i64, i64* @AE_NULL_ENTRY, align 8
  %31 = call i32 @return_ACPI_STATUS(i64 %30)
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %34 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %33)
  store %union.acpi_operand_object* %34, %union.acpi_operand_object** %11, align 8
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %36 = icmp ne %union.acpi_operand_object* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* @AE_NULL_OBJECT, align 8
  %39 = call i32 @return_ACPI_STATUS(i64 %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %44 = call i64 @acpi_ds_begin_method_execution(%struct.acpi_namespace_node* %41, %union.acpi_operand_object* %42, %struct.acpi_walk_state* %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @ACPI_FAILURE(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @return_ACPI_STATUS(i64 %49)
  br label %51

51:                                               ; preds = %48, %40
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %57 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %5, align 8
  %58 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32 %55, i32* null, %union.acpi_operand_object* %56, %struct.acpi_thread_state* %57)
  store %struct.acpi_walk_state* %58, %struct.acpi_walk_state** %10, align 8
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %60 = icmp ne %struct.acpi_walk_state* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %51
  %62 = load i64, i64* @AE_NO_MEMORY, align 8
  store i64 %62, i64* %8, align 8
  br label %162

63:                                               ; preds = %51
  %64 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %65 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %64, i32 0, i32 1
  %66 = load i32**, i32*** %65, align 8
  %67 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %68 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32*, i32** %66, i64 %69
  store i32* null, i32** %70, align 8
  %71 = call %struct.acpi_evaluate_info* @ACPI_ALLOCATE_ZEROED(i32 8)
  store %struct.acpi_evaluate_info* %71, %struct.acpi_evaluate_info** %12, align 8
  %72 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %12, align 8
  %73 = icmp ne %struct.acpi_evaluate_info* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %63
  %75 = load i64, i64* @AE_NO_MEMORY, align 8
  %76 = call i32 @return_ACPI_STATUS(i64 %75)
  br label %77

77:                                               ; preds = %74, %63
  %78 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %79 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 0
  %82 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %12, align 8
  %83 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %82, i32 0, i32 0
  store i32** %81, i32*** %83, align 8
  %84 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %85 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %87 = bitcast %union.acpi_operand_object* %86 to %struct.TYPE_4__*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %91 = bitcast %union.acpi_operand_object* %90 to %struct.TYPE_4__*
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %12, align 8
  %95 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %96 = call i64 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %84, i32* null, %struct.acpi_namespace_node* %85, i32 %89, i32 %93, %struct.acpi_evaluate_info* %94, i32 %95)
  store i64 %96, i64* %8, align 8
  %97 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %12, align 8
  %98 = call i32 @ACPI_FREE(%struct.acpi_evaluate_info* %97)
  %99 = load i64, i64* %8, align 8
  %100 = call i64 @ACPI_FAILURE(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %77
  br label %162

103:                                              ; preds = %77
  store i64 0, i64* %13, align 8
  br label %104

104:                                              ; preds = %124, %103
  %105 = load i64, i64* %13, align 8
  %106 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %107 = bitcast %union.acpi_operand_object* %106 to %struct.TYPE_4__*
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ult i64 %105, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %104
  %112 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %113 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %112, i32 0, i32 1
  %114 = load i32**, i32*** %113, align 8
  %115 = load i64, i64* %13, align 8
  %116 = getelementptr inbounds i32*, i32** %114, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @acpi_ut_remove_reference(i32* %117)
  %119 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %120 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %119, i32 0, i32 1
  %121 = load i32**, i32*** %120, align 8
  %122 = load i64, i64* %13, align 8
  %123 = getelementptr inbounds i32*, i32** %121, i64 %122
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %111
  %125 = load i64, i64* %13, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %13, align 8
  br label %104

127:                                              ; preds = %104
  %128 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %129 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %131 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %132 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %136 = ptrtoint %struct.acpi_walk_state* %135 to i32
  %137 = call i32 @ACPI_DEBUG_PRINT(i32 %136)
  %138 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %139 = bitcast %union.acpi_operand_object* %138 to %struct.TYPE_4__*
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @AML_METHOD_INTERNAL_ONLY, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %127
  %146 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %147 = bitcast %union.acpi_operand_object* %146 to %struct.TYPE_4__*
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i64 (%struct.acpi_walk_state.0*)*, i64 (%struct.acpi_walk_state.0*)** %148, align 8
  %150 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %151 = bitcast %struct.acpi_walk_state* %150 to %struct.acpi_walk_state.0*
  %152 = call i64 %149(%struct.acpi_walk_state.0* %151)
  store i64 %152, i64* %8, align 8
  %153 = load i64, i64* %8, align 8
  %154 = load i64, i64* @AE_OK, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %145
  %157 = load i64, i64* @AE_CTRL_TERMINATE, align 8
  store i64 %157, i64* %8, align 8
  br label %158

158:                                              ; preds = %156, %145
  br label %159

159:                                              ; preds = %158, %127
  %160 = load i64, i64* %8, align 8
  %161 = call i32 @return_ACPI_STATUS(i64 %160)
  br label %162

162:                                              ; preds = %159, %102, %61
  %163 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %164 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %165 = call i32 @acpi_ds_terminate_control_method(%union.acpi_operand_object* %163, %struct.acpi_walk_state* %164)
  %166 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %167 = icmp ne %struct.acpi_walk_state* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %170 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %169)
  br label %171

171:                                              ; preds = %168, %162
  %172 = load i64, i64* %8, align 8
  %173 = call i32 @return_ACPI_STATUS(i64 %172)
  %174 = load i64, i64* %4, align 8
  ret i64 %174
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i64 @acpi_ds_begin_method_execution(%struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32, i32*, %union.acpi_operand_object*, %struct.acpi_thread_state*) #1

declare dso_local %struct.acpi_evaluate_info* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i64 @acpi_ds_init_aml_walk(%struct.acpi_walk_state*, i32*, %struct.acpi_namespace_node*, i32, i32, %struct.acpi_evaluate_info*, i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_evaluate_info*) #1

declare dso_local i32 @acpi_ut_remove_reference(i32*) #1

declare dso_local i32 @acpi_ds_terminate_control_method(%union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
