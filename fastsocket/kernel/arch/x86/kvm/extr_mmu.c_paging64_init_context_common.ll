; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_paging64_init_context_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_paging64_init_context_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_mmu }
%struct.kvm_mmu = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@paging_new_cr3 = common dso_local global i32 0, align 4
@paging64_page_fault = common dso_local global i32 0, align 4
@paging64_gva_to_gpa = common dso_local global i32 0, align 4
@paging64_prefetch_page = common dso_local global i32 0, align 4
@paging64_sync_page = common dso_local global i32 0, align 4
@paging64_invlpg = common dso_local global i32 0, align 4
@paging_free = common dso_local global i32 0, align 4
@INVALID_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @paging64_init_context_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @paging64_init_context_common(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_mmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.kvm_mmu* %8, %struct.kvm_mmu** %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call i32 @is_pae(%struct.kvm_vcpu* %9)
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i32, i32* @paging_new_cr3, align 4
  %13 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @paging64_page_fault, align 4
  %16 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @paging64_gva_to_gpa, align 4
  %19 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @paging64_prefetch_page, align 4
  %22 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %23 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @paging64_sync_page, align 4
  %25 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %26 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @paging64_invlpg, align 4
  %28 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %29 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @paging_free, align 4
  %31 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %32 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %35 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %38 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @INVALID_PAGE, align 4
  %40 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  ret i32 0
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @is_pae(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
