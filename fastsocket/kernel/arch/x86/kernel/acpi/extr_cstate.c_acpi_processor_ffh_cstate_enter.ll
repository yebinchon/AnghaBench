; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/acpi/extr_cstate.c_acpi_processor_ffh_cstate_enter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/acpi/extr_cstate.c_acpi_processor_ffh_cstate_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor_cx = type { i64 }
%struct.cstate_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@cpu_cstate_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_processor_ffh_cstate_enter(%struct.acpi_processor_cx* %0) #0 {
  %2 = alloca %struct.acpi_processor_cx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cstate_entry*, align 8
  store %struct.acpi_processor_cx* %0, %struct.acpi_processor_cx** %2, align 8
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @cpu_cstate_entry, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.cstate_entry* @per_cpu_ptr(i32 %6, i32 %7)
  store %struct.cstate_entry* %8, %struct.cstate_entry** %4, align 8
  %9 = load %struct.cstate_entry*, %struct.cstate_entry** %4, align 8
  %10 = getelementptr inbounds %struct.cstate_entry, %struct.cstate_entry* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %2, align 8
  %13 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cstate_entry*, %struct.cstate_entry** %4, align 8
  %19 = getelementptr inbounds %struct.cstate_entry, %struct.cstate_entry* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %2, align 8
  %22 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mwait_idle_with_hints(i32 %17, i32 %26)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.cstate_entry* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @mwait_idle_with_hints(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
