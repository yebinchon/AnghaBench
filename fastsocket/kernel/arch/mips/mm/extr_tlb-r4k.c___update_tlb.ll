; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r4k.c___update_tlb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r4k.c___update_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.vm_area_struct = type { i64 }
%struct.TYPE_6__ = type { i32 }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@ASID_MASK = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@HPAGE_SIZE = common dso_local global i32 0, align 4
@PM_DEFAULT_MASK = common dso_local global i32 0, align 4
@PM_HUGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_tlb(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 %2, i32* %14, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %83

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @ENTER_CRITICAL(i64 %24)
  %26 = call i32 (...) @read_c0_entryhi()
  %27 = load i32, i32* @ASID_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* @PAGE_MASK, align 4
  %30 = shl i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %6, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = or i64 %34, %36
  %38 = call i32 @write_c0_entryhi(i64 %37)
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32* @pgd_offset(i64 %41, i64 %42)
  store i32* %43, i32** %8, align 8
  %44 = call i32 (...) @mtc0_tlbw_hazard()
  %45 = call i32 (...) @tlb_probe()
  %46 = call i32 (...) @tlb_probe_hazard()
  %47 = load i32*, i32** %8, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32* @pud_offset(i32* %47, i64 %48)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32* @pmd_offset(i32* %50, i64 %51)
  store i32* %52, i32** %10, align 8
  %53 = call i32 (...) @read_c0_index()
  store i32 %53, i32* %12, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call %struct.TYPE_6__* @pte_offset_map(i32* %54, i64 %55)
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %11, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 1
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pte_val(i32 %60)
  %62 = ashr i32 %61, 6
  %63 = call i32 @write_c0_entrylo0(i32 %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pte_val(i32 %66)
  %68 = ashr i32 %67, 6
  %69 = call i32 @write_c0_entrylo1(i32 %68)
  %70 = call i32 (...) @mtc0_tlbw_hazard()
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %23
  %74 = call i32 (...) @tlb_write_random()
  br label %77

75:                                               ; preds = %23
  %76 = call i32 (...) @tlb_write_indexed()
  br label %77

77:                                               ; preds = %75, %73
  %78 = call i32 (...) @tlbw_use_hazard()
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %80 = call i32 @FLUSH_ITLB_VM(%struct.vm_area_struct* %79)
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @EXIT_CRITICAL(i64 %81)
  br label %83

83:                                               ; preds = %77, %22
  ret void
}

declare dso_local i32 @ENTER_CRITICAL(i64) #1

declare dso_local i32 @read_c0_entryhi(...) #1

declare dso_local i32 @write_c0_entryhi(i64) #1

declare dso_local i32* @pgd_offset(i64, i64) #1

declare dso_local i32 @mtc0_tlbw_hazard(...) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @tlb_probe_hazard(...) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @read_c0_index(...) #1

declare dso_local %struct.TYPE_6__* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @write_c0_entrylo0(i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @write_c0_entrylo1(i32) #1

declare dso_local i32 @tlb_write_random(...) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @tlbw_use_hazard(...) #1

declare dso_local i32 @FLUSH_ITLB_VM(%struct.vm_area_struct*) #1

declare dso_local i32 @EXIT_CRITICAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
