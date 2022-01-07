; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmisc.c_acpi_ut_create_update_state_and_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmisc.c_acpi_ut_create_update_state_and_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { i32 }
%union.acpi_generic_state = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_create_update_state_and_push(%union.acpi_operand_object* %0, i32 %1, %union.acpi_generic_state** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_generic_state**, align 8
  %8 = alloca %union.acpi_generic_state*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.acpi_generic_state** %2, %union.acpi_generic_state*** %7, align 8
  %9 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %11 = icmp ne %union.acpi_operand_object* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %4, align 4
  br label %27

14:                                               ; preds = %3
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %union.acpi_generic_state* @acpi_ut_create_update_state(%union.acpi_operand_object* %15, i32 %16)
  store %union.acpi_generic_state* %17, %union.acpi_generic_state** %8, align 8
  %18 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %19 = icmp ne %union.acpi_generic_state* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %14
  %23 = load %union.acpi_generic_state**, %union.acpi_generic_state*** %7, align 8
  %24 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %25 = call i32 @acpi_ut_push_generic_state(%union.acpi_generic_state** %23, %union.acpi_generic_state* %24)
  %26 = load i32, i32* @AE_OK, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %20, %12
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_create_update_state(%union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_push_generic_state(%union.acpi_generic_state**, %union.acpi_generic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
