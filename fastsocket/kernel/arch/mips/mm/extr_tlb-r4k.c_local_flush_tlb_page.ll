; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r4k.c_local_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r4k.c_local_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = call i32 (...) @smp_processor_id()
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @cpu_context(i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cpu_asid(i32 %18, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @PAGE_MASK, align 4
  %24 = shl i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %4, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @ENTER_CRITICAL(i64 %28)
  %30 = call i32 (...) @read_c0_entryhi()
  store i32 %30, i32* %7, align 4
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = or i64 %31, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @write_c0_entryhi(i32 %35)
  %37 = call i32 (...) @mtc0_tlbw_hazard()
  %38 = call i32 (...) @tlb_probe()
  %39 = call i32 (...) @tlb_probe_hazard()
  %40 = call i32 (...) @read_c0_index()
  store i32 %40, i32* %9, align 4
  %41 = call i32 @write_c0_entrylo0(i32 0)
  %42 = call i32 @write_c0_entrylo1(i32 0)
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %17
  br label %53

46:                                               ; preds = %17
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @UNIQUE_ENTRYHI(i32 %47)
  %49 = call i32 @write_c0_entryhi(i32 %48)
  %50 = call i32 (...) @mtc0_tlbw_hazard()
  %51 = call i32 (...) @tlb_write_indexed()
  %52 = call i32 (...) @tlbw_use_hazard()
  br label %53

53:                                               ; preds = %46, %45
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @write_c0_entryhi(i32 %54)
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %57 = call i32 @FLUSH_ITLB_VM(%struct.vm_area_struct* %56)
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @EXIT_CRITICAL(i64 %58)
  br label %60

60:                                               ; preds = %53, %2
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @cpu_context(i32, i32) #1

declare dso_local i32 @cpu_asid(i32, i32) #1

declare dso_local i32 @ENTER_CRITICAL(i64) #1

declare dso_local i32 @read_c0_entryhi(...) #1

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

declare dso_local i32 @FLUSH_ITLB_VM(%struct.vm_area_struct*) #1

declare dso_local i32 @EXIT_CRITICAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
