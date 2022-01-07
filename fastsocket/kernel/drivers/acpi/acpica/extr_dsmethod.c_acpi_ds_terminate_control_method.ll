; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_terminate_control_method.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_terminate_control_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32, i32, i32 }
%struct.acpi_walk_state = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ds_terminate_control_method = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@AOPOBJ_MODULE_LEVEL = common dso_local global i32 0, align 4
@AOPOBJ_MODIFIED_NAMESPACE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid zero thread count in method\00", align 1
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"*** Completed execution of one thread, %d threads remaining\0A\00", align 1
@AML_METHOD_SERIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ds_terminate_control_method(%union.acpi_operand_object* %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca %struct.acpi_walk_state*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %4, align 8
  %5 = load i32, i32* @ds_terminate_control_method, align 4
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %7 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %5, %struct.acpi_walk_state* %6)
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %9 = icmp ne %union.acpi_operand_object* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @return_VOID, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %14 = icmp ne %struct.acpi_walk_state* %13, null
  br i1 %14, label %15, label %95

15:                                               ; preds = %12
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %17 = call i32 @acpi_ds_method_data_delete_all(%struct.acpi_walk_state* %16)
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.TYPE_8__*
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %67

23:                                               ; preds = %15
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_8__*
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %33 = bitcast %union.acpi_operand_object* %32 to %struct.TYPE_8__*
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %66, label %40

40:                                               ; preds = %23
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %42 = bitcast %union.acpi_operand_object* %41 to %struct.TYPE_8__*
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %49 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_8__*
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @acpi_os_release_mutex(i32 %58)
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %61 = bitcast %union.acpi_operand_object* %60 to %struct.TYPE_8__*
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %40, %23
  br label %67

67:                                               ; preds = %66, %15
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %69 = bitcast %union.acpi_operand_object* %68 to %struct.TYPE_8__*
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @AOPOBJ_MODULE_LEVEL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %94, label %75

75:                                               ; preds = %67
  %76 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %77 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @acpi_ns_delete_namespace_subtree(i32 %78)
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %81 = bitcast %union.acpi_operand_object* %80 to %struct.TYPE_8__*
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AOPOBJ_MODIFIED_NAMESPACE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %75
  %88 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %89 = bitcast %union.acpi_operand_object* %88 to %struct.TYPE_8__*
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @acpi_ns_delete_namespace_by_owner(i32 %91)
  br label %93

93:                                               ; preds = %87, %75
  br label %94

94:                                               ; preds = %93, %67
  br label %95

95:                                               ; preds = %94, %12
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %97 = bitcast %union.acpi_operand_object* %96 to %struct.TYPE_8__*
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %103 = bitcast %union.acpi_operand_object* %102 to %struct.TYPE_8__*
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, -1
  store i64 %106, i64* %104, align 8
  br label %110

107:                                              ; preds = %95
  %108 = load i32, i32* @AE_INFO, align 4
  %109 = call i32 @ACPI_ERROR(i32 ptrtoint ([36 x i8]* @.str to i32))
  br label %110

110:                                              ; preds = %107, %101
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %112 = bitcast %union.acpi_operand_object* %111 to %struct.TYPE_8__*
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %118 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %119 = bitcast %union.acpi_operand_object* %118 to %struct.TYPE_8__*
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @ACPI_DEBUG_PRINT(i32 %122)
  br label %155

124:                                              ; preds = %110
  %125 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %126 = bitcast %union.acpi_operand_object* %125 to %struct.TYPE_8__*
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @AML_METHOD_SERIALIZED, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %124
  %133 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %134 = bitcast %union.acpi_operand_object* %133 to %struct.TYPE_8__*
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = icmp ne %struct.TYPE_7__* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %132
  %139 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %140 = call i32 @acpi_ds_create_method_mutex(%union.acpi_operand_object* %139)
  br label %141

141:                                              ; preds = %138, %132, %124
  %142 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %143 = bitcast %union.acpi_operand_object* %142 to %struct.TYPE_8__*
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @AOPOBJ_MODULE_LEVEL, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %141
  %150 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %151 = bitcast %union.acpi_operand_object* %150 to %struct.TYPE_8__*
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = call i32 @acpi_ut_release_owner_id(i32* %152)
  br label %154

154:                                              ; preds = %149, %141
  br label %155

155:                                              ; preds = %154, %116
  %156 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_method_data_delete_all(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_os_release_mutex(i32) #1

declare dso_local i32 @acpi_ns_delete_namespace_subtree(i32) #1

declare dso_local i32 @acpi_ns_delete_namespace_by_owner(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ds_create_method_mutex(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_release_owner_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
