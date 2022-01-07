; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_pool_unpopulate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_pool_unpopulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32, i32, i32, i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@tt_unpopulated = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_pool_unpopulate(%struct.ttm_tt* %0) #0 {
  %2 = alloca %struct.ttm_tt*, align 8
  %3 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %47, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %7 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %50

10:                                               ; preds = %4
  %11 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %12 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %11, i32 0, i32 4
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %10
  %20 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %21 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %20, i32 0, i32 5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %26 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %25, i32 0, i32 4
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ttm_mem_global_free_page(i32 %24, i64 %31)
  %33 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %34 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %33, i32 0, i32 4
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %40 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %43 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ttm_put_pages(i64* %38, i32 1, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %19, %10
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %4

50:                                               ; preds = %4
  %51 = load i32, i32* @tt_unpopulated, align 4
  %52 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %53 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  ret void
}

declare dso_local i32 @ttm_mem_global_free_page(i32, i64) #1

declare dso_local i32 @ttm_put_pages(i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
