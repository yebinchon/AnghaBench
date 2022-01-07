; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pat.c_phys_mem_access_prot_allowed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pat.c_phys_mem_access_prot_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@_PAGE_CACHE_WB = common dso_local global i64 0, align 8
@O_SYNC = common dso_local global i32 0, align 4
@_PAGE_CACHE_UC_MINUS = common dso_local global i64 0, align 8
@_PAGE_CACHE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@X86_FEATURE_CENTAUR_MCR = common dso_local global i32 0, align 4
@X86_FEATURE_CYRIX_ARR = common dso_local global i32 0, align 4
@X86_FEATURE_K6_MTRR = common dso_local global i32 0, align 4
@X86_FEATURE_MTRR = common dso_local global i32 0, align 4
@_PAGE_CACHE_UC = common dso_local global i64 0, align 8
@high_memory = common dso_local global i32 0, align 4
@pat_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phys_mem_access_prot_allowed(%struct.file* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i64, i64* @_PAGE_CACHE_WB, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @range_is_allowed(i64 %12, i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %37

17:                                               ; preds = %4
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @O_SYNC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, i64* @_PAGE_CACHE_UC_MINUS, align 8
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @pgprot_val(i32 %28)
  %30 = load i64, i64* @_PAGE_CACHE_MASK, align 8
  %31 = xor i64 %30, -1
  %32 = and i64 %29, %31
  %33 = load i64, i64* %10, align 8
  %34 = or i64 %32, %33
  %35 = call i32 @__pgprot(i64 %34)
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %26, %16
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @range_is_allowed(i64, i64) #1

declare dso_local i32 @__pgprot(i64) #1

declare dso_local i64 @pgprot_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
