; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_get_bit_register_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_get_bit_register_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_bit_register_info = type { i32 }

@ACPI_BITREG_MAX = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid BitRegister ID: %X\00", align 1
@acpi_gbl_bit_register_info = common dso_local global %struct.acpi_bit_register_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i64 %0) #0 {
  %2 = alloca %struct.acpi_bit_register_info*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @ACPI_BITREG_MAX, align 8
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @AE_INFO, align 4
  %10 = load i64, i64* %3, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @ACPI_ERROR(i32 %11)
  store %struct.acpi_bit_register_info* null, %struct.acpi_bit_register_info** %2, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** @acpi_gbl_bit_register_info, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %14, i64 %15
  store %struct.acpi_bit_register_info* %16, %struct.acpi_bit_register_info** %2, align 8
  br label %17

17:                                               ; preds = %13, %8
  %18 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %2, align 8
  ret %struct.acpi_bit_register_info* %18
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
