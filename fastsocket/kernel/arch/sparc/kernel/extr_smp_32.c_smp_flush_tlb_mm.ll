; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_32.c_smp_flush_tlb_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_32.c_smp_flush_tlb_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64, i32 }

@NO_CONTEXT = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_flush_tlb_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %5 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NO_CONTEXT, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %11 = call i32* @mm_cpumask(%struct.mm_struct* %10)
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = call i32 (...) @smp_processor_id()
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @cpu_clear(i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @cpus_empty(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %9
  %20 = call i64 @BTFIXUP_CALL(i32 (%struct.mm_struct*)* @local_flush_tlb_mm)
  %21 = trunc i64 %20 to i32
  %22 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %23 = ptrtoint %struct.mm_struct* %22 to i64
  %24 = call i32 @xc1(i32 %21, i64 %23)
  %25 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %26 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %25, i32 0, i32 1
  %27 = call i32 @atomic_read(i32* %26)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %41

29:                                               ; preds = %19
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.mm_struct*, %struct.mm_struct** %31, align 8
  %33 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %34 = icmp eq %struct.mm_struct* %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %37 = call i32* @mm_cpumask(%struct.mm_struct* %36)
  %38 = call i32 (...) @smp_processor_id()
  %39 = call i32 @cpumask_of(i32 %38)
  %40 = call i32 @cpumask_copy(i32* %37, i32 %39)
  br label %41

41:                                               ; preds = %35, %29, %19
  br label %42

42:                                               ; preds = %41, %9
  %43 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %44 = call i32 @local_flush_tlb_mm(%struct.mm_struct* %43)
  br label %45

45:                                               ; preds = %42, %1
  ret void
}

declare dso_local i32* @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpu_clear(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpus_empty(i32) #1

declare dso_local i32 @xc1(i32, i64) #1

declare dso_local i64 @BTFIXUP_CALL(i32 (%struct.mm_struct*)*) #1

declare dso_local i32 @local_flush_tlb_mm(%struct.mm_struct*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cpumask_copy(i32*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
