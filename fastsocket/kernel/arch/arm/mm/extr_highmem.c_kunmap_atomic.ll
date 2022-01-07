; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_highmem.c_kunmap_atomic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_highmem.c_kunmap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@KM_TYPE_NR = common dso_local global i32 0, align 4
@FIXADDR_START = common dso_local global i64 0, align 8
@LAST_PKMAP = common dso_local global i32 0, align 4
@pkmap_page_table = common dso_local global i32* null, align 8
@FIX_KMAP_BEGIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kunmap_atomic(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = load i64, i64* @PAGE_MASK, align 8
  %10 = and i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @KM_TYPE_NR, align 4
  %13 = call i32 (...) @smp_processor_id()
  %14 = mul nsw i32 %12, %13
  %15 = add i32 %11, %14
  store i32 %15, i32* %6, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = load i64, i64* @FIXADDR_START, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = icmp uge i8* %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @__cpuc_flush_dcache_page(i8* %22)
  %24 = load i32, i32* %6, align 4
  br label %43

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @PKMAP_ADDR(i32 0)
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* @LAST_PKMAP, align 4
  %32 = call i64 @PKMAP_ADDR(i32 %31)
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32*, i32** @pkmap_page_table, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @PKMAP_NR(i64 %36)
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pte_page(i32 %39)
  %41 = call i32 @kunmap_high(i32 %40)
  br label %42

42:                                               ; preds = %34, %29, %25
  br label %43

43:                                               ; preds = %42, %20
  %44 = call i32 (...) @pagefault_enable()
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @__cpuc_flush_dcache_page(i8*) #1

declare dso_local i64 @PKMAP_ADDR(i32) #1

declare dso_local i32 @kunmap_high(i32) #1

declare dso_local i32 @pte_page(i32) #1

declare dso_local i64 @PKMAP_NR(i64) #1

declare dso_local i32 @pagefault_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
