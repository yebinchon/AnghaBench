; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_add_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_hwpoison = common dso_local global i64 0, align 8
@opt_unpoison = common dso_local global i64 0, align 8
@opt_list = common dso_local global i32 0, align 4
@nr_pages = common dso_local global i32* null, align 8
@total_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32)* @add_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_page(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @kpageflags_flags(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @bit_mask_ok(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %51

13:                                               ; preds = %3
  %14 = load i64, i64* @opt_hwpoison, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @hwpoison_page(i64 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i64, i64* @opt_unpoison, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @unpoison_page(i64 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @opt_list, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @show_page_range(i64 %29, i64 %30, i32 %31)
  br label %42

33:                                               ; preds = %25
  %34 = load i32, i32* @opt_list, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @show_page(i64 %37, i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %33
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32*, i32** @nr_pages, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @hash_slot(i32 %44)
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @total_pages, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @total_pages, align 4
  br label %51

51:                                               ; preds = %42, %12
  ret void
}

declare dso_local i32 @kpageflags_flags(i32) #1

declare dso_local i32 @bit_mask_ok(i32) #1

declare dso_local i32 @hwpoison_page(i64) #1

declare dso_local i32 @unpoison_page(i64) #1

declare dso_local i32 @show_page_range(i64, i64, i32) #1

declare dso_local i32 @show_page(i64, i64, i32) #1

declare dso_local i64 @hash_slot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
