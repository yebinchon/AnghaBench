; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/mm/extr_tlb.c_flush_tlb_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/mm/extr_tlb.c_flush_tlb_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %8 = icmp eq %struct.mm_struct* %4, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @local_save_flags(i32 %10)
  %12 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %13 = call i32 @__get_new_mmu_context(%struct.mm_struct* %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %15 = call i32 @__load_mmu_context(%struct.mm_struct* %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @local_irq_restore(i32 %16)
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @local_save_flags(i32) #1

declare dso_local i32 @__get_new_mmu_context(%struct.mm_struct*) #1

declare dso_local i32 @__load_mmu_context(%struct.mm_struct*) #1

declare dso_local i32 @local_irq_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
