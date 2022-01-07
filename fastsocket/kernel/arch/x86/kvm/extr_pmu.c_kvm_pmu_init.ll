; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_kvm_pmu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_kvm_pmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kvm_pmu }
%struct.kvm_pmu = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, %struct.kvm_vcpu*, i32 }
%struct.TYPE_5__ = type { i32, %struct.kvm_vcpu*, i32 }

@X86_PMC_MAX_GENERIC = common dso_local global i32 0, align 4
@KVM_PMC_GP = common dso_local global i32 0, align 4
@X86_PMC_MAX_FIXED = common dso_local global i32 0, align 4
@KVM_PMC_FIXED = common dso_local global i32 0, align 4
@X86_PMC_IDX_FIXED = common dso_local global i64 0, align 8
@trigger_pmi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_pmu_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_pmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.kvm_pmu* %7, %struct.kvm_pmu** %4, align 8
  %8 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %9 = call i32 @memset(%struct.kvm_pmu* %8, i32 0, i32 24)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %39, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @X86_PMC_MAX_GENERIC, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load i32, i32* @KVM_PMC_GP, align 4
  %16 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i32 %15, i32* %22, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %24 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store %struct.kvm_vcpu* %23, %struct.kvm_vcpu** %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %31, i32* %38, align 8
  br label %39

39:                                               ; preds = %14
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %10

42:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %75, %42
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @X86_PMC_MAX_FIXED, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %43
  %48 = load i32, i32* @KVM_PMC_FIXED, align 4
  %49 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %50 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i32 %48, i32* %55, align 8
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %57 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %58 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store %struct.kvm_vcpu* %56, %struct.kvm_vcpu** %63, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @X86_PMC_IDX_FIXED, align 8
  %67 = add nsw i64 %65, %66
  %68 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %69 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i64 %67, i64* %74, align 8
  br label %75

75:                                               ; preds = %47
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %43

78:                                               ; preds = %43
  %79 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %80 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %79, i32 0, i32 0
  %81 = load i32, i32* @trigger_pmi, align 4
  %82 = call i32 @init_irq_work(i32* %80, i32 %81)
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %84 = call i32 @kvm_pmu_cpuid_update(%struct.kvm_vcpu* %83)
  ret void
}

declare dso_local i32 @memset(%struct.kvm_pmu*, i32, i32) #1

declare dso_local i32 @init_irq_work(i32*, i32) #1

declare dso_local i32 @kvm_pmu_cpuid_update(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
