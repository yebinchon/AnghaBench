; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mm/extr_tlb.c___flush_tlb_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mm/extr_tlb.c___flush_tlb_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_TLB_ENTRIES = common dso_local global i32 0, align 4
@rw_mm_tlb_sel = common dso_local global i32 0, align 4
@idx = common dso_local global i32 0, align 4
@rw_mm_tlb_hi = common dso_local global i32 0, align 4
@pid = common dso_local global i32 0, align 4
@INVALID_PAGEID = common dso_local global i32 0, align 4
@vpn = common dso_local global i32 0, align 4
@RW_MM_TLB_SEL = common dso_local global i32 0, align 4
@RW_MM_TLB_HI = common dso_local global i32 0, align 4
@RW_MM_TLB_LO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__flush_tlb_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  store i32 1, i32* %2, align 4
  br label %8

8:                                                ; preds = %48, %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp sle i32 %9, 2
  br i1 %10, label %11, label %51

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @SUPP_BANK_SEL(i32 %12)
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %44, %11
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @NUM_TLB_ENTRIES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @rw_mm_tlb_sel, align 4
  %21 = load i32, i32* @idx, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i64 @REG_FIELD(i32 %19, i32 %20, i32 %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @rw_mm_tlb_hi, align 4
  %26 = load i32, i32* @pid, align 4
  %27 = load i32, i32* @INVALID_PAGEID, align 4
  %28 = call i64 @REG_FIELD(i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @rw_mm_tlb_hi, align 4
  %31 = load i32, i32* @vpn, align 4
  %32 = load i32, i32* %1, align 4
  %33 = and i32 %32, 15
  %34 = call i64 @REG_FIELD(i32 %29, i32 %30, i32 %31, i32 %33)
  %35 = or i64 %28, %34
  store i64 %35, i64* %4, align 8
  %36 = load i32, i32* @RW_MM_TLB_SEL, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @SUPP_REG_WR(i32 %36, i64 %37)
  %39 = load i32, i32* @RW_MM_TLB_HI, align 4
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @SUPP_REG_WR(i32 %39, i64 %40)
  %42 = load i32, i32* @RW_MM_TLB_LO, align 4
  %43 = call i32 @SUPP_REG_WR(i32 %42, i64 0)
  br label %44

44:                                               ; preds = %18
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %14

47:                                               ; preds = %14
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %8

51:                                               ; preds = %8
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @local_irq_restore(i64 %52)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @SUPP_BANK_SEL(i32) #1

declare dso_local i64 @REG_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @SUPP_REG_WR(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
