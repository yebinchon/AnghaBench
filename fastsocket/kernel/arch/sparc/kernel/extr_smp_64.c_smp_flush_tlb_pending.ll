; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_64.c_smp_flush_tlb_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_64.c_smp_flush_tlb_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@xcall_flush_tlb_pending = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_flush_tlb_pending(%struct.mm_struct* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @CTX_HWBITS(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = call i32 (...) @get_cpu()
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  %18 = icmp eq %struct.mm_struct* %14, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = call i32 @atomic_read(i32* %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %26 = call i32 @mm_cpumask(%struct.mm_struct* %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @cpumask_of(i32 %27)
  %29 = call i32 @cpumask_copy(i32 %26, i32 %28)
  br label %38

30:                                               ; preds = %19, %3
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = ptrtoint i64* %33 to i64
  %35 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %36 = call i32 @mm_cpumask(%struct.mm_struct* %35)
  %37 = call i32 @smp_cross_call_masked(i32* @xcall_flush_tlb_pending, i32 %31, i64 %32, i64 %34, i32 %36)
  br label %38

38:                                               ; preds = %30, %24
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* %5, align 8
  %41 = load i64*, i64** %6, align 8
  %42 = call i32 @__flush_tlb_pending(i32 %39, i64 %40, i64* %41)
  %43 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @CTX_HWBITS(i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @smp_cross_call_masked(i32*, i32, i64, i64, i32) #1

declare dso_local i32 @__flush_tlb_pending(i32, i64, i64*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
