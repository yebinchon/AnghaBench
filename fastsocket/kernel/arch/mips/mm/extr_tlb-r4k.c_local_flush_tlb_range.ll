; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r4k.c_local_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r4k.c_local_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@FLUSH_ITLB = common dso_local global i32 0, align 4

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
  %20 = call i64 @cpu_context(i32 %18, %struct.mm_struct* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %106

22:                                               ; preds = %3
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @ENTER_CRITICAL(i64 %23)
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
  %35 = add i64 %34, 1
  %36 = lshr i64 %35, 1
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  %39 = sdiv i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = icmp ule i64 %37, %40
  br i1 %41, label %42, label %98

42:                                               ; preds = %22
  %43 = call i32 (...) @read_c0_entryhi()
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %46 = call i32 @cpu_asid(i32 %44, %struct.mm_struct* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @PAGE_MASK, align 4
  %48 = shl i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %5, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %5, align 8
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = shl i32 %52, 1
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %6, align 8
  %58 = load i32, i32* @PAGE_MASK, align 4
  %59 = shl i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %6, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %88, %87, %42
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %63
  %68 = load i64, i64* %5, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = or i64 %68, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @write_c0_entryhi(i32 %72)
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = shl i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %5, align 8
  %79 = call i32 (...) @mtc0_tlbw_hazard()
  %80 = call i32 (...) @tlb_probe()
  %81 = call i32 (...) @tlb_probe_hazard()
  %82 = call i32 (...) @read_c0_index()
  store i32 %82, i32* %13, align 4
  %83 = call i32 @write_c0_entrylo0(i32 0)
  %84 = call i32 @write_c0_entrylo1(i32 0)
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %67
  br label %63

88:                                               ; preds = %67
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @UNIQUE_ENTRYHI(i32 %89)
  %91 = call i32 @write_c0_entryhi(i32 %90)
  %92 = call i32 (...) @mtc0_tlbw_hazard()
  %93 = call i32 (...) @tlb_write_indexed()
  br label %63

94:                                               ; preds = %63
  %95 = call i32 (...) @tlbw_use_hazard()
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @write_c0_entryhi(i32 %96)
  br label %102

98:                                               ; preds = %22
  %99 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @drop_mmu_context(%struct.mm_struct* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %94
  %103 = load i32, i32* @FLUSH_ITLB, align 4
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @EXIT_CRITICAL(i64 %104)
  br label %106

106:                                              ; preds = %102, %3
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @cpu_context(i32, %struct.mm_struct*) #1

declare dso_local i32 @ENTER_CRITICAL(i64) #1

declare dso_local i32 @read_c0_entryhi(...) #1

declare dso_local i32 @cpu_asid(i32, %struct.mm_struct*) #1

declare dso_local i32 @write_c0_entryhi(i32) #1

declare dso_local i32 @mtc0_tlbw_hazard(...) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @tlb_probe_hazard(...) #1

declare dso_local i32 @read_c0_index(...) #1

declare dso_local i32 @write_c0_entrylo0(i32) #1

declare dso_local i32 @write_c0_entrylo1(i32) #1

declare dso_local i32 @UNIQUE_ENTRYHI(i32) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @tlbw_use_hazard(...) #1

declare dso_local i32 @drop_mmu_context(%struct.mm_struct*, i32) #1

declare dso_local i32 @EXIT_CRITICAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
