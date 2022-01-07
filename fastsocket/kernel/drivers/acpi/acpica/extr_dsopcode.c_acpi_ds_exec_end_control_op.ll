; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_exec_end_control_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_exec_end_control_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %union.acpi_generic_state*, i32, %struct.TYPE_20__*, i32, %struct.TYPE_20__**, %struct.TYPE_17__*, i32, i32 }
%union.acpi_generic_state = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_20__** }
%union.acpi_parse_object = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ds_exec_end_control_op = common dso_local global i32 0, align 4
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"[IF_OP] Op=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"[WHILE_OP] Op=%p\0A\00", align 1
@ACPI_MAX_LOOP_ITERATIONS = common dso_local global i32 0, align 4
@AE_AML_INFINITE_LOOP = common dso_local global i32 0, align 4
@AE_CTRL_PENDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"[WHILE_OP] termination! Op=%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"[RETURN_OP] Op=%p Arg=%p\0A\00", align 1
@ACPI_DESC_TYPE_OPERAND = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i32 0, align 4
@ACPI_REFCLASS_INDEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Completed RETURN_OP State=%p, RetVal=%p\0A\00", align 1
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@acpi_gbl_cm_single_step = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"**break** Executed AML BreakPoint opcode\0A\00", align 1
@ACPI_SIGNAL_BREAKPOINT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Executed AML Breakpoint opcode\00", align 1
@AE_AML_NO_WHILE = common dso_local global i32 0, align 4
@AE_CTRL_BREAK = common dso_local global i32 0, align 4
@AE_CTRL_CONTINUE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Unknown control opcode=%X Op=%p\00", align 1
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_exec_end_control_op(%struct.acpi_walk_state* %0, %union.acpi_parse_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %4, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %5, align 8
  %8 = load i32, i32* @AE_OK, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @ds_exec_end_control_op, align 4
  %10 = call i32 @ACPI_FUNCTION_NAME(i32 %9)
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %12 = bitcast %union.acpi_parse_object* %11 to %struct.TYPE_19__*
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %290 [
    i32 131, label %15
    i32 132, label %33
    i32 128, label %34
    i32 129, label %79
    i32 130, label %234
    i32 134, label %235
    i32 135, label %242
    i32 133, label %242
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %18 = ptrtoint %union.acpi_parse_object* %17 to i32
  %19 = call i32 @ACPI_DEBUG_PRINT(i32 %18)
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 0
  %22 = load %union.acpi_generic_state*, %union.acpi_generic_state** %21, align 8
  %23 = bitcast %union.acpi_generic_state* %22 to %struct.TYPE_12__*
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 4
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %28, i32 0, i32 0
  %30 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %29)
  store %union.acpi_generic_state* %30, %union.acpi_generic_state** %7, align 8
  %31 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %32 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %31)
  br label %300

33:                                               ; preds = %2
  br label %300

34:                                               ; preds = %2
  %35 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %36 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %37 = ptrtoint %union.acpi_parse_object* %36 to i32
  %38 = call i32 @ACPI_DEBUG_PRINT(i32 %37)
  %39 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %40 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %39, i32 0, i32 0
  %41 = load %union.acpi_generic_state*, %union.acpi_generic_state** %40, align 8
  store %union.acpi_generic_state* %41, %union.acpi_generic_state** %7, align 8
  %42 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %43 = bitcast %union.acpi_generic_state* %42 to %struct.TYPE_12__*
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %34
  %48 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %49 = bitcast %union.acpi_generic_state* %48 to %struct.TYPE_18__*
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %54 = bitcast %union.acpi_generic_state* %53 to %struct.TYPE_18__*
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ACPI_MAX_LOOP_ITERATIONS, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @AE_AML_INFINITE_LOOP, align 4
  store i32 %60, i32* %6, align 4
  br label %300

61:                                               ; preds = %47
  %62 = load i32, i32* @AE_CTRL_PENDING, align 4
  store i32 %62, i32* %6, align 4
  %63 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %64 = bitcast %union.acpi_generic_state* %63 to %struct.TYPE_18__*
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %68 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %300

