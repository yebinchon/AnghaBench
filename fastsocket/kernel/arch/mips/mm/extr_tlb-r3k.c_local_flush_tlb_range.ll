; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r3k.c_local_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r3k.c_local_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ASID_MASK = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@KSEG0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
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
  br i1 %21, label %22, label %92

22:                                               ; preds = %3
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @local_irq_save(i64 %23)
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %25, %26
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = add i64 %27, %30
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = lshr i64 %31, %32
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %22
  %38 = call i32 (...) @read_c0_entryhi()
  %39 = load i32, i32* @ASID_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %43 = call i32 @cpu_context(i32 %41, %struct.mm_struct* %42)
  %44 = load i32, i32* @ASID_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load i64, i64* @PAGE_MASK, align 8
  %47 = load i64, i64* %5, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %5, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* @PAGE_MASK, align 8
  %55 = load i64, i64* %6, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %80, %79, %37
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = or i64 %62, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @write_c0_entryhi(i32 %66)
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %5, align 8
  %72 = call i32 (...) @tlb_probe()
  %73 = call i32 (...) @read_c0_index()
  store i32 %73, i32* %13, align 4
  %74 = call i32 @write_c0_entrylo0(i32 0)
  %75 = load i32, i32* @KSEG0, align 4
  %76 = call i32 @write_c0_entryhi(i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  br label %57

80:                                               ; preds = %61
  %81 = call i32 (...) @tlb_write_indexed()
  br label %57

82:                                               ; preds = %57
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @write_c0_entryhi(i32 %83)
  br label %89

85:                                               ; preds = %22
  %86 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @drop_mmu_context(%struct.mm_struct* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @local_irq_restore(i64 %90)
  br label %92

92:                                               ; preds = %89, %3
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpu_context(i32, %struct.mm_struct*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @read_c0_entryhi(...) #1

declare dso_local i32 @write_c0_entryhi(i32) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @read_c0_index(...) #1

declare dso_local i32 @write_c0_entrylo0(i32) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @drop_mmu_context(%struct.mm_struct*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
