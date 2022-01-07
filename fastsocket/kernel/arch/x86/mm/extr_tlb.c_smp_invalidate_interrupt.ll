; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_tlb.c_smp_invalidate_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_tlb.c_smp_invalidate_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.smp_flush_state = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.pt_regs = type { i32 }

@INVALIDATE_TLB_VECTOR_START = common dso_local global i32 0, align 4
@flush_state = common dso_local global %union.smp_flush_state* null, align 8
@cpu_tlbstate = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@TLBSTATE_OK = common dso_local global i64 0, align 8
@TLB_FLUSH_ALL = common dso_local global i64 0, align 8
@irq_tlb_count = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_invalidate_interrupt(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.smp_flush_state*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %6 = call i32 (...) @smp_processor_id()
  store i32 %6, i32* %3, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* @INVALIDATE_TLB_VECTOR_START, align 4
  %12 = sub i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %union.smp_flush_state*, %union.smp_flush_state** @flush_state, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %union.smp_flush_state, %union.smp_flush_state* %13, i64 %15
  store %union.smp_flush_state* %16, %union.smp_flush_state** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %union.smp_flush_state*, %union.smp_flush_state** %5, align 8
  %19 = bitcast %union.smp_flush_state* %18 to i32*
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @to_cpumask(i32 %20)
  %22 = call i32 @cpumask_test_cpu(i32 %17, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %56

25:                                               ; preds = %1
  %26 = load %union.smp_flush_state*, %union.smp_flush_state** %5, align 8
  %27 = bitcast %union.smp_flush_state* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cpu_tlbstate, i32 0, i32 1), align 4
  %30 = call i64 @percpu_read(i32 %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %25
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cpu_tlbstate, i32 0, i32 0), align 4
  %34 = call i64 @percpu_read(i32 %33)
  %35 = load i64, i64* @TLBSTATE_OK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %union.smp_flush_state*, %union.smp_flush_state** %5, align 8
  %39 = bitcast %union.smp_flush_state* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TLB_FLUSH_ALL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 (...) @local_flush_tlb()
  br label %50

45:                                               ; preds = %37
  %46 = load %union.smp_flush_state*, %union.smp_flush_state** %5, align 8
  %47 = bitcast %union.smp_flush_state* %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @__flush_tlb_one(i64 %48)
  br label %50

50:                                               ; preds = %45, %43
  br label %54

51:                                               ; preds = %32
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @leave_mm(i32 %52)
  br label %54

54:                                               ; preds = %51, %50
  br label %55

55:                                               ; preds = %54, %25
  br label %56

56:                                               ; preds = %55, %24
  %57 = call i32 (...) @ack_APIC_irq()
  %58 = call i32 (...) @smp_mb__before_clear_bit()
  %59 = load i32, i32* %3, align 4
  %60 = load %union.smp_flush_state*, %union.smp_flush_state** %5, align 8
  %61 = bitcast %union.smp_flush_state* %60 to i32*
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @to_cpumask(i32 %62)
  %64 = call i32 @cpumask_clear_cpu(i32 %59, i32 %63)
  %65 = call i32 (...) @smp_mb__after_clear_bit()
  %66 = load i32, i32* @irq_tlb_count, align 4
  %67 = call i32 @inc_irq_stat(i32 %66)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @to_cpumask(i32) #1

declare dso_local i64 @percpu_read(i32) #1

declare dso_local i32 @local_flush_tlb(...) #1

declare dso_local i32 @__flush_tlb_one(i64) #1

declare dso_local i32 @leave_mm(i32) #1

declare dso_local i32 @ack_APIC_irq(...) #1

declare dso_local i32 @smp_mb__before_clear_bit(...) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i32 @inc_irq_stat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
