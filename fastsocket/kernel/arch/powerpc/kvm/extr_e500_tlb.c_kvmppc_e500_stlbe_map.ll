; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_stlbe_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_stlbe_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { %struct.tlbe** }
%struct.tlbe = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_vcpu_e500*, i32, i32)* @kvmppc_e500_stlbe_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_e500_stlbe_map(%struct.kvmppc_vcpu_e500* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tlbe*, align 8
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %9 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %8, i32 0, i32 0
  %10 = load %struct.tlbe**, %struct.tlbe*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.tlbe*, %struct.tlbe** %10, i64 %12
  %14 = load %struct.tlbe*, %struct.tlbe** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %14, i64 %16
  store %struct.tlbe* %17, %struct.tlbe** %7, align 8
  %18 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %19 = load %struct.tlbe*, %struct.tlbe** %7, align 8
  %20 = call i32 @get_tlb_eaddr(%struct.tlbe* %19)
  %21 = load %struct.tlbe*, %struct.tlbe** %7, align 8
  %22 = call i32 @get_tlb_raddr(%struct.tlbe* %21)
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = load %struct.tlbe*, %struct.tlbe** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @kvmppc_e500_shadow_map(%struct.kvmppc_vcpu_e500* %18, i32 %20, i32 %24, %struct.tlbe* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @kvmppc_e500_shadow_map(%struct.kvmppc_vcpu_e500*, i32, i32, %struct.tlbe*, i32, i32) #1

declare dso_local i32 @get_tlb_eaddr(%struct.tlbe*) #1

declare dso_local i32 @get_tlb_raddr(%struct.tlbe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
