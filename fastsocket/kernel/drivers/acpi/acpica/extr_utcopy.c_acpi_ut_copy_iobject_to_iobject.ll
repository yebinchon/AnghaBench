; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utcopy.c_acpi_ut_copy_iobject_to_iobject.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utcopy.c_acpi_ut_copy_iobject_to_iobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.acpi_walk_state = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ut_copy_iobject_to_iobject = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %0, %union.acpi_operand_object** %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object**, align 8
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %6, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @ut_copy_iobject_to_iobject, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %13 = bitcast %union.acpi_operand_object* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i64 %15)
  %17 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %17, align 8
  %18 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %18, align 8
  %20 = icmp ne %union.acpi_operand_object* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @AE_NO_MEMORY, align 4
  %23 = call i32 @return_ACPI_STATUS(i32 %22)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %26 = bitcast %union.acpi_operand_object* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %33 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %33, align 8
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %36 = call i32 @acpi_ut_copy_ipackage_to_ipackage(%union.acpi_operand_object* %32, %union.acpi_operand_object* %34, %struct.acpi_walk_state* %35)
  store i32 %36, i32* %8, align 4
  br label %42

37:                                               ; preds = %24
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %39 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %39, align 8
  %41 = call i32 @acpi_ut_copy_simple_object(%union.acpi_operand_object* %38, %union.acpi_operand_object* %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @return_ACPI_STATUS(i32 %43)
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_copy_ipackage_to_ipackage(%union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ut_copy_simple_object(%union.acpi_operand_object*, %union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
