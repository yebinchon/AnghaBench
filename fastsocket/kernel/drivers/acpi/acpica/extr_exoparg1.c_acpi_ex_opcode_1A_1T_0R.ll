; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exoparg1.c_acpi_ex_opcode_1A_1T_0R.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exoparg1.c_acpi_ex_opcode_1A_1T_0R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %union.acpi_operand_object** }
%union.acpi_operand_object = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_opcode_1A_1T_0R = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown AML opcode %X\00", align 1
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_opcode_1A_1T_0R(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object**, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %6 = load i32, i32* @AE_OK, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 1
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %10 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %9, i64 0
  store %union.acpi_operand_object** %10, %union.acpi_operand_object*** %5, align 8
  %11 = load i32, i32* @ex_opcode_1A_1T_0R, align 4
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @acpi_ps_get_opcode_name(i32 %14)
  %16 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %11, i32 %15)
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %29 [
    i32 128, label %20
  ]

20:                                               ; preds = %1
  %21 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %22 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %21, i64 0
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %22, align 8
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %25 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %24, i64 1
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %25, align 8
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %28 = call i32 @acpi_ex_load_op(%union.acpi_operand_object* %23, %union.acpi_operand_object* %26, %struct.acpi_walk_state* %27)
  store i32 %28, i32* %4, align 4
  br label %36

29:                                               ; preds = %1
  %30 = load i32, i32* @AE_INFO, align 4
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ACPI_ERROR(i32 %33)
  %35 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @return_ACPI_STATUS(i32 %38)
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

declare dso_local i32 @acpi_ex_load_op(%union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
