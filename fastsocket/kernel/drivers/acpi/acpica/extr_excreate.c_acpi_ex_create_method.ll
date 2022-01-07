; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_excreate.c_acpi_ex_create_method.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_excreate.c_acpi_ex_create_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %union.acpi_operand_object** }
%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.acpi_namespace_node = type { i32 }

@ex_create_method = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AML_METHOD_ARG_COUNT = common dso_local global i32 0, align 4
@AML_METHOD_SERIALIZED = common dso_local global i32 0, align 4
@AML_METHOD_SYNC_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_create_method(i32* %0, i32 %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca %union.acpi_operand_object**, align 8
  %9 = alloca %union.acpi_operand_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 0
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %13, align 8
  %15 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %14, i64 0
  store %union.acpi_operand_object** %15, %union.acpi_operand_object*** %8, align 8
  %16 = load i32, i32* @ex_create_method, align 4
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %18 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %16, %struct.acpi_walk_state* %17)
  %19 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %20 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %19)
  store %union.acpi_operand_object* %20, %union.acpi_operand_object** %9, align 8
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %22 = icmp ne %union.acpi_operand_object* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %24, i32* %10, align 4
  br label %76

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32* %26, i32** %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %32 = bitcast %union.acpi_operand_object* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 4
  %34 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %35 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %34, i64 1
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %35, align 8
  %37 = bitcast %union.acpi_operand_object* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @AML_METHOD_ARG_COUNT, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %46 = bitcast %union.acpi_operand_object* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @AML_METHOD_ARG_COUNT, align 4
  %50 = and i32 %48, %49
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %52 = bitcast %union.acpi_operand_object* %51 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @AML_METHOD_SERIALIZED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %25
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @AML_METHOD_SYNC_LEVEL, align 4
  %61 = and i32 %59, %60
  %62 = ashr i32 %61, 4
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %64 = bitcast %union.acpi_operand_object* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 8
  br label %66

66:                                               ; preds = %58, %25
  %67 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %68 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %67, i64 0
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %68, align 8
  %70 = bitcast %union.acpi_operand_object* %69 to %struct.acpi_namespace_node*
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %72 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %73 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %70, %union.acpi_operand_object* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %75 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %74)
  br label %76

76:                                               ; preds = %66, %23
  %77 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %78 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %77, i64 1
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %78, align 8
  %80 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %79)
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @return_ACPI_STATUS(i32 %81)
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
