; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_create_bank_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_create_bank_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %union.acpi_parse_object*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, %union.acpi_parse_object* }
%struct.acpi_namespace_node = type { i32 }
%struct.acpi_walk_state = type { i32 }
%struct.acpi_create_field_info = type { %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i32, i64, %struct.acpi_namespace_node* }

@ds_create_bank_field = common dso_local global i32 0, align 4
@ACPI_TYPE_REGION = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_BANK_FIELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_create_bank_field(%union.acpi_parse_object* %0, %struct.acpi_namespace_node* %1, %struct.acpi_walk_state* %2) #0 {
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
  %11 = load i32, i32* @ds_create_bank_field, align 4
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %union.acpi_parse_object* %12)
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %15 = bitcast %union.acpi_parse_object* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %17, align 8
  store %union.acpi_parse_object* %18, %union.acpi_parse_object** %9, align 8
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %20 = icmp ne %struct.acpi_namespace_node* %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %3
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %23 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %26 = bitcast %union.acpi_parse_object* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ACPI_TYPE_REGION, align 4
  %31 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %32 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %34 = call i32 @acpi_ns_lookup(i32 %24, i32 %29, i32 %30, i32 %31, i32 %32, %struct.acpi_walk_state* %33, %struct.acpi_namespace_node** %6)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %21
  %39 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %40 = bitcast %union.acpi_parse_object* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ACPI_ERROR_NAMESPACE(i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @return_ACPI_STATUS(i32 %46)
  br label %48

48:                                               ; preds = %38, %21
  br label %49

49:                                               ; preds = %48, %3
  %50 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %51 = bitcast %union.acpi_parse_object* %50 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %union.acpi_parse_object*, %union.acpi_parse_object** %52, align 8
  store %union.acpi_parse_object* %53, %union.acpi_parse_object** %9, align 8
  %54 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %55 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %58 = bitcast %union.acpi_parse_object* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %63 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %64 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %66 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 4
  %67 = call i32 @acpi_ns_lookup(i32 %56, i32 %61, i32 %62, i32 %63, i32 %64, %struct.acpi_walk_state* %65, %struct.acpi_namespace_node** %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @ACPI_FAILURE(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %49
  %72 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %73 = bitcast %union.acpi_parse_object* %72 to %struct.TYPE_4__*
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @ACPI_ERROR_NAMESPACE(i32 %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @return_ACPI_STATUS(i32 %79)
  br label %81

81:                                               ; preds = %71, %49
  %82 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %83 = bitcast %union.acpi_parse_object* %82 to %struct.TYPE_4__*
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %union.acpi_parse_object*, %union.acpi_parse_object** %84, align 8
  store %union.acpi_parse_object* %85, %union.acpi_parse_object** %9, align 8
  %86 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %87 = bitcast %union.acpi_parse_object* %86 to %struct.TYPE_4__*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %union.acpi_parse_object*, %union.acpi_parse_object** %88, align 8
  store %union.acpi_parse_object* %89, %union.acpi_parse_object** %9, align 8
  %90 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %91 = bitcast %union.acpi_parse_object* %90 to %struct.TYPE_4__*
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 3
  store i64 %94, i64* %95, align 8
  %96 = load i32, i32* @ACPI_TYPE_LOCAL_BANK_FIELD, align 4
  %97 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 2
  store i32 %96, i32* %97, align 8
  %98 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %99 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 1
  store %struct.acpi_namespace_node* %98, %struct.acpi_namespace_node** %99, align 8
  %100 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %101 = bitcast %union.acpi_parse_object* %100 to %struct.acpi_namespace_node*
  %102 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 0
  store %struct.acpi_namespace_node* %101, %struct.acpi_namespace_node** %102, align 8
  %103 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %104 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %105 = bitcast %union.acpi_parse_object* %104 to %struct.TYPE_4__*
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load %union.acpi_parse_object*, %union.acpi_parse_object** %106, align 8
  %108 = call i32 @acpi_ds_get_field_names(%struct.acpi_create_field_info* %10, %struct.acpi_walk_state* %103, %union.acpi_parse_object* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @return_ACPI_STATUS(i32 %109)
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ns_lookup(i32, i32, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #1

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
