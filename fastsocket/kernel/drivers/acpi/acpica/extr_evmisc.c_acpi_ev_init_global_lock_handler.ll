; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evmisc.c_acpi_ev_init_global_lock_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evmisc.c_acpi_ev_init_global_lock_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ev_init_global_lock_handler = common dso_local global i32 0, align 4
@ACPI_EVENT_GLOBAL = common dso_local global i32 0, align 4
@acpi_ev_global_lock_handler = common dso_local global i32 0, align 4
@AE_NO_HARDWARE_RESPONSE = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"No response from Global Lock hardware, disabling lock\00", align 1
@FALSE = common dso_local global i32 0, align 4
@acpi_gbl_global_lock_present = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ev_init_global_lock_handler() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @ev_init_global_lock_handler, align 4
  %4 = call i32 @ACPI_FUNCTION_TRACE(i32 %3)
  %5 = load i32, i32* @ACPI_EVENT_GLOBAL, align 4
  %6 = load i32, i32* @acpi_ev_global_lock_handler, align 4
  %7 = call i64 @acpi_install_fixed_event_handler(i32 %5, i32 %6, i32* null)
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @AE_NO_HARDWARE_RESPONSE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %0
  %12 = load i32, i32* @AE_INFO, align 4
  %13 = call i32 @ACPI_ERROR(i32 ptrtoint ([54 x i8]* @.str to i32))
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* @acpi_gbl_global_lock_present, align 4
  %15 = load i64, i64* @AE_OK, align 8
  %16 = call i32 @return_ACPI_STATUS(i64 %15)
  br label %17

17:                                               ; preds = %11, %0
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* @acpi_gbl_global_lock_present, align 4
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @return_ACPI_STATUS(i64 %19)
  %21 = load i64, i64* %1, align 8
  ret i64 %21
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @acpi_install_fixed_event_handler(i32, i32, i32*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
