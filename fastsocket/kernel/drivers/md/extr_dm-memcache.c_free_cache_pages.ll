; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-memcache.c_free_cache_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-memcache.c_free_cache_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_list = type { i32, %struct.page_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page_list*)* @free_cache_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cache_pages(%struct.page_list* %0) #0 {
  %2 = alloca %struct.page_list*, align 8
  %3 = alloca %struct.page_list*, align 8
  store %struct.page_list* %0, %struct.page_list** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.page_list*, %struct.page_list** %2, align 8
  %6 = icmp ne %struct.page_list* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = load %struct.page_list*, %struct.page_list** %2, align 8
  store %struct.page_list* %8, %struct.page_list** %3, align 8
  %9 = load %struct.page_list*, %struct.page_list** %3, align 8
  %10 = getelementptr inbounds %struct.page_list, %struct.page_list* %9, i32 0, i32 1
  %11 = load %struct.page_list*, %struct.page_list** %10, align 8
  store %struct.page_list* %11, %struct.page_list** %2, align 8
  %12 = load %struct.page_list*, %struct.page_list** %3, align 8
  %13 = getelementptr inbounds %struct.page_list, %struct.page_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.page_list*, %struct.page_list** %3, align 8
  %20 = getelementptr inbounds %struct.page_list, %struct.page_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @__free_page(i32 %21)
  %23 = load %struct.page_list*, %struct.page_list** %3, align 8
  %24 = call i32 @kfree(%struct.page_list* %23)
  br label %4

25:                                               ; preds = %4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @kfree(%struct.page_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
