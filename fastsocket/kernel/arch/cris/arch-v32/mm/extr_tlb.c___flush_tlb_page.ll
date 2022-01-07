; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mm/extr_tlb.c___flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mm/extr_tlb.c___flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NO_CONTEXT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@NUM_TLB_ENTRIES = common dso_local global i32 0, align 4
@RW_MM_TLB_HI = common dso_local global i32 0, align 4
@rw_mm_tlb_hi = common dso_local global i32 0, align 4
@pid = common dso_local global i32 0, align 4
@INVALID_PAGEID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @NO_CONTEXT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %74

21:                                               ; preds = %2
  %22 = load i64, i64* @PAGE_MASK, align 8
  %23 = load i64, i64* %4, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @local_irq_save(i64 %25)
  store i32 1, i32* %6, align 4
  br label %27

27:                                               ; preds = %68, %21
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %28, 2
  br i1 %29, label %30, label %71

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @SUPP_BANK_SEL(i32 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %64, %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NUM_TLB_ENTRIES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @UPDATE_TLB_SEL_IDX(i32 %38)
  %40 = load i32, i32* @RW_MM_TLB_HI, align 4
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @SUPP_REG_RD(i32 %40, i64 %41)
  %43 = load i64, i64* %9, align 8
  %44 = and i64 %43, 255
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %37
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @PAGE_MASK, align 8
  %50 = and i64 %48, %49
  %51 = load i64, i64* %4, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @rw_mm_tlb_hi, align 4
  %56 = load i32, i32* @pid, align 4
  %57 = load i32, i32* @INVALID_PAGEID, align 4
  %58 = call i64 @REG_FIELD(i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load i64, i64* %4, align 8
  %60 = or i64 %58, %59
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @UPDATE_TLB_HILO(i64 %61, i32 0)
  br label %63

63:                                               ; preds = %53, %47, %37
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %33

67:                                               ; preds = %33
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %27

71:                                               ; preds = %27
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @local_irq_restore(i64 %72)
  br label %74

74:                                               ; preds = %71, %20
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
