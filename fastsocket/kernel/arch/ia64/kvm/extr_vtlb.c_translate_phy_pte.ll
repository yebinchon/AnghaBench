; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_translate_phy_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_translate_phy_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pte_flags = type { i64 }

@_PAGE_PPN_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@GPFN_IO_MASK = common dso_local global i64 0, align 8
@GPFN_PHYS_MMIO = common dso_local global i64 0, align 8
@VTLB_PTE_IO = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@ARCH_PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @translate_phy_pte(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %union.pte_flags, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @itir_ps(i64 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = shl i64 1, %16
  %18 = sub i64 %17, 1
  %19 = xor i64 %18, -1
  store i64 %19, i64* %9, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %20, align 8
  %22 = bitcast %union.pte_flags* %13 to i64*
  store i64 %21, i64* %22, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @_PAGE_PPN_MASK, align 8
  %27 = and i64 %25, %26
  %28 = load i64, i64* %9, align 8
  %29 = and i64 %27, %28
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  %34 = or i64 %29, %33
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @PAGE_SHIFT, align 8
  %37 = lshr i64 %35, %36
  %38 = call i64 @kvm_get_mpt_entry(i64 %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @GPFN_IO_MASK, align 8
  %41 = and i64 %39, %40
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %3
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @GPFN_PHYS_MMIO, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i64, i64* @VTLB_PTE_IO, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %50, align 8
  %52 = or i64 %51, %49
  store i64 %52, i64* %50, align 8
  store i64 -1, i64* %4, align 8
  br label %70

53:                                               ; preds = %44, %3
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @_PAGE_PPN_MASK, align 8
  %56 = and i64 %54, %55
  %57 = load i64, i64* @PAGE_MASK, align 8
  %58 = and i64 %56, %57
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @PAGE_MASK, align 8
  %61 = xor i64 %60, -1
  %62 = and i64 %59, %61
  %63 = or i64 %58, %62
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @ARCH_PAGE_SHIFT, align 8
  %66 = lshr i64 %64, %65
  %67 = bitcast %union.pte_flags* %13 to i64*
  store i64 %66, i64* %67, align 8
  %68 = bitcast %union.pte_flags* %13 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %53, %48
  %71 = load i64, i64* %4, align 8
  ret i64 %71
}

declare dso_local i64 @itir_ps(i64) #1

declare dso_local i64 @kvm_get_mpt_entry(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
