; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_gup.c_gup_pud_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_gup.c_gup_pud_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i32, %struct.page**, i32*)* @gup_pud_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gup_pud_range(i32 %0, i64 %1, i64 %2, i32 %3, %struct.page** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.page** %4, %struct.page*** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32* @pud_offset(i32* %8, i64 %17)
  store i32* %18, i32** %15, align 8
  br label %19

19:                                               ; preds = %57, %6
  %20 = load i32*, i32** %15, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @pud_addr_end(i64 %22, i64 %23)
  store i64 %24, i64* %14, align 8
  %25 = load i32, i32* %16, align 4
  %26 = call i64 @pud_none(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %65

29:                                               ; preds = %19
  %30 = load i32, i32* %16, align 4
  %31 = call i32 @pud_large(i32 %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32, i32* %16, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.page**, %struct.page*** %12, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @gup_huge_pud(i32 %35, i64 %36, i64 %37, i32 %38, %struct.page** %39, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %65

44:                                               ; preds = %34
  br label %56

45:                                               ; preds = %29
  %46 = load i32, i32* %16, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.page**, %struct.page*** %12, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @gup_pmd_range(i32 %46, i64 %47, i64 %48, i32 %49, %struct.page** %50, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %65

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %44
  br label %57

57:                                               ; preds = %56
  %58 = load i32*, i32** %15, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %15, align 8
  %60 = load i64, i64* %14, align 8
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %19, label %64

64:                                               ; preds = %57
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %54, %43, %28
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pud_large(i32) #1

declare dso_local i32 @gup_huge_pud(i32, i64, i64, i32, %struct.page**, i32*) #1

declare dso_local i32 @gup_pmd_range(i32, i64, i64, i32, %struct.page**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
