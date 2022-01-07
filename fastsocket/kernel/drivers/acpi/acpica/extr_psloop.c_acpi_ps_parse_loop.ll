; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psloop.c_acpi_ps_parse_loop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psloop.c_acpi_ps_parse_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, {}*, i64, %union.acpi_parse_object*, %struct.TYPE_18__*, i32, i32, i32, i32, %union.acpi_parse_object*, %struct.TYPE_15__*, %struct.acpi_parse_state, i32* }
%struct.TYPE_18__ = type { i32, i32 }
%union.acpi_parse_object = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.acpi_parse_state = type { i32*, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_16__ = type { i32*, i8* }

@AE_OK = common dso_local global i64 0, align 8
@ps_parse_loop = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i64 0, align 8
@ACPI_WALK_METHOD_RESTART = common dso_local global i32 0, align 4
@AML_IF_OP = common dso_local global i64 0, align 8
@AML_WHILE_OP = common dso_local global i64 0, align 8
@ACPI_CONTROL_PREDICATE_EXECUTING = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@AE_CODE_MASK = common dso_local global i64 0, align 8
@AE_CODE_CONTROL = common dso_local global i64 0, align 8
@AE_AML_NO_RETURN_VALUE = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invoked method did not return a value\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GetPredicate Failed\00", align 1
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Popped scope, Op=%p\0A\00", align 1
@AE_CTRL_PARSE_CONTINUE = common dso_local global i64 0, align 8
@AE_CTRL_PARSE_PENDING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"Opcode %4.4X [%s] Op %p Aml %p AmlOffset %5.5X\0A\00", align 1
@AML_NAMED = common dso_local global i32 0, align 4
@acpi_gbl_depth = common dso_local global i64 0, align 8
@AML_REGION_OP = common dso_local global i64 0, align 8
@AML_DATA_REGION_OP = common dso_local global i64 0, align 8
@AML_CREATE = common dso_local global i32 0, align 4
@AML_BANK_FIELD_OP = common dso_local global i64 0, align 8
@AE_CTRL_PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ps_parse_loop(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca %struct.acpi_parse_state*, align 8
  %7 = alloca i32*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %8 = load i64, i64* @AE_OK, align 8
  store i64 %8, i64* %4, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %5, align 8
  store i32* null, i32** %7, align 8
  %9 = load i32, i32* @ps_parse_loop, align 4
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %11 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %9, %struct.acpi_walk_state* %10)
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i64, i64* @AE_BAD_PARAMETER, align 8
  %18 = call i32 @return_ACPI_STATUS(i64 %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 11
  store %struct.acpi_parse_state* %21, %struct.acpi_parse_state** %6, align 8
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 6
  store i32 0, i32* %23, align 4
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ACPI_WALK_METHOD_RESTART, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %142

30:                                               ; preds = %19
  %31 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %32 = call i64 @acpi_ps_has_completed_scope(%struct.acpi_parse_state* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %126

34:                                               ; preds = %30
  %35 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %36 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %35, i32 0, i32 2
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %115

42:                                               ; preds = %34
  %43 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %44 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %43, i32 0, i32 2
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AML_IF_OP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %42
  %55 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %56 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %55, i32 0, i32 2
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AML_WHILE_OP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %115

66:                                               ; preds = %54, %42
  %67 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %68 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %67, i32 0, i32 10
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = icmp ne %struct.TYPE_15__* %69, null
  br i1 %70, label %71, label %115

71:                                               ; preds = %66
  %72 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %73 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %72, i32 0, i32 10
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ACPI_CONTROL_PREDICATE_EXECUTING, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %115

80:                                               ; preds = %71
  %81 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %82 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %81, i32 0, i32 3
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %82, align 8
  %83 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %84 = load i32, i32* @TRUE, align 4
  %85 = call i32 @ACPI_TO_POINTER(i32 %84)
  %86 = call i64 @acpi_ds_get_predicate_value(%struct.acpi_walk_state* %83, i32 %85)
  store i64 %86, i64* %4, align 8
  %87 = load i64, i64* %4, align 8
  %88 = call i64 @ACPI_FAILURE(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %80
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* @AE_CODE_MASK, align 8
  %93 = and i64 %91, %92
  %94 = load i64, i64* @AE_CODE_CONTROL, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* @AE_AML_NO_RETURN_VALUE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* @AE_INFO, align 4
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([38 x i8]* @.str to i32))
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i32, i32* @AE_INFO, align 4
  %106 = load i64, i64* %4, align 8
  %107 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([20 x i8]* @.str.1 to i32))
  %108 = load i64, i64* %4, align 8
  %109 = call i32 @return_ACPI_STATUS(i64 %108)
  br label %110

110:                                              ; preds = %104, %90, %80
  %111 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %112 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %113 = load i64, i64* %4, align 8
  %114 = call i64 @acpi_ps_next_parse_state(%struct.acpi_walk_state* %111, %union.acpi_parse_object* %112, i64 %113)
  store i64 %114, i64* %4, align 8
  br label %115

115:                                              ; preds = %110, %71, %66, %54, %34
  %116 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %117 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %118 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %117, i32 0, i32 6
  %119 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %120 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %119, i32 0, i32 5
  %121 = call i32 @acpi_ps_pop_scope(%struct.acpi_parse_state* %116, %union.acpi_parse_object** %5, i32* %118, i32* %120)
  %122 = load i32, i32* @ACPI_DB_PARSE, align 4
  %123 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %124 = ptrtoint %union.acpi_parse_object* %123 to i32
  %125 = call i32 @ACPI_DEBUG_PRINT(i32 %124)
  br label %141

126:                                              ; preds = %30
  %127 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %128 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %127, i32 0, i32 9
  %129 = load %union.acpi_parse_object*, %union.acpi_parse_object** %128, align 8
  %130 = icmp ne %union.acpi_parse_object* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %133 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %132, i32 0, i32 9
  %134 = load %union.acpi_parse_object*, %union.acpi_parse_object** %133, align 8
  store %union.acpi_parse_object* %134, %union.acpi_parse_object** %5, align 8
  %135 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %136 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %139 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %131, %126
  br label %141

141:                                              ; preds = %140, %115
  br label %142

142:                                              ; preds = %141, %19
  br label %143

143:                                              ; preds = %424, %280, %279, %249, %190, %173, %142
  %144 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %145 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %148 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ult i32* %146, %149
  br i1 %150, label %154, label %151

151:                                              ; preds = %143
  %152 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %153 = icmp ne %union.acpi_parse_object* %152, null
  br label %154

154:                                              ; preds = %151, %143
  %155 = phi i1 [ true, %143 ], [ %153, %151 ]
  br i1 %155, label %156, label %425

156:                                              ; preds = %154
  %157 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %158 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  store i32* %159, i32** %7, align 8
  %160 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %161 = icmp ne %union.acpi_parse_object* %160, null
  br i1 %161, label %224, label %162

162:                                              ; preds = %156
  %163 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = call i64 @acpi_ps_create_op(%struct.acpi_walk_state* %163, i32* %164, %union.acpi_parse_object** %5)
  store i64 %165, i64* %4, align 8
  %166 = load i64, i64* %4, align 8
  %167 = call i64 @ACPI_FAILURE(i64 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %191

169:                                              ; preds = %162
  %170 = load i64, i64* %4, align 8
  %171 = load i64, i64* @AE_CTRL_PARSE_CONTINUE, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  br label %143

174:                                              ; preds = %169
  %175 = load i64, i64* %4, align 8
  %176 = load i64, i64* @AE_CTRL_PARSE_PENDING, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i64, i64* @AE_OK, align 8
  store i64 %179, i64* %4, align 8
  br label %180

180:                                              ; preds = %178, %174
  %181 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %182 = load i64, i64* %4, align 8
  %183 = call i64 @acpi_ps_complete_op(%struct.acpi_walk_state* %181, %union.acpi_parse_object** %5, i64 %182)
  store i64 %183, i64* %4, align 8
  %184 = load i64, i64* %4, align 8
  %185 = call i64 @ACPI_FAILURE(i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = load i64, i64* %4, align 8
  %189 = call i32 @return_ACPI_STATUS(i64 %188)
  br label %190

190:                                              ; preds = %187, %180
  br label %143

191:                                              ; preds = %162
  %192 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %193 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 8
  %195 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %196 = bitcast %union.acpi_parse_object* %195 to %struct.TYPE_17__*
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 8
  %198 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %199 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %198, i32 0, i32 4
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = icmp ne %struct.TYPE_18__* %200, null
  br i1 %201, label %202, label %223

202:                                              ; preds = %191
  %203 = load i32, i32* @ACPI_DB_PARSE, align 4
  %204 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %205 = bitcast %union.acpi_parse_object* %204 to %struct.TYPE_17__*
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = inttoptr i64 %207 to i8*
  %209 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %210 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %209, i32 0, i32 4
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %215 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %216 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %219 = bitcast %union.acpi_parse_object* %218 to %struct.TYPE_17__*
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @ACPI_DEBUG_PRINT(i32 %221)
  br label %223

223:                                              ; preds = %202, %191
  br label %224

224:                                              ; preds = %223, %156
  %225 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %226 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %225, i32 0, i32 5
  store i32 0, i32* %226, align 8
  %227 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %228 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %251

231:                                              ; preds = %224
  %232 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %233 = load i32*, i32** %7, align 8
  %234 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %235 = call i64 @acpi_ps_get_arguments(%struct.acpi_walk_state* %232, i32* %233, %union.acpi_parse_object* %234)
  store i64 %235, i64* %4, align 8
  %236 = load i64, i64* %4, align 8
  %237 = call i64 @ACPI_FAILURE(i64 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %250

239:                                              ; preds = %231
  %240 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %241 = load i64, i64* %4, align 8
  %242 = call i64 @acpi_ps_complete_op(%struct.acpi_walk_state* %240, %union.acpi_parse_object** %5, i64 %241)
  store i64 %242, i64* %4, align 8
  %243 = load i64, i64* %4, align 8
  %244 = call i64 @ACPI_FAILURE(i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %239
  %247 = load i64, i64* %4, align 8
  %248 = call i32 @return_ACPI_STATUS(i64 %247)
  br label %249

249:                                              ; preds = %246, %239
  br label %143

250:                                              ; preds = %231
  br label %251

251:                                              ; preds = %250, %224
  %252 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %253 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %281

256:                                              ; preds = %251
  %257 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %258 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %259 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %260 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %263 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 8
  %265 = call i64 @acpi_ps_push_scope(%struct.acpi_parse_state* %257, %union.acpi_parse_object* %258, i32 %261, i32 %264)
  store i64 %265, i64* %4, align 8
  %266 = load i64, i64* %4, align 8
  %267 = call i64 @ACPI_FAILURE(i64 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %256
  %270 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %271 = load i64, i64* %4, align 8
  %272 = call i64 @acpi_ps_complete_op(%struct.acpi_walk_state* %270, %union.acpi_parse_object** %5, i64 %271)
  store i64 %272, i64* %4, align 8
  %273 = load i64, i64* %4, align 8
  %274 = call i64 @ACPI_FAILURE(i64 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %269
  %277 = load i64, i64* %4, align 8
  %278 = call i32 @return_ACPI_STATUS(i64 %277)
  br label %279

279:                                              ; preds = %276, %269
  br label %143

280:                                              ; preds = %256
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %5, align 8
  br label %143

281:                                              ; preds = %251
  %282 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %283 = bitcast %union.acpi_parse_object* %282 to %struct.TYPE_17__*
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = call %struct.TYPE_18__* @acpi_ps_get_opcode_info(i64 %285)
  %287 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %288 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %287, i32 0, i32 4
  store %struct.TYPE_18__* %286, %struct.TYPE_18__** %288, align 8
  %289 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %290 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %289, i32 0, i32 4
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @AML_NAMED, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %334

297:                                              ; preds = %281
  %298 = load i64, i64* @acpi_gbl_depth, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load i64, i64* @acpi_gbl_depth, align 8
  %302 = add nsw i64 %301, -1
  store i64 %302, i64* @acpi_gbl_depth, align 8
  br label %303

303:                                              ; preds = %300, %297
  %304 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %305 = bitcast %union.acpi_parse_object* %304 to %struct.TYPE_17__*
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @AML_REGION_OP, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %317, label %310

310:                                              ; preds = %303
  %311 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %312 = bitcast %union.acpi_parse_object* %311 to %struct.TYPE_17__*
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @AML_DATA_REGION_OP, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %333

317:                                              ; preds = %310, %303
  %318 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %319 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %322 = bitcast %union.acpi_parse_object* %321 to %struct.TYPE_16__*
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = ptrtoint i32* %320 to i64
  %326 = ptrtoint i32* %324 to i64
  %327 = sub i64 %325, %326
  %328 = sdiv exact i64 %327, 4
  %329 = inttoptr i64 %328 to i8*
  %330 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %331 = bitcast %union.acpi_parse_object* %330 to %struct.TYPE_16__*
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 1
  store i8* %329, i8** %332, align 8
  br label %333

333:                                              ; preds = %317, %310
  br label %334

334:                                              ; preds = %333, %281
  %335 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %336 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %335, i32 0, i32 4
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @AML_CREATE, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %359

343:                                              ; preds = %334
  %344 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %345 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %344, i32 0, i32 0
  %346 = load i32*, i32** %345, align 8
  %347 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %348 = bitcast %union.acpi_parse_object* %347 to %struct.TYPE_16__*
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = ptrtoint i32* %346 to i64
  %352 = ptrtoint i32* %350 to i64
  %353 = sub i64 %351, %352
  %354 = sdiv exact i64 %353, 4
  %355 = inttoptr i64 %354 to i8*
  %356 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %357 = bitcast %union.acpi_parse_object* %356 to %struct.TYPE_16__*
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 1
  store i8* %355, i8** %358, align 8
  br label %359

359:                                              ; preds = %343, %334
  %360 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %361 = bitcast %union.acpi_parse_object* %360 to %struct.TYPE_17__*
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @AML_BANK_FIELD_OP, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %382

366:                                              ; preds = %359
  %367 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %368 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %367, i32 0, i32 0
  %369 = load i32*, i32** %368, align 8
  %370 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %371 = bitcast %union.acpi_parse_object* %370 to %struct.TYPE_16__*
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 0
  %373 = load i32*, i32** %372, align 8
  %374 = ptrtoint i32* %369 to i64
  %375 = ptrtoint i32* %373 to i64
  %376 = sub i64 %374, %375
  %377 = sdiv exact i64 %376, 4
  %378 = inttoptr i64 %377 to i8*
  %379 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %380 = bitcast %union.acpi_parse_object* %379 to %struct.TYPE_16__*
  %381 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %380, i32 0, i32 1
  store i8* %378, i8** %381, align 8
  br label %382

382:                                              ; preds = %366, %359
  %383 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %384 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %383, i32 0, i32 1
  %385 = bitcast {}** %384 to i64 (%struct.acpi_walk_state*)**
  %386 = load i64 (%struct.acpi_walk_state*)*, i64 (%struct.acpi_walk_state*)** %385, align 8
  %387 = icmp ne i64 (%struct.acpi_walk_state*)* %386, null
  br i1 %387, label %388, label %414

388:                                              ; preds = %382
  %389 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %390 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %391 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %390, i32 0, i32 3
  store %union.acpi_parse_object* %389, %union.acpi_parse_object** %391, align 8
  %392 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %393 = bitcast %union.acpi_parse_object* %392 to %struct.TYPE_17__*
  %394 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %397 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %396, i32 0, i32 2
  store i64 %395, i64* %397, align 8
  %398 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %399 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %398, i32 0, i32 1
  %400 = bitcast {}** %399 to i64 (%struct.acpi_walk_state*)**
  %401 = load i64 (%struct.acpi_walk_state*)*, i64 (%struct.acpi_walk_state*)** %400, align 8
  %402 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %403 = call i64 %401(%struct.acpi_walk_state* %402)
  store i64 %403, i64* %4, align 8
  %404 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %405 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %406 = load i64, i64* %4, align 8
  %407 = call i64 @acpi_ps_next_parse_state(%struct.acpi_walk_state* %404, %union.acpi_parse_object* %405, i64 %406)
  store i64 %407, i64* %4, align 8
  %408 = load i64, i64* %4, align 8
  %409 = load i64, i64* @AE_CTRL_PENDING, align 8
  %410 = icmp eq i64 %408, %409
  br i1 %410, label %411, label %413

411:                                              ; preds = %388
  %412 = load i64, i64* @AE_OK, align 8
  store i64 %412, i64* %4, align 8
  br label %413

413:                                              ; preds = %411, %388
  br label %414

414:                                              ; preds = %413, %382
  %415 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %416 = load i64, i64* %4, align 8
  %417 = call i64 @acpi_ps_complete_op(%struct.acpi_walk_state* %415, %union.acpi_parse_object** %5, i64 %416)
  store i64 %417, i64* %4, align 8
  %418 = load i64, i64* %4, align 8
  %419 = call i64 @ACPI_FAILURE(i64 %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %424

421:                                              ; preds = %414
  %422 = load i64, i64* %4, align 8
  %423 = call i32 @return_ACPI_STATUS(i64 %422)
  br label %424

424:                                              ; preds = %421, %414
  br label %143

425:                                              ; preds = %154
  %426 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %427 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %428 = load i64, i64* %4, align 8
  %429 = call i64 @acpi_ps_complete_final_op(%struct.acpi_walk_state* %426, %union.acpi_parse_object* %427, i64 %428)
  store i64 %429, i64* %4, align 8
  %430 = load i64, i64* %4, align 8
  %431 = call i32 @return_ACPI_STATUS(i64 %430)
  %432 = load i64, i64* %2, align 8
  ret i64 %432
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i64 @acpi_ps_has_completed_scope(%struct.acpi_parse_state*) #1

declare dso_local i64 @acpi_ds_get_predicate_value(%struct.acpi_walk_state*, i32) #1

declare dso_local i32 @ACPI_TO_POINTER(i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i64 @acpi_ps_next_parse_state(%struct.acpi_walk_state*, %union.acpi_parse_object*, i64) #1

declare dso_local i32 @acpi_ps_pop_scope(%struct.acpi_parse_state*, %union.acpi_parse_object**, i32*, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @acpi_ps_create_op(%struct.acpi_walk_state*, i32*, %union.acpi_parse_object**) #1

declare dso_local i64 @acpi_ps_complete_op(%struct.acpi_walk_state*, %union.acpi_parse_object**, i64) #1

declare dso_local i64 @acpi_ps_get_arguments(%struct.acpi_walk_state*, i32*, %union.acpi_parse_object*) #1

declare dso_local i64 @acpi_ps_push_scope(%struct.acpi_parse_state*, %union.acpi_parse_object*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @acpi_ps_get_opcode_info(i64) #1

declare dso_local i64 @acpi_ps_complete_final_op(%struct.acpi_walk_state*, %union.acpi_parse_object*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
