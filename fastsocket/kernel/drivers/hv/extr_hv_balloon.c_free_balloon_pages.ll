; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_balloon.c_free_balloon_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_balloon.c_free_balloon_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_dynmem_device = type { i32 }
%union.dm_mem_page_range = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_dynmem_device*, %union.dm_mem_page_range*)* @free_balloon_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_balloon_pages(%struct.hv_dynmem_device* %0, %union.dm_mem_page_range* %1) #0 {
  %3 = alloca %struct.hv_dynmem_device*, align 8
  %4 = alloca %union.dm_mem_page_range*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.hv_dynmem_device* %0, %struct.hv_dynmem_device** %3, align 8
  store %union.dm_mem_page_range* %1, %union.dm_mem_page_range** %4, align 8
  %9 = load %union.dm_mem_page_range*, %union.dm_mem_page_range** %4, align 8
  %10 = bitcast %union.dm_mem_page_range* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %union.dm_mem_page_range*, %union.dm_mem_page_range** %4, align 8
  %14 = bitcast %union.dm_mem_page_range* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %33, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %6, align 8
  %25 = add nsw i64 %23, %24
  %26 = call %struct.page* @pfn_to_page(i64 %25)
  store %struct.page* %26, %struct.page** %7, align 8
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = call i32 @__free_page(%struct.page* %27)
  %29 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %30 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %17

36:                                               ; preds = %17
  ret void
}

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
