; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_begin_method_execution.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_begin_method_execution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32 }
%struct.acpi_walk_state = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@AE_OK = common dso_local global i32 0, align 4
@ds_begin_method_execution = common dso_local global i32 0, align 4
@AE_NULL_ENTRY = common dso_local global i32 0, align 4
@ACPI_UINT8_MAX = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Method reached maximum reentrancy limit (255)\00", align 1
@AE_AML_METHOD_LIMIT = common dso_local global i32 0, align 4
@AML_METHOD_SERIALIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"Cannot acquire Mutex for method [%4.4s], current SyncLevel is too large (%d)\00", align 1
@AE_AML_MUTEX_ORDER = common dso_local global i32 0, align 4
@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_begin_method_execution(%struct.acpi_namespace_node* %0, %union.acpi_operand_object* %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %5, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %6, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @ds_begin_method_execution, align 4
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %struct.acpi_namespace_node* %11)
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %14 = icmp ne %struct.acpi_namespace_node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @AE_NULL_ENTRY, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %20 = bitcast %union.acpi_operand_object* %19 to %struct.TYPE_8__*
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ACPI_UINT8_MAX, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32, i32* @AE_INFO, align 4
  %27 = call i32 @ACPI_ERROR(i32 ptrtoint ([46 x i8]* @.str to i32))
  %28 = load i32, i32* @AE_AML_METHOD_LIMIT, align 4
  %29 = call i32 @return_ACPI_STATUS(i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %32 = bitcast %union.acpi_operand_object* %31 to %struct.TYPE_8__*
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AML_METHOD_SERIALIZED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %184

38:                                               ; preds = %30
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %40 = bitcast %union.acpi_operand_object* %39 to %struct.TYPE_8__*
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %38
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %46 = call i32 @acpi_ds_create_method_mutex(%union.acpi_operand_object* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @ACPI_FAILURE(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @return_ACPI_STATUS(i32 %51)
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %56 = icmp ne %struct.acpi_walk_state* %55, null
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  %58 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %59 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %64 = bitcast %union.acpi_operand_object* %63 to %struct.TYPE_8__*
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %62, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %57
  %72 = load i32, i32* @AE_INFO, align 4
  %73 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %74 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %73)
  %75 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %76 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @ACPI_ERROR(i32 %80)
  %82 = load i32, i32* @AE_AML_MUTEX_ORDER, align 4
  %83 = call i32 @return_ACPI_STATUS(i32 %82)
  br label %84

84:                                               ; preds = %71, %57, %54
  %85 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %86 = icmp ne %struct.acpi_walk_state* %85, null
  br i1 %86, label %87, label %110

87:                                               ; preds = %84
  %88 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %89 = bitcast %union.acpi_operand_object* %88 to %struct.TYPE_8__*
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %87
  %97 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %98 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %103 = bitcast %union.acpi_operand_object* %102 to %struct.TYPE_8__*
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %101, %108
  br i1 %109, label %110, label %175

110:                                              ; preds = %96, %87, %84
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %112 = bitcast %union.acpi_operand_object* %111 to %struct.TYPE_8__*
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %119 = call i32 @acpi_ex_system_wait_mutex(i32 %117, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i64 @ACPI_FAILURE(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %110
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @return_ACPI_STATUS(i32 %124)
  br label %126

126:                                              ; preds = %123, %110
  %127 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %128 = icmp ne %struct.acpi_walk_state* %127, null
  br i1 %128, label %129, label %160

129:                                              ; preds = %126
  %130 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %131 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %136 = bitcast %union.acpi_operand_object* %135 to %struct.TYPE_8__*
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  store i64 %134, i64* %140, align 8
  %141 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %142 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %141, i32 0, i32 0
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %147 = bitcast %union.acpi_operand_object* %146 to %struct.TYPE_8__*
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i64 %145, i64* %151, align 8
  %152 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %153 = bitcast %union.acpi_operand_object* %152 to %struct.TYPE_8__*
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %157 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %156, i32 0, i32 0
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  store i64 %155, i64* %159, align 8
  br label %174

160:                                              ; preds = %126
  %161 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %162 = bitcast %union.acpi_operand_object* %161 to %struct.TYPE_8__*
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %169 = bitcast %union.acpi_operand_object* %168 to %struct.TYPE_8__*
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  store i64 %167, i64* %173, align 8
  br label %174

174:                                              ; preds = %160, %129
  br label %175

175:                                              ; preds = %174, %96
  %176 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %177 = bitcast %union.acpi_operand_object* %176 to %struct.TYPE_8__*
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %175, %30
  %185 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %186 = bitcast %union.acpi_operand_object* %185 to %struct.TYPE_8__*
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %200, label %190

190:                                              ; preds = %184
  %191 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %192 = bitcast %union.acpi_operand_object* %191 to %struct.TYPE_8__*
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 4
  %194 = call i32 @acpi_ut_allocate_owner_id(i32* %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = call i64 @ACPI_FAILURE(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %190
  br label %208

199:                                              ; preds = %190
  br label %200

200:                                              ; preds = %199, %184
  %201 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %202 = bitcast %union.acpi_operand_object* %201 to %struct.TYPE_8__*
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %203, align 8
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @return_ACPI_STATUS(i32 %206)
  br label %208

208:                                              ; preds = %200, %198
  %209 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %210 = bitcast %union.acpi_operand_object* %209 to %struct.TYPE_8__*
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = icmp ne %struct.TYPE_7__* %212, null
  br i1 %213, label %214, label %223

214:                                              ; preds = %208
  %215 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %216 = bitcast %union.acpi_operand_object* %215 to %struct.TYPE_8__*
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @acpi_os_release_mutex(i32 %221)
  br label %223

223:                                              ; preds = %214, %208
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @return_ACPI_STATUS(i32 %224)
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_namespace_node*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ds_create_method_mutex(%union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ex_system_wait_mutex(i32, i32) #1

declare dso_local i32 @acpi_ut_allocate_owner_id(i32*) #1

declare dso_local i32 @acpi_os_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
