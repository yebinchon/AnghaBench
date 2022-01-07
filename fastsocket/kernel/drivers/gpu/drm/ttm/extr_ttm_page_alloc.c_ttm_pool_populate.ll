; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_pool_populate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_pool_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64, i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ttm_mem_global* }
%struct.ttm_mem_global = type { i32 }

@tt_unpopulated = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SWAPPED = common dso_local global i32 0, align 4
@tt_unbound = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_pool_populate(%struct.ttm_tt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.ttm_mem_global*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  %7 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %8 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %7, i32 0, i32 5
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %10, align 8
  store %struct.ttm_mem_global* %11, %struct.ttm_mem_global** %4, align 8
  %12 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %13 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @tt_unpopulated, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %67, %18
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %22 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %19
  %26 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %27 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %33 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %36 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ttm_get_pages(i32* %31, i32 1, i32 %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %25
  %42 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %43 = call i32 @ttm_pool_unpopulate(%struct.ttm_tt* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %95

46:                                               ; preds = %25
  %47 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %48 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %49 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ttm_mem_global_alloc_page(%struct.ttm_mem_global* %47, i32 %54, i32 0, i32 0)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %63 = call i32 @ttm_pool_unpopulate(%struct.ttm_tt* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %95

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %19

70:                                               ; preds = %19
  %71 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %72 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @TTM_PAGE_FLAG_SWAPPED, align 4
  %75 = and i32 %73, %74
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %70
  %79 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %80 = call i32 @ttm_tt_swapin(%struct.ttm_tt* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %88 = call i32 @ttm_pool_unpopulate(%struct.ttm_tt* %87)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %95

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %70
  %92 = load i64, i64* @tt_unbound, align 8
  %93 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %94 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %86, %61, %41, %17
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @ttm_get_pages(i32*, i32, i32, i32) #1

declare dso_local i32 @ttm_pool_unpopulate(%struct.ttm_tt*) #1

declare dso_local i32 @ttm_mem_global_alloc_page(%struct.ttm_mem_global*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_tt_swapin(%struct.ttm_tt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
