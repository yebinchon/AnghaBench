; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exstore.c_acpi_ex_store_object_to_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exstore.c_acpi_ex_store_object_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_namespace_node = type { i32 }
%struct.acpi_walk_state = type { i64, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_store_object_to_node = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Storing %p(%s) into node %p(%s)\0A\00", align 1
@AML_COPY_OP = common dso_local global i64 0, align 8
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Store %s into %s via Convert/Attach\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Storing %s (%p) directly into node (%p) with no implicit conversion\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_store_object_to_node(%union.acpi_operand_object* %0, %struct.acpi_namespace_node* %1, %struct.acpi_walk_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca %struct.acpi_walk_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca %union.acpi_operand_object*, align 8
  %13 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %6, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %7, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @AE_OK, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @ex_store_object_to_node, align 4
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %17 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %15, %union.acpi_operand_object* %16)
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %19 = call i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %21 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %20)
  store %union.acpi_operand_object* %21, %union.acpi_operand_object** %11, align 8
  %22 = load i32, i32* @ACPI_DB_EXEC, align 4
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %25 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %24)
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @acpi_ut_get_type_name(i32 %27)
  %29 = call i32 @ACPI_DEBUG_PRINT(i32 %28)
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %32 = call i32 @acpi_ex_resolve_object(%union.acpi_operand_object** %6, i32 %30, %struct.acpi_walk_state* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @return_ACPI_STATUS(i32 %37)
  br label %39

39:                                               ; preds = %36, %4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %44 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AML_COPY_OP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 129
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 131
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 130
  br i1 %56, label %57, label %59

57:                                               ; preds = %54, %39
  %58 = load i32, i32* @ACPI_TYPE_ANY, align 4
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %57, %54, %51, %48, %42
  %60 = load i32, i32* %13, align 4
  switch i32 %60, label %97 [
    i32 133, label %61
    i32 129, label %61
    i32 131, label %61
    i32 130, label %61
    i32 132, label %67
    i32 128, label %67
    i32 134, label %67
  ]

61:                                               ; preds = %59, %59, %59, %59
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %64 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %65 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %64, i32 0, i32 1
  %66 = call i32 @acpi_ex_write_data_to_field(%union.acpi_operand_object* %62, %union.acpi_operand_object* %63, i32* %65)
  store i32 %66, i32* %10, align 4
  br label %112

67:                                               ; preds = %59, %59, %59
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %71 = call i32 @acpi_ex_store_object_to_object(%union.acpi_operand_object* %68, %union.acpi_operand_object* %69, %union.acpi_operand_object** %12, %struct.acpi_walk_state* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i64 @ACPI_FAILURE(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @return_ACPI_STATUS(i32 %76)
  br label %78

78:                                               ; preds = %75, %67
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %81 = icmp ne %union.acpi_operand_object* %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %86 = bitcast %union.acpi_operand_object* %85 to %struct.TYPE_2__*
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %83, %union.acpi_operand_object* %84, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* @ACPI_DB_EXEC, align 4
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %92 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %91)
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %94 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %93)
  %95 = call i32 @ACPI_DEBUG_PRINT(i32 %94)
  br label %96

96:                                               ; preds = %82, %78
  br label %112

97:                                               ; preds = %59
  %98 = load i32, i32* @ACPI_DB_EXEC, align 4
  %99 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %100 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %99)
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %102 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %103 = ptrtoint %struct.acpi_namespace_node* %102 to i32
  %104 = call i32 @ACPI_DEBUG_PRINT(i32 %103)
  %105 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %106 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %107 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %108 = bitcast %union.acpi_operand_object* %107 to %struct.TYPE_2__*
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %105, %union.acpi_operand_object* %106, i32 %110)
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %97, %96, %61
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @return_ACPI_STATUS(i32 %113)
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ns_get_type(%struct.acpi_namespace_node*) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @acpi_ex_resolve_object(%union.acpi_operand_object**, i32, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ex_write_data_to_field(%union.acpi_operand_object*, %union.acpi_operand_object*, i32*) #1

declare dso_local i32 @acpi_ex_store_object_to_object(%union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
