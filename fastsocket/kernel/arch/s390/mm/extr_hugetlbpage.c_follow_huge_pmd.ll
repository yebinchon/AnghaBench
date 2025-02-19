; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_hugetlbpage.c_follow_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_hugetlbpage.c_follow_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mm_struct = type { i32 }

@MACHINE_HAS_HPAGE = common dso_local global i32 0, align 4
@HPAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @follow_huge_pmd(%struct.mm_struct* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @MACHINE_HAS_HPAGE, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store %struct.page* null, %struct.page** %5, align 8
  br label %31

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.page* @pmd_page(i32 %16)
  store %struct.page* %17, %struct.page** %10, align 8
  %18 = load %struct.page*, %struct.page** %10, align 8
  %19 = icmp ne %struct.page* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @HPAGE_MASK, align 8
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  %27 = load %struct.page*, %struct.page** %10, align 8
  %28 = getelementptr inbounds %struct.page, %struct.page* %27, i64 %26
  store %struct.page* %28, %struct.page** %10, align 8
  br label %29

29:                                               ; preds = %20, %14
  %30 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %30, %struct.page** %5, align 8
  br label %31

31:                                               ; preds = %29, %13
  %32 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %32
}

declare dso_local %struct.page* @pmd_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
