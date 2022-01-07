; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_init_field_objects.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_init_field_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %union.acpi_parse_object*, %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { i32 }
%struct.acpi_walk_state = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@ds_init_field_objects = common dso_local global i32 0, align 4
@ACPI_PARSE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_PARSE_DEFERRED_OP = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@AE_AML_INTERNAL = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_REGION_FIELD = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_BANK_FIELD = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_INDEX_FIELD = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i64 0, align 8
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4
@ACPI_NS_DONT_OPEN_SCOPE = common dso_local global i32 0, align 4
@ACPI_NS_ERROR_IF_FOUND = common dso_local global i32 0, align 4
@ACPI_PARSE_MODULE_LEVEL = common dso_local global i32 0, align 4
@ACPI_NS_TEMPORARY = common dso_local global i32 0, align 4
@AML_INT_NAMEDFIELD_OP = common dso_local global i64 0, align 8
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@AE_ALREADY_EXISTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ds_init_field_objects(%union.acpi_parse_object* %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %union.acpi_parse_object*, align 8
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.acpi_parse_object*, align 8
  %8 = alloca %struct.acpi_namespace_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %4, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %5, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @ds_init_field_objects, align 4
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %union.acpi_parse_object* %12)
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %15 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ACPI_PARSE_EXECUTE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %2
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ACPI_PARSE_DEFERRED_OP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i64, i64* @AE_OK, align 8
  %29 = call i32 @return_ACPI_STATUS(i64 %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i64, i64* @AE_AML_INTERNAL, align 8
  %32 = call i32 @return_ACPI_STATUS(i64 %31)
  br label %33

33:                                               ; preds = %30, %2
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %35 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %49 [
    i32 129, label %37
    i32 130, label %41
    i32 128, label %45
  ]

37:                                               ; preds = %33
  %38 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %39 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %38, i32 2)
  store %union.acpi_parse_object* %39, %union.acpi_parse_object** %7, align 8
  %40 = load i32, i32* @ACPI_TYPE_LOCAL_REGION_FIELD, align 4
  store i32 %40, i32* %9, align 4
  br label %52

41:                                               ; preds = %33
  %42 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %43 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %42, i32 4)
  store %union.acpi_parse_object* %43, %union.acpi_parse_object** %7, align 8
  %44 = load i32, i32* @ACPI_TYPE_LOCAL_BANK_FIELD, align 4
  store i32 %44, i32* %9, align 4
  br label %52

45:                                               ; preds = %33
  %46 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %47 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %46, i32 3)
  store %union.acpi_parse_object* %47, %union.acpi_parse_object** %7, align 8
  %48 = load i32, i32* @ACPI_TYPE_LOCAL_INDEX_FIELD, align 4
  store i32 %48, i32* %9, align 4
  br label %52

49:                                               ; preds = %33
  %50 = load i64, i64* @AE_BAD_PARAMETER, align 8
  %51 = call i32 @return_ACPI_STATUS(i64 %50)
  br label %52

52:                                               ; preds = %49, %45, %41, %37
  %53 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  %54 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ACPI_NS_ERROR_IF_FOUND, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %59 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %58, i32 0, i32 3
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
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %69, %62, %52
  br label %74

74:                                               ; preds = %120, %73
  %75 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %76 = icmp ne %union.acpi_parse_object* %75, null
  br i1 %76, label %77, label %125

77:                                               ; preds = %74
  %78 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %79 = bitcast %union.acpi_parse_object* %78 to %struct.TYPE_4__*
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AML_INT_NAMEDFIELD_OP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %120

84:                                               ; preds = %77
  %85 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %86 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %89 = bitcast %union.acpi_parse_object* %88 to %struct.TYPE_3__*
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = bitcast i32* %90 to i8*
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %96 = call i64 @acpi_ns_lookup(i32 %87, i8* %91, i32 %92, i32 %93, i32 %94, %struct.acpi_walk_state* %95, %struct.acpi_namespace_node** %8)
  store i64 %96, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i64 @ACPI_FAILURE(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %84
  %101 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %102 = bitcast %union.acpi_parse_object* %101 to %struct.TYPE_3__*
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = bitcast i32* %103 to i8*
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @ACPI_ERROR_NAMESPACE(i8* %104, i64 %105)
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @AE_ALREADY_EXISTS, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @return_ACPI_STATUS(i64 %111)
  br label %113

113:                                              ; preds = %110, %100
  %114 = load i64, i64* @AE_OK, align 8
  store i64 %114, i64* %6, align 8
  br label %115

115:                                              ; preds = %113, %84
  %116 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %8, align 8
  %117 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %118 = bitcast %union.acpi_parse_object* %117 to %struct.TYPE_4__*
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  store %struct.acpi_namespace_node* %116, %struct.acpi_namespace_node** %119, align 8
  br label %120

120:                                              ; preds = %115, %77
  %121 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %122 = bitcast %union.acpi_parse_object* %121 to %struct.TYPE_4__*
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load %union.acpi_parse_object*, %union.acpi_parse_object** %123, align 8
  store %union.acpi_parse_object* %124, %union.acpi_parse_object** %7, align 8
  br label %74

125:                                              ; preds = %74
  %126 = load i64, i64* @AE_OK, align 8
  %127 = call i32 @return_ACPI_STATUS(i64 %126)
  %128 = load i64, i64* %3, align 8
  ret i64 %128
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object*, i32) #1

declare dso_local i64 @acpi_ns_lookup(i32, i8*, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_ERROR_NAMESPACE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
