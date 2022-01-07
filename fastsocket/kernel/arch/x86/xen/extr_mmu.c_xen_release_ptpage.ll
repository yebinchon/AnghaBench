; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_release_ptpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_release_ptpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PT_PTE = common dso_local global i32 0, align 4
@USE_SPLIT_PTLOCKS = common dso_local global i64 0, align 8
@MMUEXT_UNPIN_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @xen_release_ptpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_release_ptpage(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = call %struct.page* @pfn_to_page(i64 %6)
  store %struct.page* %7, %struct.page** %5, align 8
  %8 = load %struct.page*, %struct.page** %5, align 8
  %9 = call i64 @PagePinned(%struct.page* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load %struct.page*, %struct.page** %5, align 8
  %13 = call i32 @PageHighMem(%struct.page* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PT_PTE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i64, i64* @USE_SPLIT_PTLOCKS, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @MMUEXT_UNPIN_TABLE, align 4
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @pin_pagetable_pfn(i32 %23, i64 %24)
  br label %26

26:                                               ; preds = %22, %19, %15
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @PFN_PHYS(i64 %27)
  %29 = call i32 @__va(i32 %28)
  %30 = call i32 @make_lowmem_page_readwrite(i32 %29)
  br label %31

31:                                               ; preds = %26, %11
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = call i32 @ClearPagePinned(%struct.page* %32)
  br label %34

34:                                               ; preds = %31, %2
  ret void
}

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @PagePinned(%struct.page*) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i32 @pin_pagetable_pfn(i32, i64) #1

declare dso_local i32 @make_lowmem_page_readwrite(i32) #1

declare dso_local i32 @__va(i32) #1

declare dso_local i32 @PFN_PHYS(i64) #1

declare dso_local i32 @ClearPagePinned(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
