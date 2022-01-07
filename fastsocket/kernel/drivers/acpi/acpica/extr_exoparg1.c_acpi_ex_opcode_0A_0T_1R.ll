; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exoparg1.c_acpi_ex_opcode_0A_0T_1R.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exoparg1.c_acpi_ex_opcode_0A_0T_1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %union.acpi_operand_object* }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_opcode_0A_0T_1R = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown AML opcode %X\00", align 1
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_opcode_0A_0T_1R(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %6 = load i32, i32* @AE_OK, align 4
  store i32 %6, i32* %4, align 4
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %5, align 8
  %7 = load i32, i32* @ex_opcode_0A_0T_1R, align 4
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @acpi_ps_get_opcode_name(i32 %10)
  %12 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %7, i32 %11)
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %28 [
    i32 128, label %16
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %18 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %17)
  store %union.acpi_operand_object* %18, %union.acpi_operand_object** %5, align 8
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %20 = icmp ne %union.acpi_operand_object* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %22, i32* %4, align 4
  br label %36

23:                                               ; preds = %16
  %24 = call i32 (...) @acpi_os_get_timer()
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %26 = bitcast %union.acpi_operand_object* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  br label %35

28:                                               ; preds = %1
  %29 = load i32, i32* @AE_INFO, align 4
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ACPI_ERROR(i32 %32)
  %34 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %28, %23
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @ACPI_FAILURE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %42 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %41, i32 0, i32 1
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %42, align 8
  %44 = icmp ne %union.acpi_operand_object* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40, %36
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %47 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %46)
  %48 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %49 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %48, i32 0, i32 1
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %49, align 8
  br label %54

50:                                               ; preds = %40
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %53 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %52, i32 0, i32 1
  store %union.acpi_operand_object* %51, %union.acpi_operand_object** %53, align 8
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @return_ACPI_STATUS(i32 %55)
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @acpi_os_get_timer(...) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
