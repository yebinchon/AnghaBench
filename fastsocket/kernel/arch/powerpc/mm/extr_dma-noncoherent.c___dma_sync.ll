; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_dma-noncoherent.c___dma_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_dma-noncoherent.c___dma_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_CACHE_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dma_sync(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %48 [
    i32 129, label %15
    i32 130, label %17
    i32 128, label %40
    i32 131, label %44
  ]

15:                                               ; preds = %3
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %3, %15
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @L1_CACHE_BYTES, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = and i64 %18, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @L1_CACHE_BYTES, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = and i64 %25, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24, %17
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @flush_dcache_range(i64 %32, i64 %33)
  br label %39

35:                                               ; preds = %24
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @invalidate_dcache_range(i64 %36, i64 %37)
  br label %39

39:                                               ; preds = %35, %31
  br label %48

40:                                               ; preds = %3
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @clean_dcache_range(i64 %41, i64 %42)
  br label %48

44:                                               ; preds = %3
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @flush_dcache_range(i64 %45, i64 %46)
  br label %48

48:                                               ; preds = %3, %44, %40, %39
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @flush_dcache_range(i64, i64) #1

declare dso_local i32 @invalidate_dcache_range(i64, i64) #1

declare dso_local i32 @clean_dcache_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
