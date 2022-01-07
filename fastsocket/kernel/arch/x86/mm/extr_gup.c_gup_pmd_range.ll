; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_gup.c_gup_pmd_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_gup.c_gup_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i32, %struct.page**, i32*)* @gup_pmd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gup_pmd_range(i32 %0, i64 %1, i64 %2, i32 %3, %struct.page** %4, i32* %5) #0 {
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
  %18 = call i32* @pmd_offset(i32* %8, i64 %17)
  store i32* %18, i32** %15, align 8
  br label %19

19:                                               ; preds = %61, %6
  %20 = load i32*, i32** %15, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @pmd_addr_end(i64 %22, i64 %23)
  store i64 %24, i64* %14, align 8
  %25 = load i32, i32* %16, align 4
  %26 = call i64 @pmd_none(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %16, align 4
  %30 = call i64 @pmd_trans_splitting(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %19
  store i32 0, i32* %7, align 4
  br label %69

33:                                               ; preds = %28
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @pmd_large(i32 %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i32, i32* %16, align 4
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.page**, %struct.page*** %12, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @gup_huge_pmd(i32 %39, i64 %40, i64 %41, i32 %42, %struct.page** %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %69

48:                                               ; preds = %38
  br label %60

49:                                               ; preds = %33
  %50 = load i32, i32* %16, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.page**, %struct.page*** %12, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @gup_pte_range(i32 %50, i64 %51, i64 %52, i32 %53, %struct.page** %54, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %69

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32*, i32** %15, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %15, align 8
  %64 = load i64, i64* %14, align 8
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %19, label %68

68:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  br label %69

69:                                               ; preds = %68, %58, %47, %32
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_trans_splitting(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmd_large(i32) #1

declare dso_local i32 @gup_huge_pmd(i32, i64, i64, i32, %struct.page**, i32*) #1

declare dso_local i32 @gup_pte_range(i32, i64, i64, i32, %struct.page**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
