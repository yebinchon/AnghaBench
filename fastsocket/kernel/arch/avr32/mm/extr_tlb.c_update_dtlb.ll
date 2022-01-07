; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_tlb.c_update_dtlb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_tlb.c_update_dtlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLBEHI = common dso_local global i32 0, align 4
@ASID = common dso_local global i32 0, align 4
@MMU_VPN_MASK = common dso_local global i64 0, align 8
@TLBEHI_V = common dso_local global i32 0, align 4
@MMUCR = common dso_local global i32 0, align 4
@MMUCR_N = common dso_local global i32 0, align 4
@TLBARLO = common dso_local global i32 0, align 4
@DRP = common dso_local global i32 0, align 4
@TLBELO = common dso_local global i32 0, align 4
@_PAGE_FLAGS_HARDWARE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @update_dtlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_dtlb(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @TLBEHI, align 4
  %10 = call i64 @sysreg_read(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* @ASID, align 4
  %12 = load i32, i32* @ASID, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @SYSREG_BFEXT(i32 %12, i64 %13)
  %15 = call i64 @SYSREG_BF(i32 %11, i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @MMU_VPN_MASK, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* %5, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %5, align 8
  %21 = load i32, i32* @TLBEHI_V, align 4
  %22 = call i64 @SYSREG_BIT(i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %5, align 8
  %25 = load i32, i32* @TLBEHI, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @sysreg_write(i32 %25, i64 %26)
  %28 = call i32 (...) @__builtin_tlbs()
  %29 = load i32, i32* @MMUCR, align 4
  %30 = call i64 @sysreg_read(i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @MMUCR_N, align 4
  %33 = call i64 @SYSREG_BIT(i32 %32)
  %34 = and i64 %31, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %2
  %37 = load i32, i32* @TLBARLO, align 4
  %38 = call i64 @sysreg_read(i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @fls(i64 %39)
  %41 = sub nsw i32 32, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 32
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  %45 = load i32, i32* @TLBARLO, align 4
  %46 = call i32 @sysreg_write(i32 %45, i64 -1)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load i32, i32* @DRP, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @SYSREG_BFINS(i32 %48, i32 %49, i64 %50)
  store i64 %51, i64* %6, align 8
  %52 = load i32, i32* @MMUCR, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @sysreg_write(i32 %52, i64 %53)
  br label %55

55:                                               ; preds = %47, %2
  %56 = load i32, i32* @TLBELO, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @pte_val(i32 %57)
  %59 = load i64, i64* @_PAGE_FLAGS_HARDWARE_MASK, align 8
  %60 = and i64 %58, %59
  %61 = call i32 @sysreg_write(i32 %56, i64 %60)
  %62 = call i32 (...) @__builtin_tlbw()
  ret void
}

declare dso_local i64 @sysreg_read(i32) #1

declare dso_local i64 @SYSREG_BF(i32, i32) #1

declare dso_local i32 @SYSREG_BFEXT(i32, i64) #1

declare dso_local i64 @SYSREG_BIT(i32) #1

declare dso_local i32 @sysreg_write(i32, i64) #1

declare dso_local i32 @__builtin_tlbs(...) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i64 @SYSREG_BFINS(i32, i32, i64) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @__builtin_tlbw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
