; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psargs.c_acpi_ps_get_next_namepath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psargs.c_acpi_ps_get_next_namepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i64, i32, i32, %struct.TYPE_12__*, %struct.TYPE_9__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64* }
%struct.acpi_parse_state = type { i64* }
%union.acpi_parse_object = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__*, %struct.acpi_namespace_node* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.acpi_namespace_node = type { i64 }
%union.acpi_operand_object = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@ps_get_next_namepath = common dso_local global i32 0, align 4
@AML_INT_NAMEPATH_OP = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4
@ACPI_NS_DONT_OPEN_SCOPE = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i64 0, align 8
@AML_UNLOAD_OP = common dso_local global i64 0, align 8
@AML_INT_METHODCALL_OP = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Control Method - %p Desc %p Path=%p\0A\00", align 1
@AE_NO_MEMORY = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Control Method %p has no attached object\00", align 1
@AE_AML_INTERNAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Control Method - %p Args %X\0A\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@ACPI_PARSE_MODE_MASK = common dso_local global i32 0, align 4
@ACPI_PARSE_EXECUTE = common dso_local global i32 0, align 4
@AML_COND_REF_OF_OP = common dso_local global i64 0, align 8
@AML_PACKAGE_OP = common dso_local global i64 0, align 8
@AML_VAR_PACKAGE_OP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ps_get_next_namepath(%struct.acpi_walk_state* %0, %struct.acpi_parse_state* %1, %union.acpi_parse_object* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_walk_state*, align 8
  %7 = alloca %struct.acpi_parse_state*, align 8
  %8 = alloca %union.acpi_parse_object*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %union.acpi_parse_object*, align 8
  %13 = alloca %union.acpi_operand_object*, align 8
  %14 = alloca %struct.acpi_namespace_node*, align 8
  %15 = alloca i64*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %6, align 8
  store %struct.acpi_parse_state* %1, %struct.acpi_parse_state** %7, align 8
  store %union.acpi_parse_object* %2, %union.acpi_parse_object** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %17 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %15, align 8
  %19 = load i32, i32* @ps_get_next_namepath, align 4
  %20 = call i32 @ACPI_FUNCTION_TRACE(i32 %19)
  %21 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %22 = call i8* @acpi_ps_get_next_namestring(%struct.acpi_parse_state* %21)
  store i8* %22, i8** %11, align 8
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %24 = load i32, i32* @AML_INT_NAMEPATH_OP, align 4
  %25 = call i32 @acpi_ps_init_op(%union.acpi_parse_object* %23, i32 %24)
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %4
  %29 = load i8*, i8** %11, align 8
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %31 = bitcast %union.acpi_parse_object* %30 to %struct.TYPE_16__*
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  store i8* %29, i8** %33, align 8
  %34 = load i64, i64* @AE_OK, align 8
  %35 = call i32 @return_ACPI_STATUS(i64 %34)
  br label %36

36:                                               ; preds = %28, %4
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %38 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %42 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %43 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %44 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %45 = or i32 %43, %44
  %46 = call i64 @acpi_ns_lookup(i32 %39, i8* %40, i32 %41, i32 %42, i32 %45, i32* null, %struct.acpi_namespace_node** %14)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @ACPI_SUCCESS(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %134

50:                                               ; preds = %36
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %134

53:                                               ; preds = %50
  %54 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %14, align 8
  %55 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %134

59:                                               ; preds = %53
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %61 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AML_UNLOAD_OP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load i64*, i64** %15, align 8
  %67 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %68 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i64* %66, i64** %69, align 8
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %71 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %70, i32 0, i32 1
  store i32 1, i32* %71, align 8
  %72 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %73 = load i32, i32* @AML_INT_METHODCALL_OP, align 4
  %74 = call i32 @acpi_ps_init_op(%union.acpi_parse_object* %72, i32 %73)
  %75 = load i64, i64* @AE_OK, align 8
  %76 = call i32 @return_ACPI_STATUS(i64 %75)
  br label %77

77:                                               ; preds = %65, %59
  %78 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %14, align 8
  %79 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %78)
  store %union.acpi_operand_object* %79, %union.acpi_operand_object** %13, align 8
  %80 = load i32, i32* @ACPI_DB_PARSE, align 4
  %81 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %14, align 8
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = call i32 @ACPI_DEBUG_PRINT(i32 %84)
  %86 = load i32, i32* @AML_INT_NAMEPATH_OP, align 4
  %87 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %86)
  store %union.acpi_parse_object* %87, %union.acpi_parse_object** %12, align 8
  %88 = load %union.acpi_parse_object*, %union.acpi_parse_object** %12, align 8
  %89 = icmp ne %union.acpi_parse_object* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %77
  %91 = load i64, i64* @AE_NO_MEMORY, align 8
  %92 = call i32 @return_ACPI_STATUS(i64 %91)
  br label %93

