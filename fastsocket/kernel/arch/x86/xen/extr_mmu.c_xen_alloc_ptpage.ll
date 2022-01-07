; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_alloc_ptpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_alloc_ptpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

@PT_PTE = common dso_local global i32 0, align 4
@USE_SPLIT_PTLOCKS = common dso_local global i64 0, align 8
@MMUEXT_PIN_L1_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i64, i32)* @xen_alloc_ptpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_alloc_ptpage(%struct.mm_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %5, align 8
  %9 = call %struct.page* @pfn_to_page(i64 %8)
  store %struct.page* %9, %struct.page** %7, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @virt_to_page(i32 %12)
  %14 = call i64 @PagePinned(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %3
  %17 = load %struct.page*, %struct.page** %7, align 8
  %18 = call i32 @SetPagePinned(%struct.page* %17)
  %19 = load %struct.page*, %struct.page** %7, align 8
  %20 = call i32 @PageHighMem(%struct.page* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @PFN_PHYS(i64 %23)
  %25 = call i32 @__va(i32 %24)
  %26 = call i32 @make_lowmem_page_readonly(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PT_PTE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load i64, i64* @USE_SPLIT_PTLOCKS, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @MMUEXT_PIN_L1_TABLE, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @pin_pagetable_pfn(i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %33, %30, %22
  br label %40

38:                                               ; preds = %16
  %39 = call i32 (...) @kmap_flush_unused()
  br label %40

40:                                               ; preds = %38, %37
  br label %41

41:                                               ; preds = %40, %3
  ret void
}

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @PagePinned(i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @SetPagePinned(%struct.page*) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i32 @make_lowmem_page_readonly(i32) #1

declare dso_local i32 @__va(i32) #1

declare dso_local i32 @PFN_PHYS(i64) #1

declare dso_local i32 @pin_pagetable_pfn(i32, i64) #1

declare dso_local i32 @kmap_flush_unused(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
