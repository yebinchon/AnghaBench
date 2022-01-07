; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_mmu_free_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_mmu_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_mmu_page = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.kvm_mmu_page*)* @kvm_mmu_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_mmu_free_page(%struct.kvm* %0, %struct.kvm_mmu_page* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_mmu_page*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %4, align 8
  %5 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %6 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @is_empty_shadow_page(i32 %7)
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %10, i32 0, i32 2
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @virt_to_page(i32 %15)
  %17 = call i32 @__free_page(i32 %16)
  %18 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @virt_to_page(i32 %20)
  %22 = call i32 @__free_page(i32 %21)
  %23 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %24 = call i32 @kfree(%struct.kvm_mmu_page* %23)
  %25 = load %struct.kvm*, %struct.kvm** %3, align 8
  %26 = call i32 @kvm_mod_used_mmu_pages(%struct.kvm* %25, i32 -1)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @is_empty_shadow_page(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @kfree(%struct.kvm_mmu_page*) #1

declare dso_local i32 @kvm_mod_used_mmu_pages(%struct.kvm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
