; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r8k.c_local_flush_tlb_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r8k.c_local_flush_tlb_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = call i32 (...) @smp_processor_id()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %7 = call i64 @cpu_context(i32 %5, %struct.mm_struct* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @drop_mmu_context(%struct.mm_struct* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @cpu_context(i32, %struct.mm_struct*) #1

declare dso_local i32 @drop_mmu_context(%struct.mm_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
