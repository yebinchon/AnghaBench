; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_kvm_perf_overflow_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_kvm_perf_overflow_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.kvm_pmc* }
%struct.kvm_pmc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_pmu }
%struct.kvm_pmu = type { i32, i32 }
%struct.perf_sample_data = type { i32 }
%struct.pt_regs = type { i32 }

@KVM_REQ_PMU = common dso_local global i32 0, align 4
@KVM_REQ_PMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*)* @kvm_perf_overflow_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_perf_overflow_intr(%struct.perf_event* %0, %struct.perf_sample_data* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_sample_data*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.kvm_pmc*, align 8
  %8 = alloca %struct.kvm_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.perf_sample_data* %1, %struct.perf_sample_data** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  %11 = load %struct.kvm_pmc*, %struct.kvm_pmc** %10, align 8
  store %struct.kvm_pmc* %11, %struct.kvm_pmc** %7, align 8
  %12 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %13 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.kvm_pmu* %16, %struct.kvm_pmu** %8, align 8
  %17 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %18 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %21 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %20, i32 0, i32 1
  %22 = bitcast i32* %21 to i64*
  %23 = call i32 @test_and_set_bit(i32 %19, i64* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %3
  %26 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %27 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %28 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %29 = call i32 @kvm_perf_overflow(%struct.perf_event* %26, %struct.perf_sample_data* %27, %struct.pt_regs* %28)
  %30 = load i32, i32* @KVM_REQ_PMU, align 4
  %31 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @set_bit(i32 %30, i32* %34)
  %36 = call i32 (...) @kvm_is_in_guest()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %25
  %39 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %40 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %43, i32 0, i32 0
  %45 = call i32 @irq_work_queue(i32* %44)
  br label %53

46:                                               ; preds = %25
  %47 = load i32, i32* @KVM_REQ_PMI, align 4
  %48 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %49 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @set_bit(i32 %47, i32* %51)
  br label %53

53:                                               ; preds = %46, %38
  br label %54

54:                                               ; preds = %53, %3
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i64*) #1

declare dso_local i32 @kvm_perf_overflow(%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kvm_is_in_guest(...) #1

declare dso_local i32 @irq_work_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
