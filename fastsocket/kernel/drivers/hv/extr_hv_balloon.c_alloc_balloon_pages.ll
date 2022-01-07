; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_balloon.c_alloc_balloon_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_balloon.c_alloc_balloon_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_dynmem_device = type { i32 }
%struct.dm_balloon_response = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_dynmem_device*, i32, %struct.dm_balloon_response*, i32, i32*)* @alloc_balloon_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_balloon_pages(%struct.hv_dynmem_device* %0, i32 %1, %struct.dm_balloon_response* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hv_dynmem_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_balloon_response*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  store %struct.hv_dynmem_device* %0, %struct.hv_dynmem_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dm_balloon_response* %2, %struct.dm_balloon_response** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %106

18:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %101, %18
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %10, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %104

25:                                               ; preds = %19
  %26 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %9, align 8
  %27 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 4
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %6, align 4
  br label %106

37:                                               ; preds = %25
  %38 = load i32, i32* @GFP_HIGHUSER, align 4
  %39 = load i32, i32* @__GFP_NORETRY, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @__GFP_NOWARN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @PAGE_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = call i32 @get_order(i32 %47)
  %49 = call %struct.page* @alloc_pages(i32 %44, i32 %48)
  store %struct.page* %49, %struct.page** %13, align 8
  %50 = load %struct.page*, %struct.page** %13, align 8
  %51 = icmp ne %struct.page* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %37
  %53 = load i32*, i32** %11, align 8
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %6, align 4
  br label %106

57:                                               ; preds = %37
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %7, align 8
  %60 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.page*, %struct.page** %13, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @PAGE_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = call i32 @get_order(i32 %69)
  %71 = call i32 @split_page(%struct.page* %66, i32 %70)
  br label %72

72:                                               ; preds = %65, %57
  %73 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %9, align 8
  %74 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.page*, %struct.page** %13, align 8
  %78 = call i32 @page_to_pfn(%struct.page* %77)
  %79 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %9, align 8
  %80 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 %78, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %9, align 8
  %89 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %87, i32* %95, align 4
  %96 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %9, align 8
  %97 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 4
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %72
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %19

104:                                              ; preds = %19
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %104, %52, %33, %17
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @split_page(%struct.page*, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
