; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_unsync_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_unsync_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_page = type { i32 }
%struct.kvm_mmu_pages = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_mmu_page*, %struct.kvm_mmu_pages*)* @mmu_unsync_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_unsync_walk(%struct.kvm_mmu_page* %0, %struct.kvm_mmu_pages* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_mmu_page*, align 8
  %5 = alloca %struct.kvm_mmu_pages*, align 8
  store %struct.kvm_mmu_page* %0, %struct.kvm_mmu_page** %4, align 8
  store %struct.kvm_mmu_pages* %1, %struct.kvm_mmu_pages** %5, align 8
  %6 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

11:                                               ; preds = %2
  %12 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %5, align 8
  %13 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %14 = call i32 @mmu_pages_add(%struct.kvm_mmu_pages* %12, %struct.kvm_mmu_page* %13, i32 0)
  %15 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %16 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %5, align 8
  %17 = call i32 @__mmu_unsync_walk(%struct.kvm_mmu_page* %15, %struct.kvm_mmu_pages* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %11, %10
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @mmu_pages_add(%struct.kvm_mmu_pages*, %struct.kvm_mmu_page*, i32) #1

declare dso_local i32 @__mmu_unsync_walk(%struct.kvm_mmu_page*, %struct.kvm_mmu_pages*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
