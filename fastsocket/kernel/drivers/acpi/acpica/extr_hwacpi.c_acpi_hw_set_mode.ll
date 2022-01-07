; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwacpi.c_acpi_hw_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwacpi.c_acpi_hw_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@hw_set_mode = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No SMI_CMD in FADT, mode transition failed\00", align 1
@AE_NO_HARDWARE_RESPONSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"No ACPI mode transition supported in this system (enable/disable both zero)\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Attempting to enable ACPI mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Attempting to enable Legacy (non-ACPI) mode\0A\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Could not write ACPI mode change\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Mode %X successfully enabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Hardware did not change modes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_set_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @hw_set_mode, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 1), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @AE_INFO, align 4
  %12 = call i32 @ACPI_ERROR(i32 ptrtoint ([43 x i8]* @.str to i32))
  %13 = load i32, i32* @AE_NO_HARDWARE_RESPONSE, align 4
  %14 = call i32 @return_ACPI_STATUS(i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 2), align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @AE_INFO, align 4
  %23 = call i32 @ACPI_ERROR(i32 ptrtoint ([76 x i8]* @.str.1 to i32))
  %24 = load i32, i32* @AE_OK, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  br label %26

26:                                               ; preds = %21, %18, %15
  %27 = load i32, i32* %3, align 4
  switch i32 %27, label %40 [
    i32 129, label %28
    i32 128, label %34
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 1), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 2), align 4
  %31 = call i32 @acpi_hw_write_port(i32 %29, i32 %30, i32 8)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @ACPI_DB_INFO, align 4
  %33 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([32 x i8]* @.str.2 to i32))
  br label %43

34:                                               ; preds = %26
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 1), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %37 = call i32 @acpi_hw_write_port(i32 %35, i32 %36, i32 8)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @ACPI_DB_INFO, align 4
  %39 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([45 x i8]* @.str.3 to i32))
  br label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %42 = call i32 @return_ACPI_STATUS(i32 %41)
  br label %43

43:                                               ; preds = %40, %34, %28
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @ACPI_FAILURE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* @AE_INFO, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([33 x i8]* @.str.4 to i32))
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @return_ACPI_STATUS(i32 %51)
  br label %53

53:                                               ; preds = %47, %43
  store i32 3000, i32* %5, align 4
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = call i32 (...) @acpi_hw_get_mode()
  %59 = load i32, i32* %3, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* @ACPI_DB_INFO, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @ACPI_DEBUG_PRINT(i32 %63)
  %65 = load i32, i32* @AE_OK, align 4
  %66 = call i32 @return_ACPI_STATUS(i32 %65)
  br label %67

67:                                               ; preds = %61, %57
  %68 = call i32 @acpi_os_stall(i32 1000)
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %5, align 4
  br label %54

71:                                               ; preds = %54
  %72 = load i32, i32* @AE_INFO, align 4
  %73 = call i32 @ACPI_ERROR(i32 ptrtoint ([30 x i8]* @.str.6 to i32))
  %74 = load i32, i32* @AE_NO_HARDWARE_RESPONSE, align 4
  %75 = call i32 @return_ACPI_STATUS(i32 %74)
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_hw_write_port(i32, i32, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @acpi_hw_get_mode(...) #1

declare dso_local i32 @acpi_os_stall(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
