; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_copy_ttm_io_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_copy_ttm_io_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { %struct.page** }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*, i8*, i64, i32)* @ttm_copy_ttm_io_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_copy_ttm_io_page(%struct.ttm_tt* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_tt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i8*, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %13 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %12, i32 0, i32 0
  %14 = load %struct.page**, %struct.page*** %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.page*, %struct.page** %14, i64 %15
  %17 = load %struct.page*, %struct.page** %16, align 8
  store %struct.page* %17, %struct.page** %10, align 8
  %18 = load %struct.page*, %struct.page** %10, align 8
  %19 = icmp ne %struct.page* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %65

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = shl i64 %26, %27
  %29 = add i64 %25, %28
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @pgprot_val(i32 %31)
  %33 = load i32, i32* @PAGE_KERNEL, align 4
  %34 = call i64 @pgprot_val(i32 %33)
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i32, i32* %9, align 4
  %38 = call i8* @vmap(%struct.page** %10, i32 1, i32 0, i32 %37)
  store i8* %38, i8** %11, align 8
  br label %42

39:                                               ; preds = %23
  %40 = load %struct.page*, %struct.page** %10, align 8
  %41 = call i8* @kmap(%struct.page* %40)
  store i8* %41, i8** %11, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %65

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = call i32 @memcpy_toio(i8* %49, i8* %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @pgprot_val(i32 %53)
  %55 = load i32, i32* @PAGE_KERNEL, align 4
  %56 = call i64 @pgprot_val(i32 %55)
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @vunmap(i8* %59)
  br label %64

61:                                               ; preds = %48
  %62 = load %struct.page*, %struct.page** %10, align 8
  %63 = call i32 @kunmap(%struct.page* %62)
  br label %64

64:                                               ; preds = %61, %58
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %45, %20
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @pgprot_val(i32) #1

declare dso_local i8* @vmap(%struct.page**, i32, i32, i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @memcpy_toio(i8*, i8*, i32) #1

declare dso_local i32 @vunmap(i8*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
