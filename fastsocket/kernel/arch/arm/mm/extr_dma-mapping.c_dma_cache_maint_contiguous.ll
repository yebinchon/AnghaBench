; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_dma-mapping.c_dma_cache_maint_contiguous.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_dma-mapping.c_dma_cache_maint_contiguous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i64, i64, i32)* @dma_cache_maint_contiguous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_cache_maint_contiguous(%struct.page* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca void (i8*, i8*)*, align 8
  %12 = alloca void (i64, i64)*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %17 [
    i32 129, label %14
    i32 128, label %15
    i32 130, label %16
  ]

14:                                               ; preds = %4
  store void (i8*, i8*)* @dmac_inv_range, void (i8*, i8*)** %11, align 8
  store void (i64, i64)* @outer_inv_range, void (i64, i64)** %12, align 8
  br label %19

15:                                               ; preds = %4
  store void (i8*, i8*)* @dmac_clean_range, void (i8*, i8*)** %11, align 8
  store void (i64, i64)* @outer_clean_range, void (i64, i64)** %12, align 8
  br label %19

16:                                               ; preds = %4
  store void (i8*, i8*)* @dmac_flush_range, void (i8*, i8*)** %11, align 8
  store void (i64, i64)* @outer_flush_range, void (i64, i64)** %12, align 8
  br label %19

17:                                               ; preds = %4
  %18 = call i32 (...) @BUG()
  br label %19

19:                                               ; preds = %17, %16, %15, %14
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = call i32 @PageHighMem(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = call i8* @page_address(%struct.page* %24)
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr i8, i8* %25, i64 %26
  store i8* %27, i8** %9, align 8
  %28 = load void (i8*, i8*)*, void (i8*, i8*)** %11, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr i8, i8* %30, i64 %31
  call void %28(i8* %29, i8* %32)
  br label %50

33:                                               ; preds = %19
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = call i8* @kmap_high_get(%struct.page* %34)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i64, i64* %6, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr i8, i8* %40, i64 %39
  store i8* %41, i8** %9, align 8
  %42 = load void (i8*, i8*)*, void (i8*, i8*)** %11, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr i8, i8* %44, i64 %45
  call void %42(i8* %43, i8* %46)
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = call i32 @kunmap_high(%struct.page* %47)
  br label %49

49:                                               ; preds = %38, %33
  br label %50

50:                                               ; preds = %49, %23
  %51 = load %struct.page*, %struct.page** %5, align 8
  %52 = call i64 @page_to_phys(%struct.page* %51)
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %52, %53
  store i64 %54, i64* %10, align 8
  %55 = load void (i64, i64)*, void (i64, i64)** %12, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %57, %58
  call void %55(i64 %56, i64 %59)
  ret void
}

declare dso_local void @dmac_inv_range(i8*, i8*) #1

declare dso_local void @outer_inv_range(i64, i64) #1

declare dso_local void @dmac_clean_range(i8*, i8*) #1

declare dso_local void @outer_clean_range(i64, i64) #1

declare dso_local void @dmac_flush_range(i8*, i8*) #1

declare dso_local void @outer_flush_range(i64, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i8* @kmap_high_get(%struct.page*) #1

declare dso_local i32 @kunmap_high(%struct.page*) #1

declare dso_local i64 @page_to_phys(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
