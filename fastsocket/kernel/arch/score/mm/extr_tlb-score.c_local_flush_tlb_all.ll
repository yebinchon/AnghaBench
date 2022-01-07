; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/score/mm/extr_tlb-score.c_local_flush_tlb_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/score/mm/extr_tlb-score.c_local_flush_tlb_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASID_MASK = common dso_local global i64 0, align 8
@TLBSIZE = common dso_local global i32 0, align 4
@KSEG1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_all() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* %1, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = call i64 (...) @pevn_get()
  %7 = load i64, i64* @ASID_MASK, align 8
  %8 = and i64 %6, %7
  store i64 %8, i64* %2, align 8
  %9 = call i32 @pectx_set(i32 0)
  %10 = call i32 (...) @tlblock_get()
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %22, %0
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @TLBSIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @tlbpt_set(i32 %16)
  %18 = load i64, i64* @KSEG1, align 8
  %19 = call i32 @pevn_set(i64 %18)
  %20 = call i32 (...) @barrier()
  %21 = call i32 (...) @tlb_write_indexed()
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @pevn_set(i64 %26)
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @local_irq_restore(i64 %28)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @pevn_get(...) #1

declare dso_local i32 @pectx_set(i32) #1

declare dso_local i32 @tlblock_get(...) #1

declare dso_local i32 @tlbpt_set(i32) #1

declare dso_local i32 @pevn_set(i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
