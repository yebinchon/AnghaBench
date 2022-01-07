; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_create_buffer_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_create_buffer_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.acpi_namespace_node*, %struct.TYPE_7__ }
%struct.acpi_namespace_node = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.acpi_walk_state = type { i32, i32, i64, %struct.acpi_namespace_node* }
%union.acpi_operand_object = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.acpi_namespace_node* }
%struct.TYPE_9__ = type { %union.acpi_operand_object* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@ds_create_buffer_field = common dso_local global i32 0, align 4
@AML_CREATE_FIELD_OP = common dso_local global i64 0, align 8
@AE_AML_NO_OPERAND = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_PARSE_EXECUTE = common dso_local global i32 0, align 4
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4
@ACPI_NS_DONT_OPEN_SCOPE = common dso_local global i32 0, align 4
@ACPI_NS_ERROR_IF_FOUND = common dso_local global i32 0, align 4
@ACPI_PARSE_MODULE_LEVEL = common dso_local global i32 0, align 4
@ACPI_NS_TEMPORARY = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER_FIELD = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_create_buffer_field(%union.acpi_parse_object* %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_parse_object*, align 8
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca %union.acpi_parse_object*, align 8
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_operand_object*, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca i32, align 4
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %4, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %5, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %10, align 8
  %12 = load i32, i32* @ds_create_buffer_field, align 4
  %13 = call i32 @ACPI_FUNCTION_TRACE(i32 %12)
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %15 = bitcast %union.acpi_parse_object* %14 to %struct.TYPE_8__*
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AML_CREATE_FIELD_OP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %22 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %21, i32 3)
  store %union.acpi_parse_object* %22, %union.acpi_parse_object** %6, align 8
  br label %26

23:                                               ; preds = %2
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %25 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %24, i32 2)
  store %union.acpi_parse_object* %25, %union.acpi_parse_object** %6, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %28 = icmp ne %union.acpi_parse_object* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @AE_AML_NO_OPERAND, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %34 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %33, i32 0, i32 3
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %34, align 8
  %36 = icmp ne %struct.acpi_namespace_node* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %39 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %38, i32 0, i32 3
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %39, align 8
  store %struct.acpi_namespace_node* %40, %struct.acpi_namespace_node** %7, align 8
  %41 = load i32, i32* @AE_OK, align 4
  store i32 %41, i32* %8, align 4
  br label %101

42:                                               ; preds = %32
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %44 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ACPI_PARSE_EXECUTE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @AE_AML_INTERNAL, align 4
  %51 = call i32 @return_ACPI_STATUS(i32 %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  %54 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ACPI_NS_ERROR_IF_FOUND, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %11, align 4
  %58 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %59 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %52
  %63 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %64 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ACPI_PARSE_MODULE_LEVEL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @ACPI_NS_TEMPORARY, align 4
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %69, %62, %52
  %74 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %75 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %78 = bitcast %union.acpi_parse_object* %77 to %struct.TYPE_8__*
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %83 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %86 = call i32 @acpi_ns_lookup(i32 %76, i32 %81, i32 %82, i32 %83, i32 %84, %struct.acpi_walk_state* %85, %struct.acpi_namespace_node** %7)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i64 @ACPI_FAILURE(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %73
  %91 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %92 = bitcast %union.acpi_parse_object* %91 to %struct.TYPE_8__*
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @ACPI_ERROR_NAMESPACE(i32 %95, i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @return_ACPI_STATUS(i32 %98)
  br label %100

100:                                              ; preds = %90, %73
  br label %101

101:                                              ; preds = %100, %37
  %102 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %103 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %104 = bitcast %union.acpi_parse_object* %103 to %struct.TYPE_8__*
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  store %struct.acpi_namespace_node* %102, %struct.acpi_namespace_node** %105, align 8
  %106 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %107 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %106)
  store %union.acpi_operand_object* %107, %union.acpi_operand_object** %9, align 8
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %109 = icmp ne %union.acpi_operand_object* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* @AE_OK, align 4
  %112 = call i32 @return_ACPI_STATUS(i32 %111)
  br label %113

113:                                              ; preds = %110, %101
  %114 = load i32, i32* @ACPI_TYPE_BUFFER_FIELD, align 4
  %115 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %114)
  store %union.acpi_operand_object* %115, %union.acpi_operand_object** %9, align 8
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %117 = icmp ne %union.acpi_operand_object* %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %119, i32* %8, align 4
  br label %152

120:                                              ; preds = %113
  %121 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %122 = bitcast %union.acpi_operand_object* %121 to %struct.TYPE_9__*
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %123, align 8
  store %union.acpi_operand_object* %124, %union.acpi_operand_object** %10, align 8
  %125 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %126 = bitcast %union.acpi_parse_object* %125 to %struct.TYPE_11__*
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %130 = bitcast %union.acpi_operand_object* %129 to %struct.TYPE_10__*
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %133 = bitcast %union.acpi_parse_object* %132 to %struct.TYPE_11__*
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %137 = bitcast %union.acpi_operand_object* %136 to %struct.TYPE_10__*
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %140 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %141 = bitcast %union.acpi_operand_object* %140 to %struct.TYPE_12__*
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  store %struct.acpi_namespace_node* %139, %struct.acpi_namespace_node** %142, align 8
  %143 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %144 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %145 = load i32, i32* @ACPI_TYPE_BUFFER_FIELD, align 4
  %146 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %143, %union.acpi_operand_object* %144, i32 %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i64 @ACPI_FAILURE(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %120
  br label %152

151:                                              ; preds = %120
  br label %152

152:                                              ; preds = %151, %150, %118
  %153 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %154 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %153)
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @return_ACPI_STATUS(i32 %155)
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object*, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ns_lookup(i32, i32, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR_NAMESPACE(i32, i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
