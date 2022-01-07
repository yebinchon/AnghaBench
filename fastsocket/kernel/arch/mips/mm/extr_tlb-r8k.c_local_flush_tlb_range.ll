; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r8k.c_local_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r8k.c_local_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@TFP_TLB_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@CKSEG0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  store %struct.mm_struct* %16, %struct.mm_struct** %7, align 8
  %17 = call i32 (...) @smp_processor_id()
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %20 = call i32 @cpu_context(i32 %18, %struct.mm_struct* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %99

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = sub i64 %24, %25
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = add i64 %26, %29
  %31 = load i64, i64* @PAGE_SHIFT, align 8
  %32 = lshr i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %12, align 4
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @local_irq_save(i64 %37)
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @TFP_TLB_SIZE, align 4
  %41 = sdiv i32 %40, 2
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %23
  %44 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @drop_mmu_context(%struct.mm_struct* %44, i32 %45)
  br label %96

47:                                               ; preds = %23
  %48 = call i32 (...) @read_c0_entryhi()
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %51 = call i32 @cpu_asid(i32 %49, %struct.mm_struct* %50)
  store i32 %51, i32* %11, align 4
  %52 = call i32 @write_c0_entrylo(i32 0)
  %53 = load i64, i64* @PAGE_MASK, align 8
  %54 = load i64, i64* %5, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %5, align 8
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* @PAGE_MASK, align 8
  %62 = load i64, i64* %6, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %83, %82, %47
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %64
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @write_c0_vaddr(i64 %69)
  %71 = load i64, i64* %5, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @write_c0_entryhi(i32 %72)
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %5, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %5, align 8
  %78 = call i32 (...) @tlb_probe()
  %79 = call i64 (...) @read_c0_tlbset()
  store i64 %79, i64* %13, align 8
  %80 = load i64, i64* %13, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  br label %64

83:                                               ; preds = %68
  %84 = load i64, i64* @CKSEG0, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* @PAGE_SHIFT, align 8
  %87 = add i64 %86, 1
  %88 = shl i64 %85, %87
  %89 = add nsw i64 %84, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @write_c0_entryhi(i32 %90)
  %92 = call i32 (...) @tlb_write()
  br label %64

93:                                               ; preds = %64
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @write_c0_entryhi(i32 %94)
  br label %96

96:                                               ; preds = %93, %43
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @local_irq_restore(i64 %97)
  br label %99

99:                                               ; preds = %96, %22
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpu_context(i32, %struct.mm_struct*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @drop_mmu_context(%struct.mm_struct*, i32) #1

declare dso_local i32 @read_c0_entryhi(...) #1

declare dso_local i32 @cpu_asid(i32, %struct.mm_struct*) #1

declare dso_local i32 @write_c0_entrylo(i32) #1

declare dso_local i32 @write_c0_vaddr(i64) #1

declare dso_local i32 @write_c0_entryhi(i32) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i64 @read_c0_tlbset(...) #1

declare dso_local i32 @tlb_write(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
