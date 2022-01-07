; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_get_fixed_pmc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_get_fixed_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmc = type { i32 }
%struct.kvm_pmu = type { i32, %struct.kvm_pmc* }

@MSR_CORE_PERF_FIXED_CTR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_pmc* (%struct.kvm_pmu*, i32)* @get_fixed_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_pmc* @get_fixed_pmc(%struct.kvm_pmu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_pmc*, align 8
  %4 = alloca %struct.kvm_pmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_pmu* %0, %struct.kvm_pmu** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @MSR_CORE_PERF_FIXED_CTR0, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %13, %16
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %20, i32 0, i32 1
  %22 = load %struct.kvm_pmc*, %struct.kvm_pmc** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %22, i64 %26
  store %struct.kvm_pmc* %27, %struct.kvm_pmc** %3, align 8
  br label %29

28:                                               ; preds = %11, %2
  store %struct.kvm_pmc* null, %struct.kvm_pmc** %3, align 8
  br label %29

29:                                               ; preds = %28, %19
  %30 = load %struct.kvm_pmc*, %struct.kvm_pmc** %3, align 8
  ret %struct.kvm_pmc* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
