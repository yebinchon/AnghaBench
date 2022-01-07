; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/score/mm/extr_tlb-score.c_local_flush_tlb_kernel_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/score/mm/extr_tlb-score.c_local_flush_tlb_kernel_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@TLBSIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@KSEG1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_kernel_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 %11, %12
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = add i64 %13, %16
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @TLBSIZE, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %2
  %25 = call i32 (...) @pevn_get()
  store i32 %25, i32* %7, align 4
  %26 = load i64, i64* @PAGE_MASK, align 8
  %27 = load i64, i64* %3, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %3, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* @PAGE_MASK, align 8
  %35 = load i64, i64* %4, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %54, %53, %24
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load i64, i64* %3, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @pevn_set(i32 %43)
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %3, align 8
  %49 = call i32 (...) @tlb_probe()
  %50 = call i64 (...) @tlbpt_get()
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %37

54:                                               ; preds = %41
  %55 = call i32 @pectx_set(i32 0)
  %56 = load i32, i32* @KSEG1, align 4
  %57 = call i32 @pevn_set(i32 %56)
  %58 = call i32 (...) @barrier()
  %59 = call i32 (...) @tlb_write_indexed()
  br label %37

60:                                               ; preds = %37
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @pevn_set(i32 %61)
  br label %65

63:                                               ; preds = %2
  %64 = call i32 (...) @local_flush_tlb_all()
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @local_irq_restore(i64 %66)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @pevn_get(...) #1

declare dso_local i32 @pevn_set(i32) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i64 @tlbpt_get(...) #1

declare dso_local i32 @pectx_set(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
