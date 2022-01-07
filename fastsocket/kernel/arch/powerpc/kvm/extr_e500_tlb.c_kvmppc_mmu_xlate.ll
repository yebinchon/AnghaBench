; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_mmu_xlate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_mmu_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_e500 = type { %struct.tlbe** }
%struct.tlbe = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_mmu_xlate(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %8 = alloca %struct.tlbe*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu* %10)
  store %struct.kvmppc_vcpu_e500* %11, %struct.kvmppc_vcpu_e500** %7, align 8
  %12 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %13 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %12, i32 0, i32 0
  %14 = load %struct.tlbe**, %struct.tlbe*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @tlbsel_of(i32 %15)
  %17 = getelementptr inbounds %struct.tlbe*, %struct.tlbe** %14, i64 %16
  %18 = load %struct.tlbe*, %struct.tlbe** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @esel_of(i32 %19)
  %21 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %18, i64 %20
  store %struct.tlbe* %21, %struct.tlbe** %8, align 8
  %22 = load %struct.tlbe*, %struct.tlbe** %8, align 8
  %23 = call i32 @get_tlb_bytes(%struct.tlbe* %22)
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load %struct.tlbe*, %struct.tlbe** %8, align 8
  %26 = call i32 @get_tlb_raddr(%struct.tlbe* %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %27, %28
  %30 = or i32 %26, %29
  ret i32 %30
}

declare dso_local %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu*) #1

declare dso_local i64 @tlbsel_of(i32) #1

declare dso_local i64 @esel_of(i32) #1

declare dso_local i32 @get_tlb_bytes(%struct.tlbe*) #1

declare dso_local i32 @get_tlb_raddr(%struct.tlbe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
