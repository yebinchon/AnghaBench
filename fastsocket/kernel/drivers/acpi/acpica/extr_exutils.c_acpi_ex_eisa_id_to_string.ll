; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exutils.c_acpi_ex_eisa_id_to_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exutils.c_acpi_ex_eisa_id_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Expected EISAID is larger than 32 bits: 0x%8.8X%8.8X, truncating\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ex_eisa_id_to_string(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @AE_INFO, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @ACPI_FORMAT_UINT64(i64 %12)
  %14 = call i32 @ACPI_WARNING(i32 %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i64, i64* %4, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @acpi_ut_dword_byte_swap(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = lshr i64 %20, 26
  %22 = and i64 %21, 31
  %23 = add i64 64, %22
  %24 = trunc i64 %23 to i8
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %24, i8* %26, align 1
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 21
  %29 = and i32 %28, 31
  %30 = add nsw i32 64, %29
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 %31, i8* %33, align 1
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 31
  %37 = add nsw i32 64, %36
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  store i8 %38, i8* %40, align 1
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = call signext i8 @acpi_ut_hex_to_ascii_char(i64 %42, i32 12)
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 3
  store i8 %43, i8* %45, align 1
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = call signext i8 @acpi_ut_hex_to_ascii_char(i64 %47, i32 8)
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  store i8 %48, i8* %50, align 1
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = call signext i8 @acpi_ut_hex_to_ascii_char(i64 %52, i32 4)
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 5
  store i8 %53, i8* %55, align 1
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = call signext i8 @acpi_ut_hex_to_ascii_char(i64 %57, i32 0)
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 6
  store i8 %58, i8* %60, align 1
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 7
  store i8 0, i8* %62, align 1
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local i32 @acpi_ut_dword_byte_swap(i32) #1

declare dso_local signext i8 @acpi_ut_hex_to_ascii_char(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
