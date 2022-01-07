; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_alloc_new_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_alloc_new_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to allocate table for new pages\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unable to get page %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i32, i32, i32, i32)* @ttm_alloc_new_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_alloc_new_pages(%struct.list_head* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page**, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @min(i32 %18, i32 %22)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.page** @kmalloc(i32 %27, i32 %28)
  store %struct.page** %29, %struct.page*** %12, align 8
  %30 = load %struct.page**, %struct.page*** %12, align 8
  %31 = icmp ne %struct.page** %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %5
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %125

36:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %37

37:                                               ; preds = %99, %36
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %102

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = call %struct.page* @alloc_page(i32 %42)
  store %struct.page* %43, %struct.page** %13, align 8
  %44 = load %struct.page*, %struct.page** %13, align 8
  %45 = icmp ne %struct.page* %44, null
  br i1 %45, label %69, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load %struct.page**, %struct.page*** %12, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @ttm_set_pages_caching(%struct.page** %52, i32 %53, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.list_head*, %struct.list_head** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.page**, %struct.page*** %12, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @ttm_handle_caching_state_failure(%struct.list_head* %59, i32 %60, i32 %61, %struct.page** %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %51
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %14, align 4
  br label %121

69:                                               ; preds = %41
  %70 = load %struct.page*, %struct.page** %13, align 8
  %71 = load %struct.page**, %struct.page*** %12, align 8
  %72 = load i32, i32* %16, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %16, align 4
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds %struct.page*, %struct.page** %71, i64 %74
  store %struct.page* %70, %struct.page** %75, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %69
  %80 = load %struct.page**, %struct.page*** %12, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @ttm_set_pages_caching(%struct.page** %80, i32 %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.list_head*, %struct.list_head** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.page**, %struct.page*** %12, align 8
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @ttm_handle_caching_state_failure(%struct.list_head* %87, i32 %88, i32 %89, %struct.page** %90, i32 %91)
  br label %121

93:                                               ; preds = %79
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %93, %69
  %95 = load %struct.page*, %struct.page** %13, align 8
  %96 = getelementptr inbounds %struct.page, %struct.page* %95, i32 0, i32 0
  %97 = load %struct.list_head*, %struct.list_head** %7, align 8
  %98 = call i32 @list_add(i32* %96, %struct.list_head* %97)
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %15, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %15, align 4
  br label %37

102:                                              ; preds = %37
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %102
  %106 = load %struct.page**, %struct.page*** %12, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @ttm_set_pages_caching(%struct.page** %106, i32 %107, i32 %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load %struct.list_head*, %struct.list_head** %7, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.page**, %struct.page*** %12, align 8
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @ttm_handle_caching_state_failure(%struct.list_head* %113, i32 %114, i32 %115, %struct.page** %116, i32 %117)
  br label %119

119:                                              ; preds = %112, %105
  br label %120

120:                                              ; preds = %119, %102
  br label %121

121:                                              ; preds = %120, %86, %66
  %122 = load %struct.page**, %struct.page*** %12, align 8
  %123 = call i32 @kfree(%struct.page** %122)
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %121, %32
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.page** @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @ttm_set_pages_caching(%struct.page**, i32, i32) #1

declare dso_local i32 @ttm_handle_caching_state_failure(%struct.list_head*, i32, i32, %struct.page**, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
