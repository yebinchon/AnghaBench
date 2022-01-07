; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmisc.c_acpi_ut_dword_byte_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmisc.c_acpi_ut_dword_byte_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [4 x i32] }
%union.anon.0 = type { [4 x i32] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_dword_byte_swap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.anon, align 4
  %4 = alloca %union.anon.0, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %6 = load i32, i32* %2, align 4
  %7 = bitcast %union.anon.0* %4 to i32*
  store i32 %6, i32* %7, align 4
  %8 = bitcast %union.anon.0* %4 to [4 x i32]*
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.anon* %3 to [4 x i32]*
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %10, i32* %12, align 4
  %13 = bitcast %union.anon.0* %4 to [4 x i32]*
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = bitcast %union.anon* %3 to [4 x i32]*
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  store i32 %15, i32* %17, align 4
  %18 = bitcast %union.anon.0* %4 to [4 x i32]*
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = bitcast %union.anon* %3 to [4 x i32]*
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 %20, i32* %22, align 4
  %23 = bitcast %union.anon.0* %4 to [4 x i32]*
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = bitcast %union.anon* %3 to [4 x i32]*
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 3
  store i32 %25, i32* %27, align 4
  %28 = bitcast %union.anon* %3 to i32*
  %29 = load i32, i32* %28, align 4
  ret i32 %29
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
