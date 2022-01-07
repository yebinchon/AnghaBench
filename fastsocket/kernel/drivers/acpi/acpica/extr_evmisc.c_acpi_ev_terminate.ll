; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evmisc.c_acpi_ev_terminate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evmisc.c_acpi_ev_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ev_terminate = common dso_local global i32 0, align 4
@acpi_gbl_events_initialized = common dso_local global i64 0, align 8
@ACPI_NUM_FIXED_EVENTS = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not disable fixed event %d\00", align 1
@acpi_hw_disable_gpe_block = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not remove SCI handler\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Could not remove Global Lock handler\00", align 1
@acpi_ev_delete_gpe_handlers = common dso_local global i32 0, align 4
@acpi_gbl_original_mode = common dso_local global i64 0, align 8
@ACPI_SYS_MODE_LEGACY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"AcpiDisable failed\00", align 1
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ev_terminate() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ev_terminate, align 4
  %4 = call i32 @ACPI_FUNCTION_TRACE(i32 %3)
  %5 = load i64, i64* @acpi_gbl_events_initialized, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %46

7:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %8

8:                                                ; preds = %24, %7
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i64, i64* %1, align 8
  %14 = call i32 @acpi_disable_event(i64 %13, i32 0)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @ACPI_FAILURE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i32, i32* @AE_INFO, align 4
  %20 = load i64, i64* %1, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @ACPI_ERROR(i32 %21)
  br label %23

23:                                               ; preds = %18, %12
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %1, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %1, align 8
  br label %8

27:                                               ; preds = %8
  %28 = load i32, i32* @acpi_hw_disable_gpe_block, align 4
  %29 = call i32 @acpi_ev_walk_gpe_list(i32 %28, i32* null)
  store i32 %29, i32* %2, align 4
  %30 = call i32 (...) @acpi_ev_remove_sci_handler()
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i64 @ACPI_FAILURE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @AE_INFO, align 4
  %36 = call i32 @ACPI_ERROR(i32 ptrtoint ([29 x i8]* @.str.1 to i32))
  br label %37

37:                                               ; preds = %34, %27
  %38 = call i32 (...) @acpi_ev_remove_global_lock_handler()
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i64 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @AE_INFO, align 4
  %44 = call i32 @ACPI_ERROR(i32 ptrtoint ([37 x i8]* @.str.2 to i32))
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %0
  %47 = load i32, i32* @acpi_ev_delete_gpe_handlers, align 4
  %48 = call i32 @acpi_ev_walk_gpe_list(i32 %47, i32* null)
  store i32 %48, i32* %2, align 4
  %49 = load i64, i64* @acpi_gbl_original_mode, align 8
  %50 = load i64, i64* @ACPI_SYS_MODE_LEGACY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = call i32 (...) @acpi_disable()
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = call i64 @ACPI_FAILURE(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @AE_INFO, align 4
  %59 = call i32 @ACPI_WARNING(i32 ptrtoint ([19 x i8]* @.str.3 to i32))
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %60, %46
  %62 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_disable_event(i64, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ev_walk_gpe_list(i32, i32*) #1

declare dso_local i32 @acpi_ev_remove_sci_handler(...) #1

declare dso_local i32 @acpi_ev_remove_global_lock_handler(...) #1

declare dso_local i32 @acpi_disable(...) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
