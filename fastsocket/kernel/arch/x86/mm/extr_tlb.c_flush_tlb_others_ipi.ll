; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_tlb.c_flush_tlb_others_ipi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_tlb.c_flush_tlb_others_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.smp_flush_state = type { i64 }
%struct.TYPE_2__ = type { i32 (i32, i64)* }
%struct.cpumask = type { i32 }
%struct.mm_struct = type { i32 }

@NUM_INVALIDATE_TLB_VECTORS = common dso_local global i32 0, align 4
@flush_state = common dso_local global %union.smp_flush_state* null, align 8
@apic = common dso_local global %struct.TYPE_2__* null, align 8
@INVALIDATE_TLB_VECTOR_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpumask*, %struct.mm_struct*, i64)* @flush_tlb_others_ipi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_tlb_others_ipi(%struct.cpumask* %0, %struct.mm_struct* %1, i64 %2) #0 {
  %4 = alloca %struct.cpumask*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.smp_flush_state*, align 8
  store %struct.cpumask* %0, %struct.cpumask** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i32 (...) @smp_processor_id()
  %10 = load i32, i32* @NUM_INVALIDATE_TLB_VECTORS, align 4
  %11 = urem i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load %union.smp_flush_state*, %union.smp_flush_state** @flush_state, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %union.smp_flush_state, %union.smp_flush_state* %12, i64 %14
  store %union.smp_flush_state* %15, %union.smp_flush_state** %8, align 8
  %16 = load %union.smp_flush_state*, %union.smp_flush_state** %8, align 8
  %17 = bitcast %union.smp_flush_state* %16 to i32*
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %20 = load %union.smp_flush_state*, %union.smp_flush_state** %8, align 8
  %21 = bitcast %union.smp_flush_state* %20 to %struct.mm_struct**
  store %struct.mm_struct* %19, %struct.mm_struct** %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %union.smp_flush_state*, %union.smp_flush_state** %8, align 8
  %24 = bitcast %union.smp_flush_state* %23 to i64*
  store i64 %22, i64* %24, align 8
  %25 = load %union.smp_flush_state*, %union.smp_flush_state** %8, align 8
  %26 = bitcast %union.smp_flush_state* %25 to i32*
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @to_cpumask(i32 %27)
  %29 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %30 = call i32 (...) @smp_processor_id()
  %31 = call i32 @cpumask_of(i32 %30)
  %32 = call i64 @cpumask_andnot(i32 %28, %struct.cpumask* %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (i32, i64)*, i32 (i32, i64)** %36, align 8
  %38 = load %union.smp_flush_state*, %union.smp_flush_state** %8, align 8
  %39 = bitcast %union.smp_flush_state* %38 to i32*
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @to_cpumask(i32 %40)
  %42 = load i64, i64* @INVALIDATE_TLB_VECTOR_START, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = call i32 %37(i32 %41, i64 %45)
  br label %47

47:                                               ; preds = %55, %34
  %48 = load %union.smp_flush_state*, %union.smp_flush_state** %8, align 8
  %49 = bitcast %union.smp_flush_state* %48 to i32*
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @to_cpumask(i32 %50)
  %52 = call i32 @cpumask_empty(i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = call i32 (...) @cpu_relax()
  br label %47

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %3
  %59 = load %union.smp_flush_state*, %union.smp_flush_state** %8, align 8
  %60 = bitcast %union.smp_flush_state* %59 to %struct.mm_struct**
  store %struct.mm_struct* null, %struct.mm_struct** %60, align 8
  %61 = load %union.smp_flush_state*, %union.smp_flush_state** %8, align 8
  %62 = bitcast %union.smp_flush_state* %61 to i64*
  store i64 0, i64* %62, align 8
  %63 = load %union.smp_flush_state*, %union.smp_flush_state** %8, align 8
  %64 = bitcast %union.smp_flush_state* %63 to i32*
  %65 = call i32 @spin_unlock(i32* %64)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @cpumask_andnot(i32, %struct.cpumask*, i32) #1

declare dso_local i32 @to_cpumask(i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
