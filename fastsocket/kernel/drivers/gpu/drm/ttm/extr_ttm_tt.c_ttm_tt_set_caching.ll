; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_set_caching.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_set_caching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32, i64, i32, %struct.page** }
%struct.page = type { i32 }

@tt_unpopulated = common dso_local global i64 0, align 8
@tt_cached = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*, i32)* @ttm_tt_set_caching to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_tt_set_caching(%struct.ttm_tt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_tt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %11 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

16:                                               ; preds = %2
  %17 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %18 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @tt_unpopulated, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %25 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %3, align 4
  br label %113

26:                                               ; preds = %16
  %27 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %28 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @tt_cached, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %34 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %33, i32 0, i32 3
  %35 = load %struct.page**, %struct.page*** %34, align 8
  %36 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %37 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @drm_clflush_pages(%struct.page** %35, i32 %38)
  br label %40

40:                                               ; preds = %32, %26
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %75, %40
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %44 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %41
  %48 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %49 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %48, i32 0, i32 3
  %50 = load %struct.page**, %struct.page*** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.page*, %struct.page** %50, i64 %52
  %54 = load %struct.page*, %struct.page** %53, align 8
  store %struct.page* %54, %struct.page** %8, align 8
  %55 = load %struct.page*, %struct.page** %8, align 8
  %56 = icmp ne %struct.page* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %47
  %61 = load %struct.page*, %struct.page** %8, align 8
  %62 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %63 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ttm_tt_set_page_caching(%struct.page* %61, i32 %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %82

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %47
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %41

78:                                               ; preds = %41
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %81 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %3, align 4
  br label %113

82:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %108, %82
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %89 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %88, i32 0, i32 3
  %90 = load %struct.page**, %struct.page*** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.page*, %struct.page** %90, i64 %92
  %94 = load %struct.page*, %struct.page** %93, align 8
  store %struct.page* %94, %struct.page** %8, align 8
  %95 = load %struct.page*, %struct.page** %8, align 8
  %96 = icmp ne %struct.page* %95, null
  %97 = zext i1 %96 to i32
  %98 = call i64 @likely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %87
  %101 = load %struct.page*, %struct.page** %8, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %104 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @ttm_tt_set_page_caching(%struct.page* %101, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %100, %87
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %83

111:                                              ; preds = %83
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %78, %22, %15
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @drm_clflush_pages(%struct.page**, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ttm_tt_set_page_caching(%struct.page*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
