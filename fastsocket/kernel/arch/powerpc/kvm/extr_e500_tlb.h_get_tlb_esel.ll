; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.h_get_tlb_esel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.h_get_tlb_esel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { i32 }

@KVM_E500_TLB0_WAY_NUM_MASK = common dso_local global i32 0, align 4
@KVM_E500_TLB0_WAY_SIZE_MASK = common dso_local global i32 0, align 4
@KVM_E500_TLB0_WAY_NUM_BIT = common dso_local global i32 0, align 4
@KVM_E500_TLB1_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_vcpu_e500*, i32)* @get_tlb_esel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tlb_esel(%struct.kvmppc_vcpu_e500* %0, i32 %1) #0 {
  %3 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %7 = call i32 @get_tlb_esel_bit(%struct.kvmppc_vcpu_e500* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32, i32* @KVM_E500_TLB0_WAY_NUM_MASK, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %15 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 12
  %18 = load i32, i32* @KVM_E500_TLB0_WAY_SIZE_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @KVM_E500_TLB0_WAY_NUM_BIT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load i32, i32* @KVM_E500_TLB1_SIZE, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %10
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @get_tlb_esel_bit(%struct.kvmppc_vcpu_e500*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
