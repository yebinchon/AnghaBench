; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_mmu_module_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_mmu_module_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"kvm_pte_chain\00", align 1
@pte_chain_cache = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"kvm_rmap_desc\00", align 1
@rmap_desc_cache = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"kvm_mmu_page_header\00", align 1
@mmu_page_header_cache = common dso_local global i8* null, align 8
@kvm_total_used_mmu_pages = common dso_local global i32 0, align 4
@mmu_shrinker = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mmu_module_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  store i8* %2, i8** @pte_chain_cache, align 8
  %3 = load i8*, i8** @pte_chain_cache, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %22

6:                                                ; preds = %0
  %7 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  store i8* %7, i8** @rmap_desc_cache, align 8
  %8 = load i8*, i8** @rmap_desc_cache, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  br label %22

11:                                               ; preds = %6
  %12 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  store i8* %12, i8** @mmu_page_header_cache, align 8
  %13 = load i8*, i8** @mmu_page_header_cache, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %22

16:                                               ; preds = %11
  %17 = call i64 @percpu_counter_init(i32* @kvm_total_used_mmu_pages, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %22

20:                                               ; preds = %16
  %21 = call i32 @register_shrinker(i32* @mmu_shrinker)
  store i32 0, i32* %1, align 4
  br label %26

22:                                               ; preds = %19, %15, %10, %5
  %23 = call i32 (...) @mmu_destroy_caches()
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i64 @percpu_counter_init(i32*, i32) #1

declare dso_local i32 @register_shrinker(i32*) #1

declare dso_local i32 @mmu_destroy_caches(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
