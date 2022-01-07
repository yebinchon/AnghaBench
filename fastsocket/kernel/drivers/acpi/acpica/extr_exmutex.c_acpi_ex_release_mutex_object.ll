; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_release_mutex_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_release_mutex_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i32, i32* }

@AE_OK = common dso_local global i32 0, align 4
@ex_release_mutex_object = common dso_local global i32 0, align 4
@AE_NOT_ACQUIRED = common dso_local global i32 0, align 4
@acpi_gbl_global_lock_mutex = common dso_local global %union.acpi_operand_object* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_release_mutex_object(%union.acpi_operand_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  %5 = load i32, i32* @AE_OK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @ex_release_mutex_object, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %9 = bitcast %union.acpi_operand_object* %8 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @AE_NOT_ACQUIRED, align 4
  store i32 %14, i32* %2, align 4
  br label %59

15:                                               ; preds = %1
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %17 = bitcast %union.acpi_operand_object* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load i32, i32* @AE_OK, align 4
  %28 = call i32 @return_ACPI_STATUS(i32 %27)
  br label %29

29:                                               ; preds = %26, %15
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %31 = bitcast %union.acpi_operand_object* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %37 = call i32 @acpi_ex_unlink_mutex(%union.acpi_operand_object* %36)
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %39 = bitcast %union.acpi_operand_object* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8
  %44 = icmp eq %union.acpi_operand_object* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (...) @acpi_ev_release_global_lock()
  store i32 %46, i32* %4, align 4
  br label %53

47:                                               ; preds = %41
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %49 = bitcast %union.acpi_operand_object* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @acpi_os_release_mutex(i32 %51)
  br label %53

53:                                               ; preds = %47, %45
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %55 = bitcast %union.acpi_operand_object* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @return_ACPI_STATUS(i32 %57)
  br label %59

59:                                               ; preds = %53, %13
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ex_unlink_mutex(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ev_release_global_lock(...) #1

declare dso_local i32 @acpi_os_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
