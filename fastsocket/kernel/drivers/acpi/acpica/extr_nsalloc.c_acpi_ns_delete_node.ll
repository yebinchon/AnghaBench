; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_delete_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_delete_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object* }
%union.acpi_operand_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 (%struct.acpi_namespace_node.0*, i32)* }
%struct.acpi_namespace_node.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@ns_delete_node = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_DATA = common dso_local global i64 0, align 8
@acpi_gbl_namespace_cache = common dso_local global i32 0, align 4
@acpi_gbl_ns_node_list = common dso_local global %struct.TYPE_6__* null, align 8
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Node %p, Remaining %X\0A\00", align 1
@acpi_gbl_current_node_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_delete_node(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca %struct.acpi_namespace_node*, align 8
  %3 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %2, align 8
  %4 = load i32, i32* @ns_delete_node, align 4
  %5 = call i32 @ACPI_FUNCTION_NAME(i32 %4)
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %7 = call i32 @acpi_ns_detach_object(%struct.acpi_namespace_node* %6)
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %9 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %8, i32 0, i32 0
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %3, align 8
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %12 = icmp ne %union.acpi_operand_object* %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %15 = bitcast %union.acpi_operand_object* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ACPI_TYPE_LOCAL_DATA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %13
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.TYPE_5__*
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32 (%struct.acpi_namespace_node.0*, i32)*, i32 (%struct.acpi_namespace_node.0*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.acpi_namespace_node.0*, i32)* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_5__*
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32 (%struct.acpi_namespace_node.0*, i32)*, i32 (%struct.acpi_namespace_node.0*, i32)** %29, align 8
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %32 = bitcast %struct.acpi_namespace_node* %31 to %struct.acpi_namespace_node.0*
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %34 = bitcast %union.acpi_operand_object* %33 to %struct.TYPE_5__*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %30(%struct.acpi_namespace_node.0* %32, i32 %36)
  br label %38

38:                                               ; preds = %26, %20
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %40 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %39)
  br label %41

41:                                               ; preds = %38, %13, %1
  %42 = load i32, i32* @acpi_gbl_namespace_cache, align 4
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %44 = call i32 @acpi_os_release_object(i32 %42, %struct.acpi_namespace_node* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @acpi_gbl_ns_node_list, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = call i32 @ACPI_MEM_TRACKING(i32 %47)
  %50 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %51 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %52 = load i32, i32* @acpi_gbl_current_node_count, align 4
  %53 = call i32 @ACPI_DEBUG_PRINT(i32 %52)
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @acpi_ns_detach_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_os_release_object(i32, %struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_MEM_TRACKING(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
