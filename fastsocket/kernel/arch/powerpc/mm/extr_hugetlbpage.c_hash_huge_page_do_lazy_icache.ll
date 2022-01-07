; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_hash_huge_page_do_lazy_icache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_hash_huge_page_do_lazy_icache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PG_arch_1 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@HPTE_R_N = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i64)* @hash_huge_page_do_lazy_icache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_huge_page_do_lazy_icache(i64 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @pte_pfn(i32 %12)
  %14 = call i32 @pfn_valid(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %6, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  br label %65

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.page* @pte_page(i32 %20)
  store %struct.page* %21, %struct.page** %10, align 8
  %22 = load i32, i32* @PG_arch_1, align 4
  %23 = load %struct.page*, %struct.page** %10, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 0
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %62, label %27

27:                                               ; preds = %19
  %28 = load %struct.page*, %struct.page** %10, align 8
  %29 = call i32 @PageReserved(%struct.page* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 1024
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %49, %34
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = udiv i64 %38, %39
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.page*, %struct.page** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.page, %struct.page* %43, i64 %45
  %47 = call i32 @page_address(%struct.page* %46)
  %48 = call i32 @__flush_dcache_icache(i32 %47)
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %35

52:                                               ; preds = %35
  %53 = load i32, i32* @PG_arch_1, align 4
  %54 = load %struct.page*, %struct.page** %10, align 8
  %55 = getelementptr inbounds %struct.page, %struct.page* %54, i32 0, i32 0
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  br label %61

57:                                               ; preds = %31
  %58 = load i64, i64* @HPTE_R_N, align 8
  %59 = load i64, i64* %6, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %57, %52
  br label %62

62:                                               ; preds = %61, %27, %19
  %63 = load i64, i64* %6, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %16
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @pfn_valid(i32) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @PageReserved(%struct.page*) #1

declare dso_local i32 @__flush_dcache_icache(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
