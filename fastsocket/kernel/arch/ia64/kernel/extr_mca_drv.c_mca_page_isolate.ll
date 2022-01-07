; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_mca_drv.c_mca_page_isolate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_mca_drv.c_mca_page_isolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@ISOLATE_NONE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@num_page_isolate = common dso_local global i32 0, align 4
@page_isolate = common dso_local global %struct.page** null, align 8
@ISOLATE_OK = common dso_local global i32 0, align 4
@MAX_PAGE_ISOLATE = common dso_local global i32 0, align 4
@ISOLATE_NG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @mca_page_isolate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mca_page_isolate(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @ia64_phys_addr_valid(i64 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ISOLATE_NONE, align 4
  store i32 %10, i32* %2, align 4
  br label %70

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @PAGE_SHIFT, align 8
  %14 = lshr i64 %12, %13
  %15 = call i32 @pfn_valid(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @ISOLATE_NONE, align 4
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %11
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = lshr i64 %20, %21
  %23 = call %struct.page* @pfn_to_page(i64 %22)
  store %struct.page* %23, %struct.page** %5, align 8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %39, %19
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @num_page_isolate, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.page**, %struct.page*** @page_isolate, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.page*, %struct.page** %29, i64 %31
  %33 = load %struct.page*, %struct.page** %32, align 8
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = icmp eq %struct.page* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @ISOLATE_OK, align 4
  store i32 %37, i32* %2, align 4
  br label %70

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load i32, i32* @num_page_isolate, align 4
  %44 = load i32, i32* @MAX_PAGE_ISOLATE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @ISOLATE_NG, align 4
  store i32 %47, i32* %2, align 4
  br label %70

48:                                               ; preds = %42
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = call i64 @PageSlab(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = call i64 @PageReserved(%struct.page* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @ISOLATE_NG, align 4
  store i32 %57, i32* %2, align 4
  br label %70

58:                                               ; preds = %52
  %59 = load %struct.page*, %struct.page** %5, align 8
  %60 = call i32 @get_page(%struct.page* %59)
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = call i32 @SetPageReserved(%struct.page* %61)
  %63 = load %struct.page*, %struct.page** %5, align 8
  %64 = load %struct.page**, %struct.page*** @page_isolate, align 8
  %65 = load i32, i32* @num_page_isolate, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @num_page_isolate, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds %struct.page*, %struct.page** %64, i64 %67
  store %struct.page* %63, %struct.page** %68, align 8
  %69 = load i32, i32* @ISOLATE_OK, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %58, %56, %46, %36, %17, %9
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @ia64_phys_addr_valid(i64) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @PageSlab(%struct.page*) #1

declare dso_local i64 @PageReserved(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @SetPageReserved(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
