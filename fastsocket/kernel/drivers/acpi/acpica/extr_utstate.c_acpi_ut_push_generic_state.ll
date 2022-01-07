; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utstate.c_acpi_ut_push_generic_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utstate.c_acpi_ut_push_generic_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_generic_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.acpi_generic_state* }

@ut_push_generic_state = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ut_push_generic_state(%union.acpi_generic_state** %0, %union.acpi_generic_state* %1) #0 {
  %3 = alloca %union.acpi_generic_state**, align 8
  %4 = alloca %union.acpi_generic_state*, align 8
  store %union.acpi_generic_state** %0, %union.acpi_generic_state*** %3, align 8
  store %union.acpi_generic_state* %1, %union.acpi_generic_state** %4, align 8
  %5 = load i32, i32* @ut_push_generic_state, align 4
  %6 = call i32 @ACPI_FUNCTION_TRACE(i32 %5)
  %7 = load %union.acpi_generic_state**, %union.acpi_generic_state*** %3, align 8
  %8 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %9 = load %union.acpi_generic_state*, %union.acpi_generic_state** %4, align 8
  %10 = bitcast %union.acpi_generic_state* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %union.acpi_generic_state* %8, %union.acpi_generic_state** %11, align 8
  %12 = load %union.acpi_generic_state*, %union.acpi_generic_state** %4, align 8
  %13 = load %union.acpi_generic_state**, %union.acpi_generic_state*** %3, align 8
  store %union.acpi_generic_state* %12, %union.acpi_generic_state** %13, align 8
  %14 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
