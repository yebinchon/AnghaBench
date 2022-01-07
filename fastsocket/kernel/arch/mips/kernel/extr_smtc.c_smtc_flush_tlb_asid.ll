; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_smtc.c_smtc_flush_tlb_asid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_smtc.c_smtc_flush_tlb_asid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ASID_MASK = common dso_local global i64 0, align 8
@CKSEG0 = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PARKED_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smtc_flush_tlb_asid(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = call i32 (...) @read_c0_wired()
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @write_c0_index(i32 %11)
  %13 = call i32 (...) @ehb()
  %14 = call i32 (...) @tlb_read()
  %15 = call i32 (...) @ehb()
  %16 = call i64 (...) @read_c0_entryhi()
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @ASID_MASK, align 8
  %19 = and i64 %17, %18
  %20 = load i64, i64* %2, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %10
  %23 = load i64, i64* @CKSEG0, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = add nsw i32 %25, 1
  %27 = shl i32 %24, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %23, %28
  %30 = call i32 @write_c0_entryhi(i64 %29)
  %31 = call i32 @write_c0_entrylo0(i32 0)
  %32 = call i32 @write_c0_entrylo1(i32 0)
  %33 = call i32 (...) @mtc0_tlbw_hazard()
  %34 = call i32 (...) @tlb_write_indexed()
  br label %35

35:                                               ; preds = %22, %10
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %6

38:                                               ; preds = %6
  %39 = load i32, i32* @PARKED_INDEX, align 4
  %40 = call i32 @write_c0_index(i32 %39)
  %41 = call i32 (...) @tlbw_use_hazard()
  ret void
}

declare dso_local i32 @read_c0_wired(...) #1

declare dso_local i32 @write_c0_index(i32) #1

declare dso_local i32 @ehb(...) #1

declare dso_local i32 @tlb_read(...) #1

declare dso_local i64 @read_c0_entryhi(...) #1

declare dso_local i32 @write_c0_entryhi(i64) #1

declare dso_local i32 @write_c0_entrylo0(i32) #1

declare dso_local i32 @write_c0_entrylo1(i32) #1

declare dso_local i32 @mtc0_tlbw_hazard(...) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @tlbw_use_hazard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
