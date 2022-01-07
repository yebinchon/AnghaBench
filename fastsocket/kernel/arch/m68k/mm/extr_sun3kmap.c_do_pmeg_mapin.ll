; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mm/extr_sun3kmap.c_do_pmeg_mapin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mm/extr_sun3kmap.c_do_pmeg_mapin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUN3_PMEG_MASK = common dso_local global i64 0, align 8
@SUN3_INVALID_PMEG = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i32)* @do_pmeg_mapin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pmeg_mapin(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @SUN3_PMEG_MASK, align 8
  %11 = xor i64 %10, -1
  %12 = and i64 %9, %11
  %13 = call i64 @sun3_get_segmap(i64 %12)
  %14 = load i64, i64* @SUN3_INVALID_PMEG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = call i32 (...) @sun3_get_context()
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @mmu_emu_map_pmeg(i32 %17, i64 %18)
  br label %20

20:                                               ; preds = %16, %4
  br label %21

21:                                               ; preds = %24, %20
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @do_page_mapin(i64 %25, i64 %26, i64 %27)
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %8, align 4
  br label %21

37:                                               ; preds = %21
  ret void
}

declare dso_local i64 @sun3_get_segmap(i64) #1

declare dso_local i32 @mmu_emu_map_pmeg(i32, i64) #1

declare dso_local i32 @sun3_get_context(...) #1

declare dso_local i32 @do_page_mapin(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
