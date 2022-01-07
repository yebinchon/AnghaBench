; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_nonpaging_init_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_nonpaging_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_mmu }
%struct.kvm_mmu = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@nonpaging_new_cr3 = common dso_local global i32 0, align 4
@nonpaging_page_fault = common dso_local global i32 0, align 4
@nonpaging_gva_to_gpa = common dso_local global i32 0, align 4
@nonpaging_free = common dso_local global i32 0, align 4
@nonpaging_prefetch_page = common dso_local global i32 0, align 4
@nonpaging_sync_page = common dso_local global i32 0, align 4
@nonpaging_invlpg = common dso_local global i32 0, align 4
@PT32E_ROOT_LEVEL = common dso_local global i32 0, align 4
@INVALID_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @nonpaging_init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nonpaging_init_context(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_mmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.kvm_mmu* %6, %struct.kvm_mmu** %3, align 8
  %7 = load i32, i32* @nonpaging_new_cr3, align 4
  %8 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %8, i32 0, i32 9
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @nonpaging_page_fault, align 4
  %11 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @nonpaging_gva_to_gpa, align 4
  %14 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @nonpaging_free, align 4
  %17 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @nonpaging_prefetch_page, align 4
  %20 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @nonpaging_sync_page, align 4
  %23 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @nonpaging_invlpg, align 4
  %26 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @PT32E_ROOT_LEVEL, align 4
  %31 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %32 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @INVALID_PAGE, align 4
  %34 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
