; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_mmu_unprotect_page_virt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_mmu_unprotect_page_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@tdp_enabled = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mmu_unprotect_page_virt(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @tdp_enabled, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @kvm_mmu_gva_to_gpa_read(%struct.kvm_vcpu* %12, i32 %13, i32* null)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = call i32 @kvm_mmu_unprotect_page(%struct.TYPE_2__* %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %11, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @kvm_mmu_gva_to_gpa_read(%struct.kvm_vcpu*, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kvm_mmu_unprotect_page(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
