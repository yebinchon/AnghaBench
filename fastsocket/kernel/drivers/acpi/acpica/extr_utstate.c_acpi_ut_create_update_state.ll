; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_update_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_generic_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_operand_object* }
%union.acpi_operand_object = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ut_create_update_state = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_STATE_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_generic_state* @acpi_ut_create_update_state(%union.acpi_operand_object* %0, i32 %1) #0 {
  %3 = alloca %union.acpi_generic_state*, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_generic_state*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ut_create_update_state, align 4
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %9 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %7, %union.acpi_operand_object* %8)
  %10 = call %union.acpi_generic_state* (...) @acpi_ut_create_generic_state()
  store %union.acpi_generic_state* %10, %union.acpi_generic_state** %6, align 8
  %11 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %12 = icmp ne %union.acpi_generic_state* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @return_PTR(%union.acpi_generic_state* null)
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* @ACPI_DESC_TYPE_STATE_UPDATE, align 4
  %17 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %18 = bitcast %union.acpi_generic_state* %17 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %21 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %22 = bitcast %union.acpi_generic_state* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store %union.acpi_operand_object* %20, %union.acpi_operand_object** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %26 = bitcast %union.acpi_generic_state* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %29 = call i32 @return_PTR(%union.acpi_generic_state* %28)
  %30 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  ret %union.acpi_generic_state* %30
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state(...) #1

declare dso_local i32 @return_PTR(%union.acpi_generic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