93:                                               ; preds = %90, %77
  %94 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %95 = load i32, i32* @AML_INT_METHODCALL_OP, align 4
  %96 = call i32 @acpi_ps_init_op(%union.acpi_parse_object* %94, i32 %95)
  %97 = load i8*, i8** %11, align 8
  %98 = load %union.acpi_parse_object*, %union.acpi_parse_object** %12, align 8
  %99 = bitcast %union.acpi_parse_object* %98 to %struct.TYPE_16__*
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store i8* %97, i8** %101, align 8
  %102 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %14, align 8
  %103 = load %union.acpi_parse_object*, %union.acpi_parse_object** %12, align 8
  %104 = bitcast %union.acpi_parse_object* %103 to %struct.TYPE_16__*
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  store %struct.acpi_namespace_node* %102, %struct.acpi_namespace_node** %105, align 8
  %106 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %107 = load %union.acpi_parse_object*, %union.acpi_parse_object** %12, align 8
  %108 = call i32 @acpi_ps_append_arg(%union.acpi_parse_object* %106, %union.acpi_parse_object* %107)
  %109 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %110 = icmp ne %union.acpi_operand_object* %109, null
  br i1 %110, label %118, label %111

111:                                              ; preds = %93
  %112 = load i32, i32* @AE_INFO, align 4
  %113 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %14, align 8
  %114 = ptrtoint %struct.acpi_namespace_node* %113 to i32
  %115 = call i32 @ACPI_ERROR(i32 %114)
  %116 = load i64, i64* @AE_AML_INTERNAL, align 8
  %117 = call i32 @return_ACPI_STATUS(i64 %116)
  br label %118

118:                                              ; preds = %111, %93
  %119 = load i32, i32* @ACPI_DB_PARSE, align 4
  %120 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %14, align 8
  %121 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %122 = bitcast %union.acpi_operand_object* %121 to %struct.TYPE_10__*
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ACPI_DEBUG_PRINT(i32 %124)
  %126 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %127 = bitcast %union.acpi_operand_object* %126 to %struct.TYPE_10__*
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %131 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load i64, i64* @AE_OK, align 8
  %133 = call i32 @return_ACPI_STATUS(i64 %132)
  br label %134

134:                                              ; preds = %118, %53, %50, %36
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* @AE_NOT_FOUND, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %190

138:                                              ; preds = %134
  %139 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %140 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @ACPI_PARSE_MODE_MASK, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* @ACPI_PARSE_EXECUTE, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i64, i64* @AE_OK, align 8
  store i64 %147, i64* %10, align 8
  br label %189

148:                                              ; preds = %138
  %149 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %150 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %149, i32 0, i32 3
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @AML_COND_REF_OF_OP, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %148
  %158 = load i64, i64* @AE_OK, align 8
  store i64 %158, i64* %10, align 8
  br label %188

159:                                              ; preds = %148
  %160 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %161 = bitcast %union.acpi_parse_object* %160 to %struct.TYPE_16__*
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = icmp ne %struct.TYPE_14__* %163, null
  br i1 %164, label %165, label %187

165:                                              ; preds = %159
  %166 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %167 = bitcast %union.acpi_parse_object* %166 to %struct.TYPE_16__*
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @AML_PACKAGE_OP, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %185, label %175

175:                                              ; preds = %165
  %176 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %177 = bitcast %union.acpi_parse_object* %176 to %struct.TYPE_16__*
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @AML_VAR_PACKAGE_OP, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %175, %165
  %186 = load i64, i64* @AE_OK, align 8
  store i64 %186, i64* %10, align 8
  br label %187

187:                                              ; preds = %185, %175, %159
  br label %188

188:                                              ; preds = %187, %157
  br label %189

189:                                              ; preds = %188, %146
  br label %190

190:                                              ; preds = %189, %134
  %191 = load i64, i64* %10, align 8
  %192 = call i64 @ACPI_FAILURE(i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %190
  %195 = load i8*, i8** %11, align 8
  %196 = load i64, i64* %10, align 8
  %197 = call i32 @ACPI_ERROR_NAMESPACE(i8* %195, i64 %196)
  %198 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %199 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @ACPI_PARSE_MODE_MASK, align 4
  %202 = and i32 %200, %201
  %203 = load i32, i32* @ACPI_PARSE_EXECUTE, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %194
  %206 = load i64, i64* %10, align 8
  %207 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %208 = call i64 @acpi_ds_method_error(i64 %206, %struct.acpi_walk_state* %207)
  store i64 %208, i64* %10, align 8
  br label %209

209:                                              ; preds = %205, %194
  br label %210

210:                                              ; preds = %209, %190
  %211 = load i8*, i8** %11, align 8
  %212 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %213 = bitcast %union.acpi_parse_object* %212 to %struct.TYPE_16__*
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  store i8* %211, i8** %215, align 8
  %216 = load i64, i64* %10, align 8
  %217 = call i32 @return_ACPI_STATUS(i64 %216)
  %218 = load i64, i64* %5, align 8
  ret i64 %218
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i8* @acpi_ps_get_next_namestring(%struct.acpi_parse_state*) #1

declare dso_local i32 @acpi_ps_init_op(%union.acpi_parse_object*, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i64 @acpi_ns_lookup(i32, i8*, i32, i32, i32, i32*, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i32) #1

declare dso_local i32 @acpi_ps_append_arg(%union.acpi_parse_object*, %union.acpi_parse_object*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_ERROR_NAMESPACE(i8*, i64) #1

declare dso_local i64 @acpi_ds_method_error(i64, %struct.acpi_walk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
