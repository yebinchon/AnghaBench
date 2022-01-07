; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utstate.c_acpi_ut_pop_generic_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utstate.c_acpi_ut_pop_generic_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_generic_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.acpi_generic_state* }

@ut_pop_generic_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %0) #0 {
  %2 = alloca %union.acpi_generic_state*, align 8
  %3 = alloca %union.acpi_generic_state**, align 8
  %4 = alloca %union.acpi_generic_state*, align 8
  store %union.acpi_generic_state** %0, %union.acpi_generic_state*** %3, align 8
  %5 = load i32, i32* @ut_pop_generic_state, align 4
  %6 = call i32 @ACPI_FUNCTION_TRACE(i32 %5)
  %7 = load %union.acpi_generic_state**, %union.acpi_generic_state*** %3, align 8
  %8 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  store %union.acpi_generic_state* %8, %union.acpi_generic_state** %4, align 8
  %9 = load %union.acpi_generic_state*, %union.acpi_generic_state** %4, align 8
  %10 = icmp ne %union.acpi_generic_state* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %union.acpi_generic_state*, %union.acpi_generic_state** %4, align 8
  %13 = bitcast %union.acpi_generic_state* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %union.acpi_generic_state*, %union.acpi_generic_state** %14, align 8
  %16 = load %union.acpi_generic_state**, %union.acpi_generic_state*** %3, align 8
  store %union.acpi_generic_state* %15, %union.acpi_generic_state** %16, align 8
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %union.acpi_generic_state*, %union.acpi_generic_state** %4, align 8
  %19 = call i32 @return_PTR(%union.acpi_generic_state* %18)
  %20 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  ret %union.acpi_generic_state* %20
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_PTR(%union.acpi_generic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
