; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_mmu_alloc_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_mmu_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_page = type { i32*, i64, i32, i32, i32, i8*, i8* }
%struct.kvm_vcpu = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@KVM_MEMORY_SLOTS = common dso_local global i64 0, align 8
@KVM_PRIVATE_MEM_SLOTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_mmu_page* (%struct.kvm_vcpu*, i32*)* @kvm_mmu_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_mmu_page* @kvm_mmu_alloc_page(%struct.kvm_vcpu* %0, i32* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kvm_mmu_page*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = call i8* @mmu_memory_cache_alloc(i32* %8, i32 48)
  %10 = bitcast i8* %9 to %struct.kvm_mmu_page*
  store %struct.kvm_mmu_page* %10, %struct.kvm_mmu_page** %5, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = call i8* @mmu_memory_cache_alloc(i32* %13, i32 %14)
  %16 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %16, i32 0, i32 5
  store i8* %15, i8** %17, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i8* @mmu_memory_cache_alloc(i32* %20, i32 %21)
  %23 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %23, i32 0, i32 6
  store i8* %22, i8** %24, align 8
  %25 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %26 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %25, i32 0, i32 5
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @virt_to_page(i8* %27)
  %29 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %30 = ptrtoint %struct.kvm_mmu_page* %29 to i64
  %31 = call i32 @set_page_private(i32 %28, i64 %30)
  %32 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %32, i32 0, i32 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @list_add(i32* %33, i32* %38)
  %40 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %40, i32 0, i32 3
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %44 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* @KVM_MEMORY_SLOTS, align 8
  %47 = load i64, i64* @KVM_PRIVATE_MEM_SLOTS, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @bitmap_zero(i32 %45, i64 %48)
  %50 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %51 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %54 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = call i32 @kvm_mod_used_mmu_pages(%struct.TYPE_6__* %57, i32 1)
  %59 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  ret %struct.kvm_mmu_page* %59
}

declare dso_local i8* @mmu_memory_cache_alloc(i32*, i32) #1

declare dso_local i32 @set_page_private(i32, i64) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bitmap_zero(i32, i64) #1

declare dso_local i32 @kvm_mod_used_mmu_pages(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
