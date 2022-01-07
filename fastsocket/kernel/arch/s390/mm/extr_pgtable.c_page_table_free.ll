; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_pgtable.c_page_table_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_pgtable.c_page_table_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.page = type { i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@FRAG_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_table_free(%struct.mm_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %14 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ true, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i64 3, i64 1
  store i64 %21, i64* %6, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = call i32 @__pa(i64* %22)
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %23, %25
  %27 = sdiv i32 %26, 256
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 8
  %30 = load i64, i64* %6, align 8
  %31 = shl i64 %30, %29
  store i64 %31, i64* %6, align 8
  %32 = load i64*, i64** %4, align 8
  %33 = call i32 @__pa(i64* %32)
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = call %struct.page* @pfn_to_page(i32 %35)
  store %struct.page* %36, %struct.page** %5, align 8
  %37 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.page*, %struct.page** %5, align 8
  %43 = getelementptr inbounds %struct.page, %struct.page* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = xor i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load %struct.page*, %struct.page** %5, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @FRAG_MASK, align 4
  %50 = sext i32 %49 to i64
  %51 = and i64 %48, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %18
  %54 = load %struct.page*, %struct.page** %5, align 8
  %55 = getelementptr inbounds %struct.page, %struct.page* %54, i32 0, i32 1
  %56 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %57 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = call i32 @list_move(i32* %55, i32* %58)
  store %struct.page* null, %struct.page** %5, align 8
  br label %64

60:                                               ; preds = %18
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = getelementptr inbounds %struct.page, %struct.page* %61, i32 0, i32 1
  %63 = call i32 @list_del(i32* %62)
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %66 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.page*, %struct.page** %5, align 8
  %70 = icmp ne %struct.page* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.page*, %struct.page** %5, align 8
  %73 = call i32 @pgtable_page_dtor(%struct.page* %72)
  %74 = load %struct.page*, %struct.page** %5, align 8
  %75 = call i32 @__free_page(%struct.page* %74)
  br label %76

76:                                               ; preds = %71, %64
  ret void
}

declare dso_local i32 @__pa(i64*) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pgtable_page_dtor(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
