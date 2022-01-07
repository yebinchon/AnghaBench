; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_execute_arguments.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_execute_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%union.acpi_parse_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_namespace_node* }
%struct.acpi_walk_state = type { %struct.acpi_namespace_node*, i32 }

@ds_execute_arguments = common dso_local global i32 0, align 4
@AML_INT_EVAL_SUBTREE_OP = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@ACPI_PARSE_DEFERRED_OP = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i32, i32*)* @acpi_ds_execute_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node* %0, %struct.acpi_namespace_node* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_namespace_node*, align 8
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_parse_object*, align 8
  %12 = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %6, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @ds_execute_arguments, align 4
  %14 = call i32 @ACPI_FUNCTION_TRACE(i32 %13)
  %15 = load i32, i32* @AML_INT_EVAL_SUBTREE_OP, align 4
  %16 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %15)
  store %union.acpi_parse_object* %16, %union.acpi_parse_object** %11, align 8
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %18 = icmp ne %union.acpi_parse_object* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @AE_NO_MEMORY, align 4
  %21 = call i32 @return_ACPI_STATUS(i32 %20)
  br label %22

22:                                               ; preds = %19, %4
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %25 = bitcast %union.acpi_parse_object* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.acpi_namespace_node* %23, %struct.acpi_namespace_node** %26, align 8
  %27 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32 0, i32* null, i32* null, i32* null)
  store %struct.acpi_walk_state* %27, %struct.acpi_walk_state** %12, align 8
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %29 = icmp ne %struct.acpi_walk_state* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %31, i32* %10, align 4
  br label %101

32:                                               ; preds = %22
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %38 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %33, %union.acpi_parse_object* %34, i32* null, i32* %35, i32 %36, i32* null, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %44 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %43)
  br label %101

45:                                               ; preds = %32
  %46 = load i32, i32* @ACPI_PARSE_DEFERRED_OP, align 4
  %47 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %48 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %50 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %51 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %50, i32 0, i32 0
  store %struct.acpi_namespace_node* %49, %struct.acpi_namespace_node** %51, align 8
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %53 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @ACPI_FAILURE(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %101

58:                                               ; preds = %45
  %59 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %60 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %61 = bitcast %union.acpi_parse_object* %60 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store %struct.acpi_namespace_node* %59, %struct.acpi_namespace_node** %62, align 8
  %63 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %64 = call i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %63)
  %65 = load i32, i32* @AML_INT_EVAL_SUBTREE_OP, align 4
  %66 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %65)
  store %union.acpi_parse_object* %66, %union.acpi_parse_object** %11, align 8
  %67 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %68 = icmp ne %union.acpi_parse_object* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @AE_NO_MEMORY, align 4
  %71 = call i32 @return_ACPI_STATUS(i32 %70)
  br label %72

72:                                               ; preds = %69, %58
  %73 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %74 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %75 = bitcast %union.acpi_parse_object* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store %struct.acpi_namespace_node* %73, %struct.acpi_namespace_node** %76, align 8
  %77 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32 0, i32* null, i32* null, i32* null)
  store %struct.acpi_walk_state* %77, %struct.acpi_walk_state** %12, align 8
  %78 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %79 = icmp ne %struct.acpi_walk_state* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %81, i32* %10, align 4
  br label %101

82:                                               ; preds = %72
  %83 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %84 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %88 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %83, %union.acpi_parse_object* %84, i32* null, i32* %85, i32 %86, i32* null, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @ACPI_FAILURE(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %94 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %93)
  br label %101

95:                                               ; preds = %82
  %96 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %97 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %98 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %97, i32 0, i32 0
  store %struct.acpi_namespace_node* %96, %struct.acpi_namespace_node** %98, align 8
  %99 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %100 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %99)
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %95, %92, %80, %57, %42, %30
  %102 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %103 = call i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %102)
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @return_ACPI_STATUS(i32 %104)
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32, i32*, i32*, i32*) #1

declare dso_local i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ps_parse_aml(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
