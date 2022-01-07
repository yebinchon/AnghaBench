; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_destroy_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_destroy_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_destroy_vm(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %3 = load %struct.kvm*, %struct.kvm** %2, align 8
  %4 = call i32 @kvm_iommu_unmap_guest(%struct.kvm* %3)
  %5 = load %struct.kvm*, %struct.kvm** %2, align 8
  %6 = getelementptr inbounds %struct.kvm, %struct.kvm* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @kfree(i32 %8)
  %10 = load %struct.kvm*, %struct.kvm** %2, align 8
  %11 = call i32 @kvm_release_vm_pages(%struct.kvm* %10)
  %12 = load %struct.kvm*, %struct.kvm** %2, align 8
  %13 = call i32 @kvm_free_physmem(%struct.kvm* %12)
  %14 = load %struct.kvm*, %struct.kvm** %2, align 8
  %15 = getelementptr inbounds %struct.kvm, %struct.kvm* %14, i32 0, i32 0
  %16 = call i32 @cleanup_srcu_struct(i32* %15)
  %17 = load %struct.kvm*, %struct.kvm** %2, align 8
  %18 = call i32 @free_kvm(%struct.kvm* %17)
  ret void
}

declare dso_local i32 @kvm_iommu_unmap_guest(%struct.kvm*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kvm_release_vm_pages(%struct.kvm*) #1

declare dso_local i32 @kvm_free_physmem(%struct.kvm*) #1

declare dso_local i32 @cleanup_srcu_struct(i32*) #1

declare dso_local i32 @free_kvm(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
