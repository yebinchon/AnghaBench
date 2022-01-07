; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwvalid.c_acpi_hw_read_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwvalid.c_acpi_hw_read_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_gbl_truncate_io_addresses = common dso_local global i64 0, align 8
@ACPI_UINT16_MAX = common dso_local global i32 0, align 4
@AE_AML_ILLEGAL_ADDRESS = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_hw_read_port(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @acpi_gbl_truncate_io_addresses, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @ACPI_UINT16_MAX, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @acpi_hw_validate_io_request(i32 %18, i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @ACPI_SUCCESS(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @acpi_os_read_port(i32 %25, i32* %26, i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %4, align 8
  br label %70

30:                                               ; preds = %17
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @AE_AML_ILLEGAL_ADDRESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %4, align 8
  br label %70

36:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %65, %36
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @acpi_hw_validate_io_request(i32 %43, i32 8)
  %45 = load i64, i64* @AE_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @acpi_os_read_port(i32 %48, i32* %9, i32 8)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @ACPI_FAILURE(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %4, align 8
  br label %70

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %56, %57
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %42
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 8
  store i32 %67, i32* %10, align 4
  br label %38

68:                                               ; preds = %38
  %69 = load i64, i64* @AE_OK, align 8
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %68, %53, %34, %24
  %71 = load i64, i64* %4, align 8
  ret i64 %71
}

declare dso_local i64 @acpi_hw_validate_io_request(i32, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

declare dso_local i64 @acpi_os_read_port(i32, i32*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
