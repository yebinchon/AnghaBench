; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_init.c_kunmap_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_init.c_kunmap_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kunmap_coherent() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @ENTER_CRITICAL(i64 %4)
  %6 = call i64 (...) @read_c0_entryhi()
  store i64 %6, i64* %3, align 8
  %7 = call i32 (...) @read_c0_wired()
  %8 = sub i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @write_c0_wired(i32 %9)
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @write_c0_index(i32 %11)
  %13 = load i32, i32* %1, align 4
  %14 = call i64 @UNIQUE_ENTRYHI(i32 %13)
  %15 = call i32 @write_c0_entryhi(i64 %14)
  %16 = call i32 @write_c0_entrylo0(i32 0)
  %17 = call i32 @write_c0_entrylo1(i32 0)
  %18 = call i32 (...) @mtc0_tlbw_hazard()
  %19 = call i32 (...) @tlb_write_indexed()
  %20 = call i32 (...) @tlbw_use_hazard()
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @write_c0_entryhi(i64 %21)
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @EXIT_CRITICAL(i64 %23)
  %25 = call i32 (...) @dec_preempt_count()
  %26 = call i32 (...) @preempt_check_resched()
  ret void
}

declare dso_local i32 @ENTER_CRITICAL(i64) #1

declare dso_local i64 @read_c0_entryhi(...) #1

declare dso_local i32 @read_c0_wired(...) #1

declare dso_local i32 @write_c0_wired(i32) #1

declare dso_local i32 @write_c0_index(i32) #1

declare dso_local i32 @write_c0_entryhi(i64) #1

declare dso_local i64 @UNIQUE_ENTRYHI(i32) #1

declare dso_local i32 @write_c0_entrylo0(i32) #1

declare dso_local i32 @write_c0_entrylo1(i32) #1

declare dso_local i32 @mtc0_tlbw_hazard(...) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @tlbw_use_hazard(...) #1

declare dso_local i32 @EXIT_CRITICAL(i64) #1

declare dso_local i32 @dec_preempt_count(...) #1

declare dso_local i32 @preempt_check_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
