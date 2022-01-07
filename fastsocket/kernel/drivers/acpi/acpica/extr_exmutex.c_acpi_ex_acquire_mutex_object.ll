; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_acquire_mutex_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_acquire_mutex_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32*, i64, i32 }

@ex_acquire_mutex_object = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@acpi_gbl_global_lock_mutex = common dso_local global %union.acpi_operand_object* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_acquire_mutex_object(i32 %0, %union.acpi_operand_object* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @ex_acquire_mutex_object, align 4
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %11 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %9, %union.acpi_operand_object* %10)
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %13 = icmp ne %union.acpi_operand_object* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %16 = call i32 @return_ACPI_STATUS(i32 %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %26 = bitcast %union.acpi_operand_object* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @AE_OK, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  br label %32

32:                                               ; preds = %24, %17
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8
  %35 = icmp eq %union.acpi_operand_object* %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @acpi_ev_acquire_global_lock(i32 %37)
  store i32 %38, i32* %8, align 4
  br label %46

39:                                               ; preds = %32
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @acpi_ex_system_wait_mutex(i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @ACPI_FAILURE(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @return_ACPI_STATUS(i32 %51)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i64, i64* %7, align 8
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %56 = bitcast %union.acpi_operand_object* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %59 = bitcast %union.acpi_operand_object* %58 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %62 = bitcast %union.acpi_operand_object* %61 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %65 = bitcast %union.acpi_operand_object* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  %67 = load i32, i32* @AE_OK, align 4
  %68 = call i32 @return_ACPI_STATUS(i32 %67)
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ev_acquire_global_lock(i32) #1

declare dso_local i32 @acpi_ex_system_wait_mutex(i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
