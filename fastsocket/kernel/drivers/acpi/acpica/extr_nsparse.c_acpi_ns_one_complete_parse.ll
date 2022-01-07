; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsparse.c_acpi_ns_one_complete_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsparse.c_acpi_ns_one_complete_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%union.acpi_parse_object = type { i32 }
%struct.acpi_walk_state = type { i32 }
%struct.acpi_table_header = type { i32 }

@ns_one_complete_parse = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_BAD_HEADER = common dso_local global i32 0, align 4
@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"*PARSE* pass %d parse\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_one_complete_parse(i32 %0, i32 %1, %struct.acpi_namespace_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca %union.acpi_parse_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.acpi_walk_state*, align 8
  %13 = alloca %struct.acpi_table_header*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %7, align 8
  %15 = load i32, i32* @ns_one_complete_parse, align 4
  %16 = call i32 @ACPI_FUNCTION_TRACE(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @acpi_tb_get_owner_id(i32 %17, i32* %14)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @return_ACPI_STATUS(i32 %23)
  br label %25

25:                                               ; preds = %22, %3
  %26 = call %union.acpi_parse_object* (...) @acpi_ps_create_scope_op()
  store %union.acpi_parse_object* %26, %union.acpi_parse_object** %8, align 8
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %28 = icmp ne %union.acpi_parse_object* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @AE_NO_MEMORY, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %14, align 4
  %34 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32 %33, i32* null, i32* null, i32* null)
  store %struct.acpi_walk_state* %34, %struct.acpi_walk_state** %12, align 8
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %36 = icmp ne %struct.acpi_walk_state* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %39 = call i32 @acpi_ps_free_op(%union.acpi_parse_object* %38)
  %40 = load i32, i32* @AE_NO_MEMORY, align 4
  %41 = call i32 @return_ACPI_STATUS(i32 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @acpi_get_table_by_index(i32 %43, %struct.acpi_table_header** %13)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @ACPI_FAILURE(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %50 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %49)
  %51 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %52 = call i32 @acpi_ps_free_op(%union.acpi_parse_object* %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @return_ACPI_STATUS(i32 %53)
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.acpi_table_header*, %struct.acpi_table_header** %13, align 8
  %57 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 4
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @AE_BAD_HEADER, align 4
  store i32 %62, i32* %9, align 4
  br label %79

63:                                               ; preds = %55
  %64 = load %struct.acpi_table_header*, %struct.acpi_table_header** %13, align 8
  %65 = bitcast %struct.acpi_table_header* %64 to i32*
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32* %66, i32** %11, align 8
  %67 = load %struct.acpi_table_header*, %struct.acpi_table_header** %13, align 8
  %68 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 %70, 4
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %74 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %73, %union.acpi_parse_object* %74, i32* null, i32* %75, i32 %76, i32* null, i32 %77)
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %63, %61
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @ACPI_FAILURE(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %85 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %84)
  br label %111

86:                                               ; preds = %79
  %87 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %88 = icmp ne %struct.acpi_namespace_node* %87, null
  br i1 %88, label %89, label %105

89:                                               ; preds = %86
  %90 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %91 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %92 = icmp ne %struct.acpi_namespace_node* %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %95 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %96 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %97 = call i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %94, i32 %95, %struct.acpi_walk_state* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @ACPI_FAILURE(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %103 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %102)
  br label %111

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %89, %86
  %106 = load i32, i32* @ACPI_DB_PARSE, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @ACPI_DEBUG_PRINT(i32 %107)
  %109 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %110 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %109)
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %105, %101, %83
  %112 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %113 = call i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %112)
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @return_ACPI_STATUS(i32 %114)
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_tb_get_owner_id(i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_create_scope_op(...) #1

declare dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32, i32*, i32*, i32*) #1

declare dso_local i32 @acpi_ps_free_op(%union.acpi_parse_object*) #1

declare dso_local i32 @acpi_get_table_by_index(i32, %struct.acpi_table_header**) #1

declare dso_local i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node*, i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ps_parse_aml(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
