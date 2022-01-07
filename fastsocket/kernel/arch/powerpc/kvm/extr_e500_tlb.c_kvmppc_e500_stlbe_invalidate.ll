; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_stlbe_invalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_stlbe_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { %struct.tlbe** }
%struct.tlbe = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_vcpu_e500*, i32, i32)* @kvmppc_e500_stlbe_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_e500_stlbe_invalidate(%struct.kvmppc_vcpu_e500* %0, i32 %1, i32 %2) #0 {
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
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @kvmppc_e500_shadow_release(%struct.kvmppc_vcpu_e500* %18, i32 %19, i32 %20)
  %22 = load %struct.tlbe*, %struct.tlbe** %7, align 8
  %23 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @index_of(i32 %24, i32 %25)
  %27 = load %struct.tlbe*, %struct.tlbe** %7, align 8
  %28 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.tlbe*, %struct.tlbe** %7, align 8
  %31 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tlbe*, %struct.tlbe** %7, align 8
  %34 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tlbe*, %struct.tlbe** %7, align 8
  %37 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @trace_kvm_stlb_inval(i32 %26, i64 %29, i32 %32, i32 %35, i32 %38)
  ret void
}

declare dso_local i32 @kvmppc_e500_shadow_release(%struct.kvmppc_vcpu_e500*, i32, i32) #1

declare dso_local i32 @trace_kvm_stlb_inval(i32, i64, i32, i32, i32) #1

declare dso_local i32 @index_of(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
