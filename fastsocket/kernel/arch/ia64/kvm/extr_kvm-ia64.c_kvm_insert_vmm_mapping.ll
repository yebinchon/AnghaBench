; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_insert_vmm_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_insert_vmm_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__, %struct.kvm* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@kvm_vmm_base = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@KVM_VMM_BASE = common dso_local global i32 0, align 4
@KVM_VMM_SHIFT = common dso_local global i32 0, align 4
@KVM_VM_DATA_BASE = common dso_local global i32 0, align 4
@KVM_VM_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_insert_vmm_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_insert_vmm_mapping(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 1
  %8 = load %struct.kvm*, %struct.kvm** %7, align 8
  store %struct.kvm* %8, %struct.kvm** %4, align 8
  %9 = load i32, i32* @kvm_vmm_base, align 4
  %10 = call i32 @__pa(i32 %9)
  %11 = load i32, i32* @PAGE_KERNEL, align 4
  %12 = call i32 @mk_pte_phys(i32 %10, i32 %11)
  %13 = call i64 @pte_val(i32 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i32, i32* @KVM_VMM_BASE, align 4
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @KVM_VMM_SHIFT, align 4
  %17 = call i32 @ia64_itr_entry(i32 3, i32 %14, i64 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %46

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.kvm*, %struct.kvm** %4, align 8
  %27 = getelementptr inbounds %struct.kvm, %struct.kvm* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @__pa(i32 %29)
  %31 = load i32, i32* @PAGE_KERNEL, align 4
  %32 = call i32 @mk_pte_phys(i32 %30, i32 %31)
  %33 = call i64 @pte_val(i32 %32)
  store i64 %33, i64* %3, align 8
  %34 = load i32, i32* @KVM_VM_DATA_BASE, align 4
  %35 = load i64, i64* %3, align 8
  %36 = load i32, i32* @KVM_VM_DATA_SHIFT, align 4
  %37 = call i32 @ia64_itr_entry(i32 3, i32 %34, i64 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  br label %46

41:                                               ; preds = %21
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %40, %20
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @mk_pte_phys(i32, i32) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @ia64_itr_entry(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
