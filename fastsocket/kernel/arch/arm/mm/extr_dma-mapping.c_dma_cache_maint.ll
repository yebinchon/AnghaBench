; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_dma-mapping.c_dma_cache_maint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_dma-mapping.c_dma_cache_maint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_cache_maint(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (i8*, i8*)*, align 8
  %8 = alloca void (i64, i64)*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @virt_addr_valid(i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr i8, i8* %13, i64 %14
  %16 = getelementptr i8, i8* %15, i64 -1
  %17 = call i32 @virt_addr_valid(i8* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %12, %3
  %21 = phi i1 [ true, %3 ], [ %19, %12 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %28 [
    i32 129, label %25
    i32 128, label %26
    i32 130, label %27
  ]

25:                                               ; preds = %20
  store void (i8*, i8*)* @dmac_inv_range, void (i8*, i8*)** %7, align 8
  store void (i64, i64)* @outer_inv_range, void (i64, i64)** %8, align 8
  br label %30

26:                                               ; preds = %20
  store void (i8*, i8*)* @dmac_clean_range, void (i8*, i8*)** %7, align 8
  store void (i64, i64)* @outer_clean_range, void (i64, i64)** %8, align 8
  br label %30

27:                                               ; preds = %20
  store void (i8*, i8*)* @dmac_flush_range, void (i8*, i8*)** %7, align 8
  store void (i64, i64)* @outer_flush_range, void (i64, i64)** %8, align 8
  br label %30

28:                                               ; preds = %20
  %29 = call i32 (...) @BUG()
  br label %30

30:                                               ; preds = %28, %27, %26, %25
  %31 = load void (i8*, i8*)*, void (i8*, i8*)** %7, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr i8, i8* %33, i64 %34
  call void %31(i8* %32, i8* %35)
  %36 = load void (i64, i64)*, void (i64, i64)** %8, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @__pa(i8* %37)
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @__pa(i8* %39)
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %40, %41
  call void %36(i64 %38, i64 %42)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @virt_addr_valid(i8*) #1

declare dso_local void @dmac_inv_range(i8*, i8*) #1

declare dso_local void @outer_inv_range(i64, i64) #1

declare dso_local void @dmac_clean_range(i8*, i8*) #1

declare dso_local void @outer_clean_range(i64, i64) #1

declare dso_local void @dmac_flush_range(i8*, i8*) #1

declare dso_local void @outer_flush_range(i64, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @__pa(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
