; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r8k.c_local_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r8k.c_local_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@CKSEG0 = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = call i32 (...) @smp_processor_id()
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cpu_context(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %57

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cpu_asid(i32 %19, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i64, i64* @PAGE_MASK, align 8
  %25 = load i64, i64* %4, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @local_irq_save(i64 %27)
  %29 = call i32 (...) @read_c0_entryhi()
  store i32 %29, i32* %7, align 4
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @write_c0_vaddr(i64 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @write_c0_entryhi(i32 %32)
  %34 = call i32 (...) @tlb_probe()
  %35 = call i64 (...) @read_c0_tlbset()
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  br label %52

39:                                               ; preds = %18
  %40 = call i32 @write_c0_entrylo(i32 0)
  %41 = load i32, i32* @CKSEG0, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* @PAGE_SHIFT, align 4
  %45 = add nsw i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = shl i64 %43, %46
  %48 = add nsw i64 %42, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @write_c0_entryhi(i32 %49)
  %51 = call i32 (...) @tlb_write()
  br label %52

52:                                               ; preds = %39, %38
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @write_c0_entryhi(i32 %53)
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @local_irq_restore(i64 %55)
  br label %57

57:                                               ; preds = %52, %17
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpu_context(i32, i32) #1

declare dso_local i32 @cpu_asid(i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @read_c0_entryhi(...) #1

declare dso_local i32 @write_c0_vaddr(i64) #1

declare dso_local i32 @write_c0_entryhi(i32) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i64 @read_c0_tlbset(...) #1

declare dso_local i32 @write_c0_entrylo(i32) #1

declare dso_local i32 @tlb_write(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
