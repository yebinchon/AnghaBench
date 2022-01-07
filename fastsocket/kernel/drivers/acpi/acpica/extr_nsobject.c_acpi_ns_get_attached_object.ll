; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_get_attached_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_get_attached_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { i32 }
%struct.acpi_namespace_node = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ns_get_attached_object = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Null Node ptr\00", align 1
@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca %union.acpi_operand_object*, align 8
  %3 = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %3, align 8
  %4 = load i32, i32* @ns_get_attached_object, align 4
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %6 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %4, %struct.acpi_namespace_node* %5)
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %8 = icmp ne %struct.acpi_namespace_node* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @AE_INFO, align 4
  %11 = call i32 @ACPI_WARNING(i32 ptrtoint ([14 x i8]* @.str to i32))
  %12 = call i32 @return_PTR(%struct.TYPE_5__* null)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %13
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_5__* %21)
  %23 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_5__* %28)
  %30 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %25, %18
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %34 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ACPI_TYPE_LOCAL_DATA, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32, %25, %13
  %42 = call i32 @return_PTR(%struct.TYPE_5__* null)
  br label %43

43:                                               ; preds = %41, %32
  %44 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %45 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call i32 @return_PTR(%struct.TYPE_5__* %46)
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  ret %union.acpi_operand_object* %48
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @return_PTR(%struct.TYPE_5__*) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
