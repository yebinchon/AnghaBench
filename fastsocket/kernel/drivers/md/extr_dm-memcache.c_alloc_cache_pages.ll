; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-memcache.c_alloc_cache_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-memcache.c_alloc_cache_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_list = type { %struct.page_list*, %struct.page* }
%struct.page = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page_list* (i32)* @alloc_cache_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page_list* @alloc_cache_pages(i32 %0) #0 {
  %2 = alloca %struct.page_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.page_list*, align 8
  %5 = alloca %struct.page_list*, align 8
  %6 = alloca %struct.page*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.page_list* null, %struct.page_list** %5, align 8
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* %3, align 4
  %9 = add i32 %8, -1
  store i32 %9, i32* %3, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load i32, i32* @GFP_NOIO, align 4
  %13 = call %struct.page* @alloc_page(i32 %12)
  store %struct.page* %13, %struct.page** %6, align 8
  %14 = load %struct.page*, %struct.page** %6, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %35

17:                                               ; preds = %11
  %18 = load i32, i32* @GFP_NOIO, align 4
  %19 = call %struct.page_list* @kmalloc(i32 16, i32 %18)
  store %struct.page_list* %19, %struct.page_list** %4, align 8
  %20 = load %struct.page_list*, %struct.page_list** %4, align 8
  %21 = icmp ne %struct.page_list* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call i32 @__free_page(%struct.page* %23)
  br label %35

25:                                               ; preds = %17
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = load %struct.page_list*, %struct.page_list** %4, align 8
  %28 = getelementptr inbounds %struct.page_list, %struct.page_list* %27, i32 0, i32 1
  store %struct.page* %26, %struct.page** %28, align 8
  %29 = load %struct.page_list*, %struct.page_list** %5, align 8
  %30 = load %struct.page_list*, %struct.page_list** %4, align 8
  %31 = getelementptr inbounds %struct.page_list, %struct.page_list* %30, i32 0, i32 0
  store %struct.page_list* %29, %struct.page_list** %31, align 8
  %32 = load %struct.page_list*, %struct.page_list** %4, align 8
  store %struct.page_list* %32, %struct.page_list** %5, align 8
  br label %7

33:                                               ; preds = %7
  %34 = load %struct.page_list*, %struct.page_list** %5, align 8
  store %struct.page_list* %34, %struct.page_list** %2, align 8
  br label %38

35:                                               ; preds = %22, %16
  %36 = load %struct.page_list*, %struct.page_list** %5, align 8
  %37 = call i32 @free_cache_pages(%struct.page_list* %36)
  store %struct.page_list* null, %struct.page_list** %2, align 8
  br label %38

38:                                               ; preds = %35, %33
  %39 = load %struct.page_list*, %struct.page_list** %2, align 8
  ret %struct.page_list* %39
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local %struct.page_list* @kmalloc(i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @free_cache_pages(%struct.page_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
