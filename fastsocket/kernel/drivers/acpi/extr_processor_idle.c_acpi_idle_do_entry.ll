; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_idle_do_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_idle_do_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.acpi_processor_cx = type { i64, i32 }

@ACPI_CSTATE_FFH = common dso_local global i64 0, align 8
@ACPI_CSTATE_HALT = common dso_local global i64 0, align 8
@acpi_gbl_FADT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_processor_cx*)* @acpi_idle_do_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_idle_do_entry(%struct.acpi_processor_cx* %0) #0 {
  %2 = alloca %struct.acpi_processor_cx*, align 8
  %3 = alloca i32, align 4
  store %struct.acpi_processor_cx* %0, %struct.acpi_processor_cx** %2, align 8
  %4 = call i32 (...) @stop_critical_timings()
  %5 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ACPI_CSTATE_FFH, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %2, align 8
  %12 = call i32 @acpi_processor_ffh_cstate_enter(%struct.acpi_processor_cx* %11)
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %2, align 8
  %15 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ACPI_CSTATE_HALT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 (...) @acpi_safe_halt()
  br label %28

21:                                               ; preds = %13
  %22 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %2, align 8
  %23 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @inb(i32 %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_FADT, i32 0, i32 0, i32 0), align 4
  %27 = call i32 @inl(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %19
  br label %29

29:                                               ; preds = %28, %10
  %30 = call i32 (...) @start_critical_timings()
  ret void
}

declare dso_local i32 @stop_critical_timings(...) #1

declare dso_local i32 @acpi_processor_ffh_cstate_enter(%struct.acpi_processor_cx*) #1

declare dso_local i32 @acpi_safe_halt(...) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @start_critical_timings(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
