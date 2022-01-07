; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_detach_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_detach_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %union.acpi_operand_object* }
%union.acpi_operand_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %union.acpi_operand_object* }
%struct.TYPE_4__ = type { i64 }

@ACPI_TYPE_LOCAL_DATA = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_detach_data(%struct.acpi_namespace_node* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %4, align 8
  store i64 %1, i64* %5, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %7, align 8
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %9 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %8, i32 0, i32 0
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %6, align 8
  br label %11

11:                                               ; preds = %50, %2
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %13 = icmp ne %union.acpi_operand_object* %12, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %11
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %16 = bitcast %union.acpi_operand_object* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ACPI_TYPE_LOCAL_DATA, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %14
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %23 = bitcast %union.acpi_operand_object* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %21
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %30 = icmp ne %union.acpi_operand_object* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %33 = bitcast %union.acpi_operand_object* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %34, align 8
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %37 = bitcast %union.acpi_operand_object* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store %union.acpi_operand_object* %35, %union.acpi_operand_object** %38, align 8
  br label %46

39:                                               ; preds = %28
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.TYPE_3__*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %42, align 8
  %44 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %45 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %44, i32 0, i32 0
  store %union.acpi_operand_object* %43, %union.acpi_operand_object** %45, align 8
  br label %46

46:                                               ; preds = %39, %31
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %48 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %47)
  %49 = load i32, i32* @AE_OK, align 4
  store i32 %49, i32* %3, align 4
  br label %58

50:                                               ; preds = %21, %14
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object* %51, %union.acpi_operand_object** %7, align 8
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_3__*
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %54, align 8
  store %union.acpi_operand_object* %55, %union.acpi_operand_object** %6, align 8
  br label %11

56:                                               ; preds = %11
  %57 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %46
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
