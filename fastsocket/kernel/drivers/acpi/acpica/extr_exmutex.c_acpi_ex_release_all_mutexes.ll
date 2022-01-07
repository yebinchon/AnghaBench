; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_release_all_mutexes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_release_all_mutexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32, i64, %union.acpi_operand_object*, i32* }
%struct.acpi_thread_state = type { i32, %union.acpi_operand_object* }

@acpi_gbl_global_lock_mutex = common dso_local global %union.acpi_operand_object* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ex_release_all_mutexes(%struct.acpi_thread_state* %0) #0 {
  %2 = alloca %struct.acpi_thread_state*, align 8
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_thread_state* %0, %struct.acpi_thread_state** %2, align 8
  %5 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %5, i32 0, i32 1
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object* %7, %union.acpi_operand_object** %3, align 8
  %8 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  br label %9

9:                                                ; preds = %38, %1
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %11 = icmp ne %union.acpi_operand_object* %10, null
  br i1 %11, label %12, label %51

12:                                               ; preds = %9
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  store %union.acpi_operand_object* %13, %union.acpi_operand_object** %4, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %15 = bitcast %union.acpi_operand_object* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %3, align 8
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  store i32* null, i32** %20, align 8
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %23, align 8
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8
  %29 = icmp eq %union.acpi_operand_object* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %12
  %31 = call i32 (...) @acpi_ev_release_global_lock()
  br label %38

32:                                               ; preds = %12
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %34 = bitcast %union.acpi_operand_object* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @acpi_os_release_mutex(i32 %36)
  br label %38

38:                                               ; preds = %32, %30
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %40 = bitcast %union.acpi_operand_object* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %43 = bitcast %union.acpi_operand_object* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %46 = bitcast %union.acpi_operand_object* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %2, align 8
  %50 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %9

51:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @acpi_ev_release_global_lock(...) #1

declare dso_local i32 @acpi_os_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
