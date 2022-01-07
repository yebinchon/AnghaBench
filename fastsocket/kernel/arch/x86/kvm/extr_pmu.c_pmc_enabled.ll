; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_pmc_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_pmc_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_pmu }
%struct.kvm_pmu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_pmc*)* @pmc_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_enabled(%struct.kvm_pmc* %0) #0 {
  %2 = alloca %struct.kvm_pmc*, align 8
  %3 = alloca %struct.kvm_pmu*, align 8
  store %struct.kvm_pmc* %0, %struct.kvm_pmc** %2, align 8
  %4 = load %struct.kvm_pmc*, %struct.kvm_pmc** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.kvm_pmu* %8, %struct.kvm_pmu** %3, align 8
  %9 = load %struct.kvm_pmc*, %struct.kvm_pmc** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to i64*
  %15 = call i32 @test_bit(i32 %11, i64* %14)
  ret i32 %15
}

declare dso_local i32 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
