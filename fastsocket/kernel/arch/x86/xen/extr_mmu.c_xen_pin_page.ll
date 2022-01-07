; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_pin_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_pin_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.multicall_space = type { i32 }

@PT_PTE = common dso_local global i32 0, align 4
@PAGE_KERNEL_RO = common dso_local global i32 0, align 4
@PT_PGD = common dso_local global i32 0, align 4
@UVMF_TLB_FLUSH = common dso_local global i32 0, align 4
@MMUEXT_PIN_L1_TABLE = common dso_local global i32 0, align 4
@xen_pte_unlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.page*, i32)* @xen_pin_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pin_page(%struct.mm_struct* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.multicall_space, align 4
  %12 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call i32 @TestSetPagePinned(%struct.page* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %65

18:                                               ; preds = %3
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = call i64 @PageHighMem(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %64

23:                                               ; preds = %18
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = call i8* @lowmem_page_address(%struct.page* %24)
  store i8* %25, i8** %9, align 8
  %26 = load %struct.page*, %struct.page** %5, align 8
  %27 = call i64 @page_to_pfn(%struct.page* %26)
  store i64 %27, i64* %10, align 8
  %28 = call i32 @__xen_mc_entry(i32 0)
  %29 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %11, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %12, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @PT_PTE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %36 = call i32* @xen_pte_lock(%struct.page* %34, %struct.mm_struct* %35)
  store i32* %36, i32** %12, align 8
  br label %37

37:                                               ; preds = %33, %23
  %38 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %11, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* @PAGE_KERNEL_RO, align 4
  %44 = call i32 @pfn_pte(i64 %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PT_PGD, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @UVMF_TLB_FLUSH, align 4
  br label %51

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = call i32 @MULTI_update_va_mapping(i32 %39, i64 %41, i32 %44, i32 %52)
  %54 = load i32*, i32** %12, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* @MMUEXT_PIN_L1_TABLE, align 4
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @xen_do_pin(i32 %57, i64 %58)
  %60 = load i32, i32* @xen_pte_unlock, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @xen_mc_callback(i32 %60, i32* %61)
  br label %63

63:                                               ; preds = %56, %51
  br label %64

64:                                               ; preds = %63, %22
  br label %65

65:                                               ; preds = %64, %17
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @TestSetPagePinned(%struct.page*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i8* @lowmem_page_address(%struct.page*) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @__xen_mc_entry(i32) #1

declare dso_local i32* @xen_pte_lock(%struct.page*, %struct.mm_struct*) #1

declare dso_local i32 @MULTI_update_va_mapping(i32, i64, i32, i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

declare dso_local i32 @xen_do_pin(i32, i64) #1

declare dso_local i32 @xen_mc_callback(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
