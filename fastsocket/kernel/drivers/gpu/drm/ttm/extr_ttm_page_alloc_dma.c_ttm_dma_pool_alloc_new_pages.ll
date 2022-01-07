; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc_dma.c_ttm_dma_pool_alloc_new_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc_dma.c_ttm_dma_pool_alloc_new_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dma_pool = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.page = type { i32 }
%struct.dma_page = type { i32, %struct.page* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: Unable to allocate table for new pages\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: (%s:%d) Getting %d pages\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: Unable to get page %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_pool*, %struct.list_head*, i32)* @ttm_dma_pool_alloc_new_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_dma_pool_alloc_new_pages(%struct.dma_pool* %0, %struct.list_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_pool*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page**, align 8
  %9 = alloca %struct.dma_page*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dma_pool* %0, %struct.dma_pool** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @min(i32 %15, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = zext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.page** @kmalloc(i32 %24, i32 %25)
  store %struct.page** %26, %struct.page*** %8, align 8
  %27 = load %struct.page**, %struct.page*** %8, align 8
  %28 = icmp ne %struct.page** %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %31 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %143

36:                                               ; preds = %3
  %37 = load i32, i32* %7, align 4
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %41 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %44 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %39, %36
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %118, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %121

56:                                               ; preds = %52
  %57 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %58 = call %struct.dma_page* @__ttm_dma_alloc_page(%struct.dma_pool* %57)
  store %struct.dma_page* %58, %struct.dma_page** %9, align 8
  %59 = load %struct.dma_page*, %struct.dma_page** %9, align 8
  %60 = icmp ne %struct.dma_page* %59, null
  br i1 %60, label %86, label %61

61:                                               ; preds = %56
  %62 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %63 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %61
  %70 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %71 = load %struct.page**, %struct.page*** %8, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @ttm_set_pages_caching(%struct.dma_pool* %70, %struct.page** %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %78 = load %struct.list_head*, %struct.list_head** %6, align 8
  %79 = load %struct.page**, %struct.page*** %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @ttm_dma_handle_caching_state_failure(%struct.dma_pool* %77, %struct.list_head* %78, %struct.page** %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %69
  br label %83

83:                                               ; preds = %82, %61
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  br label %139

86:                                               ; preds = %56
  %87 = load %struct.dma_page*, %struct.dma_page** %9, align 8
  %88 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %87, i32 0, i32 1
  %89 = load %struct.page*, %struct.page** %88, align 8
  store %struct.page* %89, %struct.page** %10, align 8
  %90 = load %struct.page*, %struct.page** %10, align 8
  %91 = load %struct.page**, %struct.page*** %8, align 8
  %92 = load i32, i32* %13, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %13, align 4
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds %struct.page*, %struct.page** %91, i64 %94
  store %struct.page* %90, %struct.page** %95, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %86
  %100 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %101 = load %struct.page**, %struct.page*** %8, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @ttm_set_pages_caching(%struct.dma_pool* %100, %struct.page** %101, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %108 = load %struct.list_head*, %struct.list_head** %6, align 8
  %109 = load %struct.page**, %struct.page*** %8, align 8
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @ttm_dma_handle_caching_state_failure(%struct.dma_pool* %107, %struct.list_head* %108, %struct.page** %109, i32 %110)
  br label %139

112:                                              ; preds = %99
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %112, %86
  %114 = load %struct.dma_page*, %struct.dma_page** %9, align 8
  %115 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %114, i32 0, i32 0
  %116 = load %struct.list_head*, %struct.list_head** %6, align 8
  %117 = call i32 @list_add(i32* %115, %struct.list_head* %116)
  br label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %12, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %52

121:                                              ; preds = %52
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %121
  %125 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %126 = load %struct.page**, %struct.page*** %8, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @ttm_set_pages_caching(%struct.dma_pool* %125, %struct.page** %126, i32 %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %133 = load %struct.list_head*, %struct.list_head** %6, align 8
  %134 = load %struct.page**, %struct.page*** %8, align 8
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @ttm_dma_handle_caching_state_failure(%struct.dma_pool* %132, %struct.list_head* %133, %struct.page** %134, i32 %135)
  br label %137

137:                                              ; preds = %131, %124
  br label %138

138:                                              ; preds = %137, %121
  br label %139

139:                                              ; preds = %138, %106, %83
  %140 = load %struct.page**, %struct.page*** %8, align 8
  %141 = call i32 @kfree(%struct.page** %140)
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %139, %29
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.page** @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.dma_page* @__ttm_dma_alloc_page(%struct.dma_pool*) #1

declare dso_local i32 @ttm_set_pages_caching(%struct.dma_pool*, %struct.page**, i32) #1

declare dso_local i32 @ttm_dma_handle_caching_state_failure(%struct.dma_pool*, %struct.list_head*, %struct.page**, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
