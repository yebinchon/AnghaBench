; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_reprogram_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_reprogram_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmu = type { i32 }
%struct.kvm_pmc = type { i32 }

@X86_PMC_IDX_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_pmu*, i32)* @reprogram_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reprogram_idx(%struct.kvm_pmu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_pmc*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_pmu* %0, %struct.kvm_pmu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.kvm_pmc* @global_idx_to_pmc(%struct.kvm_pmu* %7, i32 %8)
  store %struct.kvm_pmc* %9, %struct.kvm_pmc** %5, align 8
  %10 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %11 = icmp ne %struct.kvm_pmc* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %15 = call i64 @pmc_is_gp(%struct.kvm_pmc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %19 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @reprogram_gp_counter(%struct.kvm_pmc* %18, i32 %21)
  br label %35

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @X86_PMC_IDX_FIXED, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %28 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @fixed_en_pmi(i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @reprogram_fixed_counter(%struct.kvm_pmc* %27, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %12, %23, %17
  ret void
}

declare dso_local %struct.kvm_pmc* @global_idx_to_pmc(%struct.kvm_pmu*, i32) #1

declare dso_local i64 @pmc_is_gp(%struct.kvm_pmc*) #1

declare dso_local i32 @reprogram_gp_counter(%struct.kvm_pmc*, i32) #1

declare dso_local i32 @reprogram_fixed_counter(%struct.kvm_pmc*, i32, i32) #1

declare dso_local i32 @fixed_en_pmi(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
