; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mm/extr_tlb.c___flush_tlb_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mm/extr_tlb.c___flush_tlb_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NO_CONTEXT = common dso_local global i64 0, align 8
@NUM_TLB_ENTRIES = common dso_local global i32 0, align 4
@RW_MM_TLB_HI = common dso_local global i32 0, align 4
@rw_mm_tlb_hi = common dso_local global i32 0, align 4
@pid = common dso_local global i32 0, align 4
@INVALID_PAGEID = common dso_local global i32 0, align 4
@vpn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__flush_tlb_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @NO_CONTEXT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %66

17:                                               ; preds = %1
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  store i32 1, i32* %4, align 4
  br label %20

20:                                               ; preds = %60, %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp sle i32 %21, 2
  br i1 %22, label %23, label %63

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @SUPP_BANK_SEL(i32 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %56, %23
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @NUM_TLB_ENTRIES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @UPDATE_TLB_SEL_IDX(i32 %31)
  %33 = load i32, i32* @RW_MM_TLB_HI, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @SUPP_REG_RD(i32 %33, i64 %34)
  %36 = load i64, i64* %7, align 8
  %37 = and i64 %36, 255
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @rw_mm_tlb_hi, align 4
  %43 = load i32, i32* @pid, align 4
  %44 = load i32, i32* @INVALID_PAGEID, align 4
  %45 = call i64 @REG_FIELD(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @rw_mm_tlb_hi, align 4
  %48 = load i32, i32* @vpn, align 4
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 15
  %51 = call i64 @REG_FIELD(i32 %46, i32 %47, i32 %48, i32 %50)
  %52 = or i64 %45, %51
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @UPDATE_TLB_HILO(i64 %53, i32 0)
  br label %55

55:                                               ; preds = %40, %30
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %26

59:                                               ; preds = %26
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %20

63:                                               ; preds = %20
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @local_irq_restore(i64 %64)
  br label %66

66:                                               ; preds = %63, %16
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @SUPP_BANK_SEL(i32) #1

declare dso_local i32 @UPDATE_TLB_SEL_IDX(i32) #1

declare dso_local i32 @SUPP_REG_RD(i32, i64) #1

declare dso_local i64 @REG_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @UPDATE_TLB_HILO(i64, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
