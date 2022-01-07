; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utobject.c_acpi_ut_create_buffer_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utobject.c_acpi_ut_create_buffer_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i32 }

@ut_create_buffer_object = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not allocate size %X\00", align 1
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %0) #0 {
  %2 = alloca %union.acpi_operand_object*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i32* null, i32** %5, align 8
  %6 = load i32, i32* @ut_create_buffer_object, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @ACPI_FUNCTION_TRACE_U32(i32 %6, i64 %7)
  %9 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %10 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %9)
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %4, align 8
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %12 = icmp ne %union.acpi_operand_object* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @return_PTR(%union.acpi_operand_object* null)
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i64, i64* %3, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = call i32* @ACPI_ALLOCATE_ZEROED(i64 %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @AE_INFO, align 4
  %25 = load i64, i64* %3, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @ACPI_ERROR(i32 %26)
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %29 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %28)
  %30 = call i32 @return_PTR(%union.acpi_operand_object* null)
  br label %31

31:                                               ; preds = %23, %18
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %35 = bitcast %union.acpi_operand_object* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32* %39, i32** %42, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %45 = bitcast %union.acpi_operand_object* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %48 = call i32 @return_PTR(%union.acpi_operand_object* %47)
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  ret %union.acpi_operand_object* %49
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_U32(i32, i64) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @return_PTR(%union.acpi_operand_object*) #1

declare dso_local i32* @ACPI_ALLOCATE_ZEROED(i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
