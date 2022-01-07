; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_kvm_pmu_get_msr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_kvm_pmu_get_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_pmu }
%struct.kvm_pmu = type { i32, i32, i32, i32 }
%struct.kvm_pmc = type { i32 }

@MSR_IA32_PERFCTR0 = common dso_local global i32 0, align 4
@MSR_P6_EVNTSEL0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_pmu_get_msr(%struct.kvm_vcpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvm_pmu*, align 8
  %9 = alloca %struct.kvm_pmc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.kvm_pmu* %12, %struct.kvm_pmu** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %34 [
    i32 131, label %14
    i32 128, label %19
    i32 130, label %24
    i32 129, label %29
  ]

14:                                               ; preds = %3
  %15 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %16 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  store i32 0, i32* %4, align 4
  br label %63

19:                                               ; preds = %3
  %20 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %21 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %63

24:                                               ; preds = %3
  %25 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %26 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %4, align 4
  br label %63

29:                                               ; preds = %3
  %30 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %31 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %63

34:                                               ; preds = %3
  %35 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MSR_IA32_PERFCTR0, align 4
  %38 = call %struct.kvm_pmc* @get_gp_pmc(%struct.kvm_pmu* %35, i32 %36, i32 %37)
  store %struct.kvm_pmc* %38, %struct.kvm_pmc** %9, align 8
  %39 = icmp ne %struct.kvm_pmc* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.kvm_pmc* @get_fixed_pmc(%struct.kvm_pmu* %41, i32 %42)
  store %struct.kvm_pmc* %43, %struct.kvm_pmc** %9, align 8
  %44 = icmp ne %struct.kvm_pmc* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40, %34
  %46 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %47 = call i32 @read_pmc(%struct.kvm_pmc* %46)
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  store i32 0, i32* %4, align 4
  br label %63

49:                                               ; preds = %40
  %50 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @MSR_P6_EVNTSEL0, align 4
  %53 = call %struct.kvm_pmc* @get_gp_pmc(%struct.kvm_pmu* %50, i32 %51, i32 %52)
  store %struct.kvm_pmc* %53, %struct.kvm_pmc** %9, align 8
  %54 = icmp ne %struct.kvm_pmc* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %57 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %63

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %55, %45, %29, %24, %19, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.kvm_pmc* @get_gp_pmc(%struct.kvm_pmu*, i32, i32) #1

declare dso_local %struct.kvm_pmc* @get_fixed_pmc(%struct.kvm_pmu*, i32) #1

declare dso_local i32 @read_pmc(%struct.kvm_pmc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