69:                                               ; preds = %34
  %70 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %71 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %72 = ptrtoint %union.acpi_parse_object* %71 to i32
  %73 = call i32 @ACPI_DEBUG_PRINT(i32 %72)
  %74 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %75 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %74, i32 0, i32 0
  %76 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %75)
  store %union.acpi_generic_state* %76, %union.acpi_generic_state** %7, align 8
  %77 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %78 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %77)
  br label %300

79:                                               ; preds = %2
  %80 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %81 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %82 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %83 = bitcast %union.acpi_parse_object* %82 to %struct.TYPE_19__*
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ACPI_DEBUG_PRINT(i32 %86)
  %88 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %89 = bitcast %union.acpi_parse_object* %88 to %struct.TYPE_19__*
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %129

94:                                               ; preds = %79
  %95 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %96 = call i32 @acpi_ds_clear_implicit_return(%struct.acpi_walk_state* %95)
  %97 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %98 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %99 = bitcast %union.acpi_parse_object* %98 to %struct.TYPE_19__*
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %97, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @ACPI_FAILURE(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %94
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %302

109:                                              ; preds = %94
  %110 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %111 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %110, i32 0, i32 4
  %112 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %112, i64 0
  %114 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %115 = call i32 @acpi_ex_resolve_to_value(%struct.TYPE_20__** %113, %struct.acpi_walk_state* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @ACPI_FAILURE(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %302

121:                                              ; preds = %109
  %122 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %123 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %122, i32 0, i32 4
  %124 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %124, i64 0
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  %127 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %128 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %127, i32 0, i32 2
  store %struct.TYPE_20__* %126, %struct.TYPE_20__** %128, align 8
  br label %225

129:                                              ; preds = %79
  %130 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %131 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %203

134:                                              ; preds = %129
  %135 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %136 = call i32 @acpi_ds_clear_implicit_return(%struct.acpi_walk_state* %135)
  %137 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %138 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %137, i32 0, i32 5
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %142, i64 0
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %143, align 8
  %145 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_20__* %144)
  %146 = load i32, i32* @ACPI_DESC_TYPE_OPERAND, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %192

148:                                              ; preds = %134
  %149 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %150 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %149, i32 0, i32 5
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %154, i64 0
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %192

162:                                              ; preds = %148
  %163 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %164 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %163, i32 0, i32 5
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %168, i64 0
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @ACPI_REFCLASS_INDEX, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %162
  %177 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %178 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %177, i32 0, i32 5
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %182, i64 0
  %184 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %185 = call i32 @acpi_ex_resolve_to_value(%struct.TYPE_20__** %183, %struct.acpi_walk_state* %184)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @ACPI_FAILURE(i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %176
  %190 = load i32, i32* %6, align 4
  store i32 %190, i32* %3, align 4
  br label %302

191:                                              ; preds = %176
  br label %192

192:                                              ; preds = %191, %162, %148, %134
  %193 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %194 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %193, i32 0, i32 5
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %198, i64 0
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %199, align 8
  %201 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %202 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %201, i32 0, i32 2
  store %struct.TYPE_20__* %200, %struct.TYPE_20__** %202, align 8
  br label %224

203:                                              ; preds = %129
  %204 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %205 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %203
  %209 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %210 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %209, i32 0, i32 4
  %211 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %211, i64 0
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %212, align 8
  %214 = call i32 @acpi_ut_remove_reference(%struct.TYPE_20__* %213)
  br label %215

215:                                              ; preds = %208, %203
  %216 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %217 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %216, i32 0, i32 4
  %218 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %218, i64 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %219, align 8
  %220 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %221 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %220, i32 0, i32 3
  store i32 0, i32* %221, align 8
  %222 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %223 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %222, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %223, align 8
  br label %224

224:                                              ; preds = %215, %192
  br label %225

225:                                              ; preds = %224, %121
  %226 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %227 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %228 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %229 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %228, i32 0, i32 2
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %229, align 8
  %231 = ptrtoint %struct.TYPE_20__* %230 to i32
  %232 = call i32 @ACPI_DEBUG_PRINT(i32 %231)
  %233 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %233, i32* %6, align 4
  br label %300

234:                                              ; preds = %2
  br label %300

235:                                              ; preds = %2
  %236 = load i32, i32* @TRUE, align 4
  store i32 %236, i32* @acpi_gbl_cm_single_step, align 4
  %237 = call i32 @ACPI_DEBUGGER_EXEC(i32 %236)
  %238 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %239 = call i32 @ACPI_DEBUGGER_EXEC(i32 %238)
  %240 = load i32, i32* @ACPI_SIGNAL_BREAKPOINT, align 4
  %241 = call i32 @acpi_os_signal(i32 %240, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  store i32 %241, i32* %6, align 4
  br label %300

242:                                              ; preds = %2, %2
  br label %243

243:                                              ; preds = %258, %242
  %244 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %245 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %244, i32 0, i32 0
  %246 = load %union.acpi_generic_state*, %union.acpi_generic_state** %245, align 8
  %247 = icmp ne %union.acpi_generic_state* %246, null
  br i1 %247, label %248, label %256

248:                                              ; preds = %243
  %249 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %250 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %249, i32 0, i32 0
  %251 = load %union.acpi_generic_state*, %union.acpi_generic_state** %250, align 8
  %252 = bitcast %union.acpi_generic_state* %251 to %struct.TYPE_18__*
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 128
  br label %256

256:                                              ; preds = %248, %243
  %257 = phi i1 [ false, %243 ], [ %255, %248 ]
  br i1 %257, label %258, label %264

258:                                              ; preds = %256
  %259 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %260 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %259, i32 0, i32 0
  %261 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %260)
  store %union.acpi_generic_state* %261, %union.acpi_generic_state** %7, align 8
  %262 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %263 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %262)
  br label %243

264:                                              ; preds = %256
  %265 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %266 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %265, i32 0, i32 0
  %267 = load %union.acpi_generic_state*, %union.acpi_generic_state** %266, align 8
  %268 = icmp ne %union.acpi_generic_state* %267, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %264
  %270 = load i32, i32* @AE_AML_NO_WHILE, align 4
  store i32 %270, i32* %3, align 4
  br label %302

271:                                              ; preds = %264
  %272 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %273 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %272, i32 0, i32 0
  %274 = load %union.acpi_generic_state*, %union.acpi_generic_state** %273, align 8
  %275 = bitcast %union.acpi_generic_state* %274 to %struct.TYPE_18__*
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %279 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 8
  %280 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %281 = bitcast %union.acpi_parse_object* %280 to %struct.TYPE_19__*
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %283, 135
  br i1 %284, label %285, label %287

285:                                              ; preds = %271
  %286 = load i32, i32* @AE_CTRL_BREAK, align 4
  store i32 %286, i32* %6, align 4
  br label %289

287:                                              ; preds = %271
  %288 = load i32, i32* @AE_CTRL_CONTINUE, align 4
  store i32 %288, i32* %6, align 4
  br label %289

289:                                              ; preds = %287, %285
  br label %300

290:                                              ; preds = %2
  %291 = load i32, i32* @AE_INFO, align 4
  %292 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %293 = bitcast %union.acpi_parse_object* %292 to %struct.TYPE_19__*
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %297 = ptrtoint %union.acpi_parse_object* %296 to i32
  %298 = call i32 @ACPI_ERROR(i32 %297)
  %299 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  store i32 %299, i32* %6, align 4
  br label %300

300:                                              ; preds = %290, %289, %235, %234, %225, %69, %61, %59, %33, %15
  %301 = load i32, i32* %6, align 4
  store i32 %301, i32* %3, align 4
  br label %302

302:                                              ; preds = %300, %269, %189, %119, %107
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state**) #1

declare dso_local i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #1

declare dso_local i32 @acpi_ds_clear_implicit_return(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_create_operands(%struct.acpi_walk_state*, i32) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ex_resolve_to_value(%struct.TYPE_20__**, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_20__*) #1

declare dso_local i32 @acpi_ut_remove_reference(%struct.TYPE_20__*) #1

declare dso_local i32 @ACPI_DEBUGGER_EXEC(i32) #1

declare dso_local i32 @acpi_os_printf(i8*) #1

declare dso_local i32 @acpi_os_signal(i32, i8*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
