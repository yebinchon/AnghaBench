; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psxface.c_acpi_ps_execute_method.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psxface.c_acpi_ps_execute_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i64, %struct.TYPE_13__*, i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 (%struct.acpi_walk_state*)*, i32, i32, i32 }
%struct.acpi_walk_state = type { %struct.TYPE_11__*, i32, i32, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%union.acpi_parse_object = type { i32 }

@ps_execute_method = common dso_local global i32 0, align 4
@AE_NULL_ENTRY = common dso_local global i32 0, align 4
@REF_INCREMENT = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"**** Begin Method Parse/Execute [%4.4s] **** Node=%p Obj=%p\0A\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@AOPOBJ_MODULE_LEVEL = common dso_local global i32 0, align 4
@ACPI_PARSE_MODULE_LEVEL = common dso_local global i32 0, align 4
@AML_METHOD_INTERNAL_ONLY = common dso_local global i32 0, align 4
@acpi_gbl_enable_interpreter_slack = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@REF_DECREMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Method returned ObjDesc=%p\0A\00", align 1
@AE_CTRL_RETURN_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ps_execute_method(%struct.acpi_evaluate_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_evaluate_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %3, align 8
  %7 = load i32, i32* @ps_execute_method, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %10 = icmp ne %struct.acpi_evaluate_info* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %12, i32 0, i32 3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @AE_NULL_ENTRY, align 4
  %18 = call i32 @return_ACPI_STATUS(i32 %17)
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %20, i32 0, i32 3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = call i32 @acpi_ds_begin_method_execution(%struct.TYPE_12__* %22, %struct.TYPE_13__* %25, i32* null)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @return_ACPI_STATUS(i32 %31)
  br label %33

33:                                               ; preds = %30, %19
  %34 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %35 = load i32, i32* @REF_INCREMENT, align 4
  %36 = call i32 @acpi_ps_update_parameter_list(%struct.acpi_evaluate_info* %34, i32 %35)
  %37 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %38 = call i32 @acpi_ps_start_trace(%struct.acpi_evaluate_info* %37)
  %39 = load i32, i32* @ACPI_DB_PARSE, align 4
  %40 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %41 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %40, i32 0, i32 3
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %47 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %46, i32 0, i32 3
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %50 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %49, i32 0, i32 1
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = ptrtoint %struct.TYPE_13__* %51 to i32
  %53 = call i32 @ACPI_DEBUG_PRINT(i32 %52)
  %54 = call %union.acpi_parse_object* (...) @acpi_ps_create_scope_op()
  store %union.acpi_parse_object* %54, %union.acpi_parse_object** %5, align 8
  %55 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %56 = icmp ne %union.acpi_parse_object* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %33
  %58 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %58, i32* %4, align 4
  br label %180

59:                                               ; preds = %33
  %60 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %61 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %62 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %64 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32 %68, i32* null, i32* null, i32* null)
  store %struct.acpi_walk_state* %69, %struct.acpi_walk_state** %6, align 8
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %71 = icmp ne %struct.acpi_walk_state* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %59
  %73 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %73, i32* %4, align 4
  br label %180

74:                                               ; preds = %59
  %75 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %76 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %77 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %78 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %77, i32 0, i32 3
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %81 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %80, i32 0, i32 1
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %87 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %86, i32 0, i32 1
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %93 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %94 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %75, %union.acpi_parse_object* %76, %struct.TYPE_12__* %79, i32 %85, i32 %91, %struct.acpi_evaluate_info* %92, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i64 @ACPI_FAILURE(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %74
  %101 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %102 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %101)
  br label %180

103:                                              ; preds = %74
  %104 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %105 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %104, i32 0, i32 1
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @AOPOBJ_MODULE_LEVEL, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %103
  %114 = load i32, i32* @ACPI_PARSE_MODULE_LEVEL, align 4
  %115 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %116 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %103
  %120 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %121 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %120, i32 0, i32 1
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @AML_METHOD_INTERNAL_ONLY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %119
  %130 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %131 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %130, i32 0, i32 1
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load i32 (%struct.acpi_walk_state*)*, i32 (%struct.acpi_walk_state*)** %134, align 8
  %136 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %137 = call i32 %135(%struct.acpi_walk_state* %136)
  store i32 %137, i32* %4, align 4
  %138 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %139 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %142 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %144 = call i32 @acpi_ds_scope_stack_clear(%struct.acpi_walk_state* %143)
  %145 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %146 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %145, i32 0, i32 2
  %147 = call i32 @acpi_ps_cleanup_scope(i32* %146)
  %148 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %149 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %152 = call i32 @acpi_ds_terminate_control_method(i32 %150, %struct.acpi_walk_state* %151)
  %153 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %154 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %153)
  br label %180

155:                                              ; preds = %119
  %156 = load i64, i64* @acpi_gbl_enable_interpreter_slack, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %155
  %159 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %160 = call %struct.TYPE_11__* @acpi_ut_create_internal_object(i32 %159)
  %161 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %162 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %161, i32 0, i32 0
  store %struct.TYPE_11__* %160, %struct.TYPE_11__** %162, align 8
  %163 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %164 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %163, i32 0, i32 0
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = icmp ne %struct.TYPE_11__* %165, null
  br i1 %166, label %171, label %167

167:                                              ; preds = %158
  %168 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %168, i32* %4, align 4
  %169 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %170 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %169)
  br label %180

171:                                              ; preds = %158
  %172 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %173 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %172, i32 0, i32 0
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %171, %155
  %178 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %179 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %178)
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %177, %167, %129, %100, %72, %57
  %181 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %182 = call i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %181)
  %183 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %184 = call i32 @acpi_ps_stop_trace(%struct.acpi_evaluate_info* %183)
  %185 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %186 = load i32, i32* @REF_DECREMENT, align 4
  %187 = call i32 @acpi_ps_update_parameter_list(%struct.acpi_evaluate_info* %185, i32 %186)
  %188 = load i32, i32* %4, align 4
  %189 = call i64 @ACPI_FAILURE(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %180
  %192 = load i32, i32* %4, align 4
  %193 = call i32 @return_ACPI_STATUS(i32 %192)
  br label %194

194:                                              ; preds = %191, %180
  %195 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %196 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %194
  %200 = load i32, i32* @ACPI_DB_PARSE, align 4
  %201 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %202 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 @ACPI_DEBUG_PRINT(i32 %204)
  %206 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %207 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @ACPI_DUMP_STACK_ENTRY(i64 %208)
  %210 = load i32, i32* @AE_CTRL_RETURN_VALUE, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %199, %194
  %212 = load i32, i32* %4, align 4
  %213 = call i32 @return_ACPI_STATUS(i32 %212)
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_begin_method_execution(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ps_update_parameter_list(%struct.acpi_evaluate_info*, i32) #1

declare dso_local i32 @acpi_ps_start_trace(%struct.acpi_evaluate_info*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_create_scope_op(...) #1

declare dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32, i32*, i32*, i32*) #1

declare dso_local i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state*, %union.acpi_parse_object*, %struct.TYPE_12__*, i32, i32, %struct.acpi_evaluate_info*, i32) #1

declare dso_local i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_scope_stack_clear(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ps_cleanup_scope(i32*) #1

declare dso_local i32 @acpi_ds_terminate_control_method(i32, %struct.acpi_walk_state*) #1

declare dso_local %struct.TYPE_11__* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @acpi_ps_parse_aml(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ps_stop_trace(%struct.acpi_evaluate_info*) #1

declare dso_local i32 @ACPI_DUMP_STACK_ENTRY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
