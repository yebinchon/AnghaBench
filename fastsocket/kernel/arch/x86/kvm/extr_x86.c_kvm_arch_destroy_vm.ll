; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_destroy_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_destroy_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.kvm*, i64, i64, %struct.kvm*, %struct.kvm* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_destroy_vm(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %3 = load %struct.kvm*, %struct.kvm** %2, align 8
  %4 = call i32 @kvm_iommu_unmap_guest(%struct.kvm* %3)
  %5 = load %struct.kvm*, %struct.kvm** %2, align 8
  %6 = getelementptr inbounds %struct.kvm, %struct.kvm* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 4
  %8 = load %struct.kvm*, %struct.kvm** %7, align 8
  %9 = call i32 @kfree(%struct.kvm* %8)
  %10 = load %struct.kvm*, %struct.kvm** %2, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load %struct.kvm*, %struct.kvm** %12, align 8
  %14 = call i32 @kfree(%struct.kvm* %13)
  %15 = load %struct.kvm*, %struct.kvm** %2, align 8
  %16 = call i32 @kvm_free_vcpus(%struct.kvm* %15)
  %17 = load %struct.kvm*, %struct.kvm** %2, align 8
  %18 = call i32 @kvm_free_physmem(%struct.kvm* %17)
  %19 = load %struct.kvm*, %struct.kvm** %2, align 8
  %20 = getelementptr inbounds %struct.kvm, %struct.kvm* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.kvm*, %struct.kvm** %2, align 8
  %26 = getelementptr inbounds %struct.kvm, %struct.kvm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @put_page(i64 %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.kvm*, %struct.kvm** %2, align 8
  %32 = getelementptr inbounds %struct.kvm, %struct.kvm* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.kvm*, %struct.kvm** %2, align 8
  %38 = getelementptr inbounds %struct.kvm, %struct.kvm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @put_page(i64 %40)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.kvm*, %struct.kvm** %2, align 8
  %44 = getelementptr inbounds %struct.kvm, %struct.kvm* %43, i32 0, i32 1
  %45 = call i32 @cleanup_srcu_struct(i32* %44)
  %46 = load %struct.kvm*, %struct.kvm** %2, align 8
  %47 = getelementptr inbounds %struct.kvm, %struct.kvm* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.kvm*, %struct.kvm** %48, align 8
  %50 = call i32 @kfree(%struct.kvm* %49)
  %51 = load %struct.kvm*, %struct.kvm** %2, align 8
  %52 = call i32 @kfree(%struct.kvm* %51)
  ret void
}

declare dso_local i32 @kvm_iommu_unmap_guest(%struct.kvm*) #1

declare dso_local i32 @kfree(%struct.kvm*) #1

declare dso_local i32 @kvm_free_vcpus(%struct.kvm*) #1

declare dso_local i32 @kvm_free_physmem(%struct.kvm*) #1

declare dso_local i32 @put_page(i64) #1

declare dso_local i32 @cleanup_srcu_struct(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
