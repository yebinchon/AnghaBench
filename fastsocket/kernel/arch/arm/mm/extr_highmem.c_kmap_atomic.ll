; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_highmem.c_kmap_atomic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_highmem.c_kmap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@KM_TYPE_NR = common dso_local global i32 0, align 4
@FIX_KMAP_BEGIN = common dso_local global i64 0, align 8
@kmap_prot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kmap_atomic(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 (...) @pagefault_disable()
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i32 @PageHighMem(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i8* @page_address(%struct.page* %14)
  store i8* %15, i8** %3, align 8
  br label %46

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @debug_kmap_atomic(i32 %17)
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i8* @kmap_high_get(%struct.page* %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %3, align 8
  br label %46

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @KM_TYPE_NR, align 4
  %28 = call i32 (...) @smp_processor_id()
  %29 = mul nsw i32 %27, %28
  %30 = add i32 %26, %29
  store i32 %30, i32* %6, align 4
  %31 = load i64, i64* @FIX_KMAP_BEGIN, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i64 @__fix_to_virt(i64 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32* @TOP_PTE(i64 %36)
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = load i32, i32* @kmap_prot, align 4
  %40 = call i32 @mk_pte(%struct.page* %38, i32 %39)
  %41 = call i32 @set_pte_ext(i32* %37, i32 %40, i32 0)
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @local_flush_tlb_kernel_page(i64 %42)
  %44 = load i64, i64* %7, align 8
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %3, align 8
  br label %46

46:                                               ; preds = %25, %23, %13
  %47 = load i8*, i8** %3, align 8
  ret i8* %47
}

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @debug_kmap_atomic(i32) #1

declare dso_local i8* @kmap_high_get(%struct.page*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @__fix_to_virt(i64) #1

declare dso_local i32 @set_pte_ext(i32*, i32, i32) #1

declare dso_local i32* @TOP_PTE(i64) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @local_flush_tlb_kernel_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
