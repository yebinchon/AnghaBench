; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_plpar_wrappers.h_plpar_page_set_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_plpar_wrappers.h_plpar_page_set_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@H_PAGE_INIT = common dso_local global i32 0, align 4
@H_PAGE_SET_ACTIVE = common dso_local global i32 0, align 4
@H_PAGE_SET_LOANED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @plpar_page_set_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @plpar_page_set_active(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = call i64 (...) @cmo_get_page_size()
  store i64 %6, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i1 [ false, %7 ], [ %13, %10 ]
  br i1 %15, label %16, label %30

16:                                               ; preds = %14
  %17 = load i32, i32* @H_PAGE_INIT, align 4
  %18 = load i32, i32* @H_PAGE_SET_ACTIVE, align 4
  %19 = load i64, i64* %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %19, %21
  %23 = call i64 @plpar_hcall_norets(i32 %17, i32 %18, i64 %22, i32 0)
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %16
  %25 = load i64, i64* %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %7

30:                                               ; preds = %14
  %31 = load i64, i64* %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %54, %30
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ false, %36 ], [ %41, %39 ]
  br i1 %43, label %44, label %60

44:                                               ; preds = %42
  %45 = load i32, i32* @H_PAGE_INIT, align 4
  %46 = load i32, i32* @H_PAGE_SET_LOANED, align 4
  %47 = load i64, i64* %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %47, %49
  %51 = load i64, i64* %3, align 8
  %52 = sub i64 %50, %51
  %53 = call i64 @plpar_hcall_norets(i32 %45, i32 %46, i64 %52, i32 0)
  br label %54

54:                                               ; preds = %44
  %55 = load i64, i64* %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %36

60:                                               ; preds = %42
  %61 = load i64, i64* %4, align 8
  ret i64 %61
}

declare dso_local i64 @cmo_get_page_size(...) #1

declare dso_local i64 @plpar_hcall_norets(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
