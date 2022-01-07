; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_tlb.c___flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_tlb.c___flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLBEHI = common dso_local global i32 0, align 4
@MMUCR = common dso_local global i32 0, align 4
@MMUCR_N = common dso_local global i32 0, align 4
@DRP = common dso_local global i32 0, align 4
@TLBARLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @__flush_tlb_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__flush_tlb_page(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = or i64 %9, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @TLBEHI, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @sysreg_write(i32 %13, i32 %14)
  %16 = call i32 (...) @__builtin_tlbs()
  %17 = load i32, i32* @MMUCR, align 4
  %18 = call i32 @sysreg_read(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MMUCR_N, align 4
  %21 = call i32 @SYSREG_BIT(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @TLBEHI, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @sysreg_write(i32 %25, i32 %26)
  %28 = load i32, i32* @DRP, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @SYSREG_BFEXT(i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @TLBARLO, align 4
  %32 = call i32 @sysreg_read(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = lshr i64 2147483648, %34
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = or i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @TLBARLO, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @sysreg_write(i32 %40, i32 %41)
  %43 = call i32 (...) @__builtin_tlbw()
  br label %44

44:                                               ; preds = %24, %2
  ret void
}

declare dso_local i32 @sysreg_write(i32, i32) #1

declare dso_local i32 @__builtin_tlbs(...) #1

declare dso_local i32 @sysreg_read(i32) #1

declare dso_local i32 @SYSREG_BIT(i32) #1

declare dso_local i32 @SYSREG_BFEXT(i32, i32) #1

declare dso_local i32 @__builtin_tlbw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
