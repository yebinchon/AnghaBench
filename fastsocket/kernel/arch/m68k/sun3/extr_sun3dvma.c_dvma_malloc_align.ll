; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3/extr_sun3dvma.c_dvma_malloc_align.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3/extr_sun3dvma.c_dvma_malloc_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DVMA_PAGE_SIZE = common dso_local global i32 0, align 4
@DVMA_PAGE_MASK = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dvma_malloc_align(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %56

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @DVMA_PAGE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = add i64 %13, %16
  %18 = load i64, i64* @DVMA_PAGE_MASK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %4, align 8
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @get_order(i64 %21)
  %23 = call i64 @__get_free_pages(i32 %20, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %56

26:                                               ; preds = %12
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @dvma_map_align(i64 %27, i64 %28, i64 %29)
  store i64 %30, i64* %7, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @get_order(i64 %34)
  %36 = call i32 @free_pages(i64 %33, i32 %35)
  store i8* null, i8** %3, align 8
  br label %56

37:                                               ; preds = %26
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @dvma_btov(i64 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @dvma_map_cpu(i64 %40, i64 %41, i64 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load i64, i64* %7, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @dvma_unmap(i8* %47)
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @get_order(i64 %50)
  %52 = call i32 @free_pages(i64 %49, i32 %51)
  store i8* null, i8** %3, align 8
  br label %56

53:                                               ; preds = %37
  %54 = load i64, i64* %8, align 8
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %3, align 8
  br label %56

56:                                               ; preds = %53, %45, %32, %25, %11
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @dvma_map_align(i64, i64, i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i64 @dvma_btov(i64) #1

declare dso_local i64 @dvma_map_cpu(i64, i64, i64) #1

declare dso_local i32 @dvma_unmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
