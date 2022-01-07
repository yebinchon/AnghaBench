; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exconvrt.c_acpi_ex_convert_to_ascii.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exconvrt.c_acpi_ex_convert_to_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_MAX8_DECIMAL_DIGITS = common dso_local global i64 0, align 8
@ACPI_MAX32_DECIMAL_DIGITS = common dso_local global i64 0, align 8
@ACPI_MAX64_DECIMAL_DIGITS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@ACPI_ASCII_ZERO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64*, i64)* @acpi_ex_convert_to_ascii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acpi_ex_convert_to_ascii(i32 %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %13, align 8
  %18 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %95 [
    i32 10, label %20
    i32 16, label %69
  ]

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  switch i64 %21, label %27 [
    i64 1, label %22
    i64 4, label %24
    i64 8, label %26
  ]

22:                                               ; preds = %20
  %23 = load i64, i64* @ACPI_MAX8_DECIMAL_DIGITS, align 8
  store i64 %23, i64* %15, align 8
  br label %29

24:                                               ; preds = %20
  %25 = load i64, i64* @ACPI_MAX32_DECIMAL_DIGITS, align 8
  store i64 %25, i64* %15, align 8
  br label %29

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %20, %26
  %28 = load i64, i64* @ACPI_MAX64_DECIMAL_DIGITS, align 8
  store i64 %28, i64* %15, align 8
  br label %29

29:                                               ; preds = %27, %24, %22
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %17, align 8
  store i64 0, i64* %16, align 8
  %31 = load i64, i64* %15, align 8
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %65, %29
  %33 = load i64, i64* %11, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %10, align 4
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %44, %35
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @acpi_ut_short_divide(i32 %42, i32 10, i32* %10, i64* %16)
  br label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %12, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %12, align 8
  br label %37

47:                                               ; preds = %37
  %48 = load i64, i64* %16, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i64, i64* @FALSE, align 8
  store i64 %51, i64* %17, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i64, i64* %17, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @ACPI_ASCII_ZERO, align 8
  %57 = load i64, i64* %16, align 8
  %58 = add i64 %56, %57
  %59 = load i64*, i64** %8, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* %13, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %13, align 8
  br label %64

64:                                               ; preds = %55, %52
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %11, align 8
  br label %32

68:                                               ; preds = %32
  br label %96

69:                                               ; preds = %4
  %70 = load i64, i64* %9, align 8
  %71 = call i64 @ACPI_MUL_2(i64 %70)
  store i64 %71, i64* %14, align 8
  store i64 0, i64* %11, align 8
  %72 = load i64, i64* %14, align 8
  %73 = sub i64 %72, 1
  store i64 %73, i64* %12, align 8
  br label %74

74:                                               ; preds = %89, %69
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %14, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @ACPI_MUL_4(i64 %80)
  %82 = call i32 @acpi_ut_hex_to_ascii_char(i32 %79, i32 %81)
  %83 = sext i32 %82 to i64
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* %13, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 %83, i64* %86, align 8
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %13, align 8
  br label %89

89:                                               ; preds = %78
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %12, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %12, align 8
  br label %74

94:                                               ; preds = %74
  br label %96

95:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %108

96:                                               ; preds = %94, %68
  %97 = load i64, i64* %13, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* @ACPI_ASCII_ZERO, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 0
  store i64 %100, i64* %102, align 8
  store i64 1, i64* %13, align 8
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i64*, i64** %8, align 8
  %105 = load i64, i64* %13, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  store i64 0, i64* %106, align 8
  %107 = load i64, i64* %13, align 8
  store i64 %107, i64* %5, align 8
  br label %108

108:                                              ; preds = %103, %95
  %109 = load i64, i64* %5, align 8
  ret i64 %109
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @acpi_ut_short_divide(i32, i32, i32*, i64*) #1

declare dso_local i64 @ACPI_MUL_2(i64) #1

declare dso_local i32 @acpi_ut_hex_to_ascii_char(i32, i32) #1

declare dso_local i32 @ACPI_MUL_4(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
