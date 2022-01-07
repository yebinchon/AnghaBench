; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evxfevnt.c_acpi_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evxfevnt.c_acpi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_OK = common dso_local global i32 0, align 4
@AE_NO_ACPI_TABLES = common dso_local global i32 0, align 4
@ACPI_SYS_MODE_ACPI = common dso_local global i64 0, align 8
@ACPI_DB_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"System is already in ACPI mode\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not transition to ACPI mode\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Transition to ACPI mode successful\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @AE_OK, align 4
  store i32 %3, i32* %2, align 4
  %4 = call i32 @ACPI_FUNCTION_TRACE(i32 (...)* bitcast (i32 ()* @acpi_enable to i32 (...)*))
  %5 = call i32 (...) @acpi_tb_tables_loaded()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @AE_NO_ACPI_TABLES, align 4
  %9 = call i32 @return_ACPI_STATUS(i32 %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i64 (...) @acpi_hw_get_mode()
  %12 = load i64, i64* @ACPI_SYS_MODE_ACPI, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @ACPI_DB_INIT, align 4
  %16 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([32 x i8]* @.str to i32))
  br label %31

17:                                               ; preds = %10
  %18 = load i64, i64* @ACPI_SYS_MODE_ACPI, align 8
  %19 = call i32 @acpi_hw_set_mode(i64 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32, i32* @AE_INFO, align 4
  %25 = call i32 @ACPI_ERROR(i32 ptrtoint ([34 x i8]* @.str.1 to i32))
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @return_ACPI_STATUS(i32 %26)
  br label %28

28:                                               ; preds = %23, %17
  %29 = load i32, i32* @ACPI_DB_INIT, align 4
  %30 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([36 x i8]* @.str.2 to i32))
  br label %31

31:                                               ; preds = %28, %14
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @return_ACPI_STATUS(i32 %32)
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (...)*) #1

declare dso_local i32 @acpi_tb_tables_loaded(...) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @acpi_hw_get_mode(...) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_hw_set_mode(i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
