; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_kvm_pmu_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_kvm_pmu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_pmu }
%struct.kvm_pmu = type { i64, i64, i64, i64, %struct.kvm_pmc*, %struct.kvm_pmc*, i32 }
%struct.kvm_pmc = type { i64, i64 }

@X86_PMC_MAX_GENERIC = common dso_local global i32 0, align 4
@X86_PMC_MAX_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_pmu_reset(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_pmc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.kvm_pmu* %8, %struct.kvm_pmu** %3, align 8
  %9 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %9, i32 0, i32 6
  %11 = call i32 @irq_work_sync(i32* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @X86_PMC_MAX_GENERIC, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %17, i32 0, i32 5
  %19 = load %struct.kvm_pmc*, %struct.kvm_pmc** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %19, i64 %21
  store %struct.kvm_pmc* %22, %struct.kvm_pmc** %5, align 8
  %23 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %24 = call i32 @stop_counter(%struct.kvm_pmc* %23)
  %25 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %26 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %12

32:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %45, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @X86_PMC_MAX_FIXED, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %38, i32 0, i32 4
  %40 = load %struct.kvm_pmc*, %struct.kvm_pmc** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %40, i64 %42
  %44 = call i32 @stop_counter(%struct.kvm_pmc* %43)
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %33

48:                                               ; preds = %33
  %49 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %50 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %54 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %56 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  ret void
}

declare dso_local i32 @irq_work_sync(i32*) #1

declare dso_local i32 @stop_counter(%struct.kvm_pmc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
