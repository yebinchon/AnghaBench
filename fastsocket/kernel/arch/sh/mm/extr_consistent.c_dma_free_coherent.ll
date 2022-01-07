; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_consistent.c_dma_free_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_consistent.c_dma_free_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_free_coherent(%struct.device* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @get_order(i64 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = lshr i64 %14, %15
  store i64 %16, i64* %10, align 8
  %17 = call i32 (...) @irqs_disabled()
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @dma_release_from_coherent(%struct.device* %19, i32 %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %49

25:                                               ; preds = %4
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @debug_dma_free_coherent(%struct.device* %26, i64 %27, i8* %28, i64 %29)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %43, %25
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 1, %33
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %37, %39
  %41 = call i32 @pfn_to_page(i64 %40)
  %42 = call i32 @__free_pages(i32 %41, i32 0)
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %31

46:                                               ; preds = %31
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @iounmap(i8* %47)
  br label %49

49:                                               ; preds = %46, %24
  ret void
}

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i64 @dma_release_from_coherent(%struct.device*, i32, i8*) #1

declare dso_local i32 @debug_dma_free_coherent(%struct.device*, i64, i8*, i64) #1

declare dso_local i32 @__free_pages(i32, i32) #1

declare dso_local i32 @pfn_to_page(i64) #1

declare dso_local i32 @iounmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
