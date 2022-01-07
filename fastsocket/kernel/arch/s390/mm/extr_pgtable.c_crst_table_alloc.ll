; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_pgtable.c_crst_table_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_pgtable.c_crst_table_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.page = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ALLOC_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @crst_table_alloc(%struct.mm_struct* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = load i32, i32* @ALLOC_ORDER, align 4
  %10 = call %struct.page* @alloc_pages(i32 %8, i32 %9)
  store %struct.page* %10, %struct.page** %6, align 8
  %11 = load %struct.page*, %struct.page** %6, align 8
  %12 = icmp ne %struct.page* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i64* null, i64** %3, align 8
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.page*, %struct.page** %6, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load i32, i32* @ALLOC_ORDER, align 4
  %22 = call %struct.page* @alloc_pages(i32 %20, i32 %21)
  store %struct.page* %22, %struct.page** %7, align 8
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = icmp ne %struct.page* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = load i32, i32* @ALLOC_ORDER, align 4
  %28 = call i32 @__free_pages(%struct.page* %26, i32 %27)
  store i64* null, i64** %3, align 8
  br label %52

29:                                               ; preds = %19
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = call i64 @page_to_phys(%struct.page* %30)
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %14
  %35 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.page*, %struct.page** %6, align 8
  %40 = getelementptr inbounds %struct.page, %struct.page* %39, i32 0, i32 0
  %41 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %42 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = call i32 @list_add(i32* %40, i32* %43)
  %45 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %46 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = call i64 @page_to_phys(%struct.page* %49)
  %51 = inttoptr i64 %50 to i64*
  store i64* %51, i64** %3, align 8
  br label %52

52:                                               ; preds = %34, %25, %13
  %53 = load i64*, i64** %3, align 8
  ret i64* %53
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
