; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_reprogram_fixed_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_reprogram_fixed_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmu = type { i32, i32 }
%struct.kvm_pmc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_pmu*, i32)* @reprogram_fixed_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reprogram_fixed_counters(%struct.kvm_pmu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvm_pmc*, align 8
  store %struct.kvm_pmu* %0, %struct.kvm_pmu** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @fixed_en_pmi(i32 %15, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.kvm_pmc* @get_fixed_pmc_idx(%struct.kvm_pmu* %18, i32 %19)
  store %struct.kvm_pmc* %20, %struct.kvm_pmc** %7, align 8
  %21 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @fixed_en_pmi(i32 %23, i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  br label %34

29:                                               ; preds = %14
  %30 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @reprogram_fixed_counter(%struct.kvm_pmc* %30, i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %40 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local i64 @fixed_en_pmi(i32, i32) #1

declare dso_local %struct.kvm_pmc* @get_fixed_pmc_idx(%struct.kvm_pmu*, i32) #1

declare dso_local i32 @reprogram_fixed_counter(%struct.kvm_pmc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
