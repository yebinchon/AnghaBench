; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_attach_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_attach_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %union.acpi_operand_object* }
%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %union.acpi_operand_object* }
%struct.TYPE_3__ = type { i64, i8* }

@ACPI_TYPE_LOCAL_DATA = common dso_local global i64 0, align 8
@AE_ALREADY_EXISTS = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_attach_data(%struct.acpi_namespace_node* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca %union.acpi_operand_object*, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %8, align 8
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %12 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %11, i32 0, i32 0
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  store %union.acpi_operand_object* %13, %union.acpi_operand_object** %9, align 8
  br label %14

14:                                               ; preds = %33, %3
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %16 = icmp ne %union.acpi_operand_object* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ACPI_TYPE_LOCAL_DATA, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %26 = bitcast %union.acpi_operand_object* %25 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @AE_ALREADY_EXISTS, align 4
  store i32 %32, i32* %4, align 4
  br label %68

33:                                               ; preds = %24, %17
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  store %union.acpi_operand_object* %34, %union.acpi_operand_object** %8, align 8
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %37, align 8
  store %union.acpi_operand_object* %38, %union.acpi_operand_object** %9, align 8
  br label %14

39:                                               ; preds = %14
  %40 = load i64, i64* @ACPI_TYPE_LOCAL_DATA, align 8
  %41 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i64 %40)
  store %union.acpi_operand_object* %41, %union.acpi_operand_object** %10, align 8
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %43 = icmp ne %union.acpi_operand_object* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %45, i32* %4, align 4
  br label %68

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %49 = bitcast %union.acpi_operand_object* %48 to %struct.TYPE_3__*
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_3__*
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i8* %51, i8** %54, align 8
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %56 = icmp ne %union.acpi_operand_object* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %60 = bitcast %union.acpi_operand_object* %59 to %struct.TYPE_4__*
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store %union.acpi_operand_object* %58, %union.acpi_operand_object** %61, align 8
  br label %66

62:                                               ; preds = %46
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %64 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %65 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %64, i32 0, i32 0
  store %union.acpi_operand_object* %63, %union.acpi_operand_object** %65, align 8
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* @AE_OK, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %44, %31
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
