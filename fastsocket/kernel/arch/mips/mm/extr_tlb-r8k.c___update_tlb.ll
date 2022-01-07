; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r8k.c___update_tlb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r8k.c___update_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vm_area_struct = type { i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@ASID_MASK = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_tlb(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %56

20:                                               ; preds = %3
  %21 = call i32 (...) @read_c0_entryhi()
  %22 = load i32, i32* @ASID_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @local_irq_save(i64 %24)
  %26 = load i64, i64* @PAGE_MASK, align 8
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @write_c0_vaddr(i64 %29)
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @write_c0_entryhi(i32 %31)
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32* @pgd_offset(i64 %35, i64 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32* @pmd_offset(i32* %38, i64 %39)
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32* @pte_offset_map(i32* %41, i64 %42)
  store i32* %43, i32** %10, align 8
  %44 = call i32 (...) @tlb_probe()
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %10, align 8
  %47 = load i32, i32* %45, align 4
  %48 = call i32 @pte_val(i32 %47)
  %49 = ashr i32 %48, 6
  %50 = call i32 @write_c0_entrylo(i32 %49)
  %51 = call i32 (...) @tlb_write()
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @write_c0_entryhi(i32 %52)
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @local_irq_restore(i64 %54)
  br label %56

56:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @read_c0_entryhi(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @write_c0_vaddr(i64) #1

declare dso_local i32 @write_c0_entryhi(i32) #1

declare dso_local i32* @pgd_offset(i64, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @write_c0_entrylo(i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @tlb_write(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
