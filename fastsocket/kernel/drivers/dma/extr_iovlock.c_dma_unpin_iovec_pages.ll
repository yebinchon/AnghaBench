; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_iovlock.c_dma_unpin_iovec_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_iovlock.c_dma_unpin_iovec_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pinned_list = type { i32, %struct.dma_page_list* }
%struct.dma_page_list = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_unpin_iovec_pages(%struct.dma_pinned_list* %0) #0 {
  %2 = alloca %struct.dma_pinned_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_page_list*, align 8
  store %struct.dma_pinned_list* %0, %struct.dma_pinned_list** %2, align 8
  %6 = load %struct.dma_pinned_list*, %struct.dma_pinned_list** %2, align 8
  %7 = icmp ne %struct.dma_pinned_list* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %56

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %50, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.dma_pinned_list*, %struct.dma_pinned_list** %2, align 8
  %13 = getelementptr inbounds %struct.dma_pinned_list, %struct.dma_pinned_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %10
  %17 = load %struct.dma_pinned_list*, %struct.dma_pinned_list** %2, align 8
  %18 = getelementptr inbounds %struct.dma_pinned_list, %struct.dma_pinned_list* %17, i32 0, i32 1
  %19 = load %struct.dma_page_list*, %struct.dma_page_list** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dma_page_list, %struct.dma_page_list* %19, i64 %21
  store %struct.dma_page_list* %22, %struct.dma_page_list** %5, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %46, %16
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.dma_page_list*, %struct.dma_page_list** %5, align 8
  %26 = getelementptr inbounds %struct.dma_page_list, %struct.dma_page_list* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load %struct.dma_page_list*, %struct.dma_page_list** %5, align 8
  %31 = getelementptr inbounds %struct.dma_page_list, %struct.dma_page_list* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @set_page_dirty_lock(i32 %36)
  %38 = load %struct.dma_page_list*, %struct.dma_page_list** %5, align 8
  %39 = getelementptr inbounds %struct.dma_page_list, %struct.dma_page_list* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @page_cache_release(i32 %44)
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %23

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %10

53:                                               ; preds = %10
  %54 = load %struct.dma_pinned_list*, %struct.dma_pinned_list** %2, align 8
  %55 = call i32 @kfree(%struct.dma_pinned_list* %54)
  br label %56

56:                                               ; preds = %53, %8
  ret void
}

declare dso_local i32 @set_page_dirty_lock(i32) #1

declare dso_local i32 @page_cache_release(i32) #1

declare dso_local i32 @kfree(%struct.dma_pinned_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
