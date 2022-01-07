; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_create_index_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_create_index_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %union.acpi_parse_object*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, %union.acpi_parse_object* }
%struct.acpi_namespace_node = type { i32 }
%struct.acpi_walk_state = type { i32 }
%struct.acpi_create_field_info = type { %struct.acpi_namespace_node*, i32, i64, i32, i32 }

@ds_create_index_field = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_INDEX_FIELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_create_index_field(%union.acpi_parse_object* %0, %struct.acpi_namespace_node* %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca %struct.acpi_namespace_node*, align 8
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_parse_object*, align 8
  %10 = alloca %struct.acpi_create_field_info, align 8
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %5, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %6, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  %11 = load i32, i32* @ds_create_index_field, align 4
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %union.acpi_parse_object* %12)
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %15 = bitcast %union.acpi_parse_object* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %17, align 8
  store %union.acpi_parse_object* %18, %union.acpi_parse_object** %9, align 8
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %20 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %23 = bitcast %union.acpi_parse_object* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %28 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %29 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %31 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 4
  %32 = call i32 @acpi_ns_lookup(i32 %21, i32 %26, i32 %27, i32 %28, i32 %29, %struct.acpi_walk_state* %30, i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %3
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %38 = bitcast %union.acpi_parse_object* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ACPI_ERROR_NAMESPACE(i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @return_ACPI_STATUS(i32 %44)
  br label %46

46:                                               ; preds = %36, %3
  %47 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %48 = bitcast %union.acpi_parse_object* %47 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %union.acpi_parse_object*, %union.acpi_parse_object** %49, align 8
  store %union.acpi_parse_object* %50, %union.acpi_parse_object** %9, align 8
  %51 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %52 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %55 = bitcast %union.acpi_parse_object* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %60 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %61 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %62 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %63 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 3
  %64 = call i32 @acpi_ns_lookup(i32 %53, i32 %58, i32 %59, i32 %60, i32 %61, %struct.acpi_walk_state* %62, i32* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @ACPI_FAILURE(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %46
  %69 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %70 = bitcast %union.acpi_parse_object* %69 to %struct.TYPE_4__*
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @ACPI_ERROR_NAMESPACE(i32 %73, i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @return_ACPI_STATUS(i32 %76)
  br label %78

78:                                               ; preds = %68, %46
  %79 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %80 = bitcast %union.acpi_parse_object* %79 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %union.acpi_parse_object*, %union.acpi_parse_object** %81, align 8
  store %union.acpi_parse_object* %82, %union.acpi_parse_object** %9, align 8
  %83 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %84 = bitcast %union.acpi_parse_object* %83 to %struct.TYPE_4__*
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 2
  store i64 %87, i64* %88, align 8
  %89 = load i32, i32* @ACPI_TYPE_LOCAL_INDEX_FIELD, align 4
  %90 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 1
  store i32 %89, i32* %90, align 8
  %91 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %92 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 0
  store %struct.acpi_namespace_node* %91, %struct.acpi_namespace_node** %92, align 8
  %93 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %94 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %95 = bitcast %union.acpi_parse_object* %94 to %struct.TYPE_4__*
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %union.acpi_parse_object*, %union.acpi_parse_object** %96, align 8
  %98 = call i32 @acpi_ds_get_field_names(%struct.acpi_create_field_info* %10, %struct.acpi_walk_state* %93, %union.acpi_parse_object* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @return_ACPI_STATUS(i32 %99)
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ns_lookup(i32, i32, i32, i32, i32, %struct.acpi_walk_state*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR_NAMESPACE(i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_get_field_names(%struct.acpi_create_field_info*, %struct.acpi_walk_state*, %union.acpi_parse_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
