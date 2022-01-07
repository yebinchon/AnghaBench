; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_tlb.c_flush_tlb_kernel_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_tlb.c_flush_tlb_kernel_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MMU_DTLB_ENTRIES = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_kernel_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = sub i64 %8, %9
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = add i64 %10, %13
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = lshr i64 %14, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MMU_DTLB_ENTRIES, align 4
  %20 = sdiv i32 %19, 4
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @flush_tlb_all()
  br label %54

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @local_irq_save(i64 %25)
  %27 = call i64 (...) @get_asid()
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* @PAGE_MASK, align 8
  %29 = load i64, i64* %3, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %3, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* @PAGE_MASK, align 8
  %37 = load i64, i64* %4, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %43, %24
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @__flush_tlb_page(i64 %44, i64 %45)
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %3, align 8
  br label %39

51:                                               ; preds = %39
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @local_irq_restore(i64 %52)
  br label %54

54:                                               ; preds = %51, %22
  ret void
}

declare dso_local i32 @flush_tlb_all(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @get_asid(...) #1

declare dso_local i32 @__flush_tlb_page(i64, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
