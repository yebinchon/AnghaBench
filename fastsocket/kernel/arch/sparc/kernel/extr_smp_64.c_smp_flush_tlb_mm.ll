; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_64.c_smp_flush_tlb_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_64.c_smp_flush_tlb_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, i32 }

@xcall_flush_tlb_mm = common dso_local global i32 0, align 4
@SECONDARY_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_flush_tlb_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %5 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %6 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @CTX_HWBITS(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = call i32 (...) @get_cpu()
  store i32 %9, i32* %4, align 4
  %10 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = call i32 @atomic_read(i32* %11)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %16 = call i32 @mm_cpumask(%struct.mm_struct* %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @cpumask_of(i32 %17)
  %19 = call i32 @cpumask_copy(i32 %16, i32 %18)
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %23 = call i32 @mm_cpumask(%struct.mm_struct* %22)
  %24 = call i32 @smp_cross_call_masked(i32* @xcall_flush_tlb_mm, i32 %21, i32 0, i32 0, i32 %23)
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @SECONDARY_CONTEXT, align 4
  %28 = call i32 @__flush_tlb_mm(i32 %26, i32 %27)
  %29 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @CTX_HWBITS(i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @smp_cross_call_masked(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @__flush_tlb_mm(i32, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
