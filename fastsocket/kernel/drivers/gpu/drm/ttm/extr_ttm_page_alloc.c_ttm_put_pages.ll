; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_put_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_put_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.page = type { i32 }
%struct.ttm_page_pool = type { i64, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Erroneous page count. Leaking pages.\0A\00", align 1
@_manager = common dso_local global %struct.TYPE_4__* null, align 8
@NUM_PAGES_TO_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page**, i32, i32, i32)* @ttm_put_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_put_pages(%struct.page** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ttm_page_pool*, align 8
  %11 = alloca i32, align 4
  store %struct.page** %0, %struct.page*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.ttm_page_pool* @ttm_get_pool(i32 %12, i32 %13)
  store %struct.ttm_page_pool* %14, %struct.ttm_page_pool** %10, align 8
  %15 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %10, align 8
  %16 = icmp eq %struct.ttm_page_pool* %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %51, %17
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %18
  %23 = load %struct.page**, %struct.page*** %5, align 8
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.page*, %struct.page** %23, i64 %25
  %27 = load %struct.page*, %struct.page** %26, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %22
  %30 = load %struct.page**, %struct.page*** %5, align 8
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.page*, %struct.page** %30, i64 %32
  %34 = load %struct.page*, %struct.page** %33, align 8
  %35 = call i32 @page_count(%struct.page* %34)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %29
  %40 = load %struct.page**, %struct.page*** %5, align 8
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.page*, %struct.page** %40, i64 %42
  %44 = load %struct.page*, %struct.page** %43, align 8
  %45 = call i32 @__free_page(%struct.page* %44)
  %46 = load %struct.page**, %struct.page*** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.page*, %struct.page** %46, i64 %48
  store %struct.page* null, %struct.page** %49, align 8
  br label %50

50:                                               ; preds = %39, %22
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %11, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %18

54:                                               ; preds = %18
  br label %139

55:                                               ; preds = %4
  %56 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %10, align 8
  %57 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %56, i32 0, i32 1
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %100, %55
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %103

64:                                               ; preds = %60
  %65 = load %struct.page**, %struct.page*** %5, align 8
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.page*, %struct.page** %65, i64 %67
  %69 = load %struct.page*, %struct.page** %68, align 8
  %70 = icmp ne %struct.page* %69, null
  br i1 %70, label %71, label %99

71:                                               ; preds = %64
  %72 = load %struct.page**, %struct.page*** %5, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.page*, %struct.page** %72, i64 %74
  %76 = load %struct.page*, %struct.page** %75, align 8
  %77 = call i32 @page_count(%struct.page* %76)
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %71
  %82 = load %struct.page**, %struct.page*** %5, align 8
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.page*, %struct.page** %82, i64 %84
  %86 = load %struct.page*, %struct.page** %85, align 8
  %87 = getelementptr inbounds %struct.page, %struct.page* %86, i32 0, i32 0
  %88 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %10, align 8
  %89 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %88, i32 0, i32 2
  %90 = call i32 @list_add_tail(i32* %87, i32* %89)
  %91 = load %struct.page**, %struct.page*** %5, align 8
  %92 = load i32, i32* %11, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.page*, %struct.page** %91, i64 %93
  store %struct.page* null, %struct.page** %94, align 8
  %95 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %10, align 8
  %96 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %81, %64
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %60

103:                                              ; preds = %60
  store i32 0, i32* %6, align 4
  %104 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %10, align 8
  %105 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_manager, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %106, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %103
  %113 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %10, align 8
  %114 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_manager, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %115, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @NUM_PAGES_TO_ALLOC, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %112
  %126 = load i32, i32* @NUM_PAGES_TO_ALLOC, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %125, %112
  br label %128

128:                                              ; preds = %127, %103
  %129 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %10, align 8
  %130 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %129, i32 0, i32 1
  %131 = load i64, i64* %9, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %10, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @ttm_page_pool_free(%struct.ttm_page_pool* %136, i32 %137)
  br label %139

139:                                              ; preds = %54, %135, %128
  ret void
}

declare dso_local %struct.ttm_page_pool* @ttm_get_pool(i32, i32) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ttm_page_pool_free(%struct.ttm_page_pool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
