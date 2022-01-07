; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utobject.c_acpi_ut_create_internal_object_dbg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utobject.c_acpi_ut_create_internal_object_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, %union.acpi_operand_object* }

@ut_create_internal_object_dbg = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_EXTRA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca %union.acpi_operand_object*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @ut_create_internal_object_dbg, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @acpi_ut_get_type_name(i32 %13)
  %15 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %12, i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %union.acpi_operand_object* @acpi_ut_allocate_object_desc_dbg(i8* %16, i32 %17, i32 %18)
  store %union.acpi_operand_object* %19, %union.acpi_operand_object** %10, align 8
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %21 = icmp ne %union.acpi_operand_object* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = call i32 @return_PTR(%union.acpi_operand_object* null)
  br label %24

24:                                               ; preds = %22, %4
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %49 [
    i32 128, label %26
    i32 130, label %26
    i32 129, label %26
  ]

26:                                               ; preds = %24, %24, %24
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %union.acpi_operand_object* @acpi_ut_allocate_object_desc_dbg(i8* %27, i32 %28, i32 %29)
  store %union.acpi_operand_object* %30, %union.acpi_operand_object** %11, align 8
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %32 = icmp ne %union.acpi_operand_object* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %35 = call i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object* %34)
  %36 = call i32 @return_PTR(%union.acpi_operand_object* null)
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i64, i64* @ACPI_TYPE_LOCAL_EXTRA, align 8
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %40 = bitcast %union.acpi_operand_object* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %43 = bitcast %union.acpi_operand_object* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %47 = bitcast %union.acpi_operand_object* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store %union.acpi_operand_object* %45, %union.acpi_operand_object** %48, align 8
  br label %50

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %54 = bitcast %union.acpi_operand_object* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %57 = bitcast %union.acpi_operand_object* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %60 = call i32 @return_PTR(%union.acpi_operand_object* %59)
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  ret %union.acpi_operand_object* %61
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_allocate_object_desc_dbg(i8*, i32, i32) #1

declare dso_local i32 @return_PTR(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
