; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x_tlb.c_tlbe_is_host_safe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x_tlb.c_tlbe_is_host_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvmppc_44x_tlbe = type { i32 }

@MSR_IS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvmppc_44x_tlbe*)* @tlbe_is_host_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlbe_is_host_safe(%struct.kvm_vcpu* %0, %struct.kvmppc_44x_tlbe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvmppc_44x_tlbe*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvmppc_44x_tlbe* %1, %struct.kvmppc_44x_tlbe** %5, align 8
  %7 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %5, align 8
  %8 = call i32 @get_tlb_v(%struct.kvmppc_44x_tlbe* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

11:                                               ; preds = %2
  %12 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %5, align 8
  %13 = call i32 @get_tlb_ts(%struct.kvmppc_44x_tlbe* %12)
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MSR_IS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = icmp ne i32 %13, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %39

26:                                               ; preds = %11
  %27 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %5, align 8
  %28 = call i32 @get_tlb_raddr(%struct.kvmppc_44x_tlbe* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = call i32 @gfn_to_memslot(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %39

38:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %37, %25, %10
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @get_tlb_v(%struct.kvmppc_44x_tlbe*) #1

declare dso_local i32 @get_tlb_ts(%struct.kvmppc_44x_tlbe*) #1

declare dso_local i32 @get_tlb_raddr(%struct.kvmppc_44x_tlbe*) #1

declare dso_local i32 @gfn_to_memslot(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
