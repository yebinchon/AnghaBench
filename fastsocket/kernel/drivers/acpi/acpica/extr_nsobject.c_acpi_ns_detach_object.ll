; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_detach_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_detach_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32, i32, %union.acpi_operand_object* }
%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %union.acpi_operand_object* }
%struct.TYPE_3__ = type { i32 }

@ns_detach_object = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_DATA = common dso_local global i64 0, align 8
@return_VOID = common dso_local global i32 0, align 4
@ANOBJ_ALLOCATED_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i64 0, align 8
@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_DB_NAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Node %p [%4.4s] Object %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_detach_object(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca %struct.acpi_namespace_node*, align 8
  %3 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %2, align 8
  %4 = load i32, i32* @ns_detach_object, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %7 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %6, i32 0, i32 2
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  store %union.acpi_operand_object* %8, %union.acpi_operand_object** %3, align 8
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %10 = icmp ne %union.acpi_operand_object* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %13 = bitcast %union.acpi_operand_object* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ACPI_TYPE_LOCAL_DATA, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @return_VOID, align 4
  br label %20

20:                                               ; preds = %18, %11
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %22 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ANOBJ_ALLOCATED_BUFFER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %29 = bitcast %union.acpi_operand_object* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ACPI_FREE(i32 %38)
  br label %40

40:                                               ; preds = %34, %27
  br label %41

41:                                               ; preds = %40, %20
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %43 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %42, i32 0, i32 2
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %43, align 8
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %45 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %44)
  %46 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %41
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %50 = bitcast %union.acpi_operand_object* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %51, align 8
  %53 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %54 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %53, i32 0, i32 2
  store %union.acpi_operand_object* %52, %union.acpi_operand_object** %54, align 8
  %55 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %56 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %55, i32 0, i32 2
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %56, align 8
  %58 = icmp ne %union.acpi_operand_object* %57, null
  br i1 %58, label %59, label %77

59:                                               ; preds = %48
  %60 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %61 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %60, i32 0, i32 2
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %61, align 8
  %63 = bitcast %union.acpi_operand_object* %62 to %struct.TYPE_4__*
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ACPI_TYPE_LOCAL_DATA, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %59
  %69 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %70 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %69, i32 0, i32 2
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %70, align 8
  %72 = bitcast %union.acpi_operand_object* %71 to %struct.TYPE_4__*
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %73, align 8
  %75 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %76 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %75, i32 0, i32 2
  store %union.acpi_operand_object* %74, %union.acpi_operand_object** %76, align 8
  br label %77

77:                                               ; preds = %68, %59, %48
  br label %78

78:                                               ; preds = %77, %41
  %79 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %80 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %81 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @ACPI_DB_NAMES, align 4
  %83 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %84 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %85 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %84)
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %87 = ptrtoint %union.acpi_operand_object* %86 to i32
  %88 = call i32 @ACPI_DEBUG_PRINT(i32 %87)
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %90 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %89)
  %91 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_FREE(i32) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
