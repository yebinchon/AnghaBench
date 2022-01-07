; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_topup_memory_cache_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_topup_memory_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_memory_cache = type { i32, i32* }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_mmu_memory_cache*, i32)* @mmu_topup_memory_cache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_topup_memory_cache_page(%struct.kvm_mmu_memory_cache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_mmu_memory_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store %struct.kvm_mmu_memory_cache* %0, %struct.kvm_mmu_memory_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %31, %13
  %15 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %14
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.page* @alloc_page(i32 %24)
  store %struct.page* %25, %struct.page** %6, align 8
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = icmp ne %struct.page* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %46

31:                                               ; preds = %23
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i32 @set_page_private(%struct.page* %32, i32 0)
  %34 = load %struct.page*, %struct.page** %6, align 8
  %35 = call i32 @page_address(%struct.page* %34)
  %36 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %4, align 8
  %37 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %4, align 8
  %40 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  store i32 %35, i32* %44, align 4
  br label %14

45:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %28, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
