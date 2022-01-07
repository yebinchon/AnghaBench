; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_hugetlbpage.c_arch_release_hugepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_hugetlbpage.c_arch_release_hugepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }

@MACHINE_HAS_HPAGE = common dso_local global i64 0, align 8
@_PAGE_TYPE_EMPTY = common dso_local global i32 0, align 4
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_release_hugepage(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load i64, i64* @MACHINE_HAS_HPAGE, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %30

7:                                                ; preds = %1
  %8 = load %struct.page*, %struct.page** %2, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i64 1
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  br label %30

16:                                               ; preds = %7
  %17 = load i32*, i32** %3, align 8
  %18 = bitcast i32* %17 to i64*
  %19 = load i32, i32* @_PAGE_TYPE_EMPTY, align 4
  %20 = load i32, i32* @PTRS_PER_PTE, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i32 @clear_table(i64* %18, i32 %19, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @pte_free(i32* @init_mm, i32* %25)
  %27 = load %struct.page*, %struct.page** %2, align 8
  %28 = getelementptr inbounds %struct.page, %struct.page* %27, i64 1
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %16, %15, %6
  ret void
}

declare dso_local i32 @clear_table(i64*, i32, i32) #1

declare dso_local i32 @pte_free(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
