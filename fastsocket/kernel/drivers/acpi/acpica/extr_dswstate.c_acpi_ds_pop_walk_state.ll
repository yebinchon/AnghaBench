; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_pop_walk_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_pop_walk_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %struct.acpi_walk_state* }
%struct.acpi_thread_state = type { %struct.acpi_walk_state* }

@ds_pop_walk_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_walk_state* @acpi_ds_pop_walk_state(%struct.acpi_thread_state* %0) #0 {
  %2 = alloca %struct.acpi_walk_state*, align 8
  %3 = alloca %struct.acpi_thread_state*, align 8
  %4 = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_thread_state* %0, %struct.acpi_thread_state** %3, align 8
  %5 = load i32, i32* @ds_pop_walk_state, align 4
  %6 = call i32 @ACPI_FUNCTION_TRACE(i32 %5)
  %7 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %7, i32 0, i32 0
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  store %struct.acpi_walk_state* %9, %struct.acpi_walk_state** %4, align 8
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %11 = icmp ne %struct.acpi_walk_state* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 0
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %14, align 8
  %16 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %16, i32 0, i32 0
  store %struct.acpi_walk_state* %15, %struct.acpi_walk_state** %17, align 8
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %20 = call i32 @return_PTR(%struct.acpi_walk_state* %19)
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  ret %struct.acpi_walk_state* %21
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_PTR(%struct.acpi_walk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
