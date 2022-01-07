; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_tlb_hash64.c___flush_tlb_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_tlb_hash64.c___flush_tlb_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc64_tlb_batch = type { i32, i32, i32, i32*, i32*, i32 }
%struct.cpumask = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__flush_tlb_pending(%struct.ppc64_tlb_batch* %0) #0 {
  %2 = alloca %struct.ppc64_tlb_batch*, align 8
  %3 = alloca %struct.cpumask*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ppc64_tlb_batch* %0, %struct.ppc64_tlb_batch** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ppc64_tlb_batch*, %struct.ppc64_tlb_batch** %2, align 8
  %7 = getelementptr inbounds %struct.ppc64_tlb_batch, %struct.ppc64_tlb_batch* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @smp_processor_id()
  %10 = call %struct.cpumask* @cpumask_of(i32 %9)
  store %struct.cpumask* %10, %struct.cpumask** %3, align 8
  %11 = load %struct.ppc64_tlb_batch*, %struct.ppc64_tlb_batch** %2, align 8
  %12 = getelementptr inbounds %struct.ppc64_tlb_batch, %struct.ppc64_tlb_batch* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @mm_cpumask(i32 %13)
  %15 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %16 = call i64 @cpumask_equal(i32 %14, %struct.cpumask* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load %struct.ppc64_tlb_batch*, %struct.ppc64_tlb_batch** %2, align 8
  %24 = getelementptr inbounds %struct.ppc64_tlb_batch, %struct.ppc64_tlb_batch* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ppc64_tlb_batch*, %struct.ppc64_tlb_batch** %2, align 8
  %29 = getelementptr inbounds %struct.ppc64_tlb_batch, %struct.ppc64_tlb_batch* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ppc64_tlb_batch*, %struct.ppc64_tlb_batch** %2, align 8
  %34 = getelementptr inbounds %struct.ppc64_tlb_batch, %struct.ppc64_tlb_batch* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ppc64_tlb_batch*, %struct.ppc64_tlb_batch** %2, align 8
  %37 = getelementptr inbounds %struct.ppc64_tlb_batch, %struct.ppc64_tlb_batch* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @flush_hash_page(i32 %27, i32 %32, i32 %35, i32 %38, i32 %39)
  br label %45

41:                                               ; preds = %19
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @flush_hash_range(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %22
  %46 = load %struct.ppc64_tlb_batch*, %struct.ppc64_tlb_batch** %2, align 8
  %47 = getelementptr inbounds %struct.ppc64_tlb_batch, %struct.ppc64_tlb_batch* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  ret void
}

declare dso_local %struct.cpumask* @cpumask_of(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @cpumask_equal(i32, %struct.cpumask*) #1

declare dso_local i32 @mm_cpumask(i32) #1

declare dso_local i32 @flush_hash_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @flush_hash_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
