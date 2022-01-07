; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_unlink_mutex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_unlink_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_8__*, %struct.acpi_thread_state* }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.acpi_thread_state = type { %struct.TYPE_9__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ex_unlink_mutex(%union.acpi_operand_object* %0) #0 {
  %2 = alloca %union.acpi_operand_object*, align 8
  %3 = alloca %struct.acpi_thread_state*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %2, align 8
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %5 = bitcast %union.acpi_operand_object* %4 to %struct.TYPE_10__*
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  %7 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %6, align 8
  store %struct.acpi_thread_state* %7, %struct.acpi_thread_state** %3, align 8
  %8 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %3, align 8
  %9 = icmp ne %struct.acpi_thread_state* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %62

11:                                               ; preds = %1
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %13 = bitcast %union.acpi_operand_object* %12 to %struct.TYPE_10__*
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.TYPE_10__*
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %23 = bitcast %union.acpi_operand_object* %22 to %struct.TYPE_10__*
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %27, align 8
  br label %28

28:                                               ; preds = %17, %11
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %30 = bitcast %union.acpi_operand_object* %29 to %struct.TYPE_10__*
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_10__*
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %40 = bitcast %union.acpi_operand_object* %39 to %struct.TYPE_10__*
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %44, align 8
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %46 = bitcast %union.acpi_operand_object* %45 to %struct.TYPE_10__*
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %50 = bitcast %union.acpi_operand_object* %49 to %struct.TYPE_10__*
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %48, i32* %54, align 8
  br label %62

55:                                               ; preds = %28
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %57 = bitcast %union.acpi_operand_object* %56 to %struct.TYPE_10__*
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %3, align 8
  %61 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %60, i32 0, i32 0
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %61, align 8
  br label %62

62:                                               ; preds = %10, %55, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
