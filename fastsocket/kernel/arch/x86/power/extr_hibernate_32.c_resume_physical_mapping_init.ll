; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/power/extr_hibernate_32.c_resume_physical_mapping_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/power/extr_hibernate_32.c_resume_physical_mapping_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_OFFSET = common dso_local global i32 0, align 4
@PTRS_PER_PGD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max_low_pfn = common dso_local global i64 0, align 8
@PTRS_PER_PMD = common dso_local global i32 0, align 4
@cpu_has_pse = common dso_local global i64 0, align 8
@PAGE_KERNEL_LARGE_EXEC = common dso_local global i32 0, align 4
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@PAGE_KERNEL_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @resume_physical_mapping_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resume_physical_mapping_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32, i32* @PAGE_OFFSET, align 4
  %12 = call i32 @pgd_index(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %5, align 8
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %98, %1
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PTRS_PER_PGD, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %103

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @resume_one_md_table_init(i32* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %106

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @max_low_pfn, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %98

34:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %92, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PTRS_PER_PMD, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %35
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @max_low_pfn, align 8
  %42 = icmp uge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %97

44:                                               ; preds = %39
  %45 = load i64, i64* @cpu_has_pse, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i32, i32* @PAGE_KERNEL_LARGE_EXEC, align 4
  %51 = call i32 @pfn_pmd(i64 %49, i32 %50)
  %52 = call i32 @set_pmd(i32* %48, i32 %51)
  %53 = load i32, i32* @PTRS_PER_PTE, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %4, align 8
  br label %91

57:                                               ; preds = %44
  %58 = load i32*, i32** %6, align 8
  %59 = call i32* @resume_one_page_table_init(i32* %58)
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %106

65:                                               ; preds = %57
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* @PTRS_PER_PTE, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32* %69, i32** %10, align 8
  br label %70

70:                                               ; preds = %85, %65
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = icmp ult i32* %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @max_low_pfn, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %90

79:                                               ; preds = %74
  %80 = load i32*, i32** %7, align 8
  %81 = load i64, i64* %4, align 8
  %82 = load i32, i32* @PAGE_KERNEL_EXEC, align 4
  %83 = call i32 @pfn_pte(i64 %81, i32 %82)
  %84 = call i32 @set_pte(i32* %80, i32 %83)
  br label %85

85:                                               ; preds = %79
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %7, align 8
  %88 = load i64, i64* %4, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %4, align 8
  br label %70

90:                                               ; preds = %78, %70
  br label %91

91:                                               ; preds = %90, %47
  br label %92

92:                                               ; preds = %91
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %35

97:                                               ; preds = %43, %35
  br label %98

98:                                               ; preds = %97, %33
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %17

103:                                              ; preds = %17
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @resume_map_numa_kva(i32* %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %103, %62, %26
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @pgd_index(i32) #1

declare dso_local i32* @resume_one_md_table_init(i32*) #1

declare dso_local i32 @set_pmd(i32*, i32) #1

declare dso_local i32 @pfn_pmd(i64, i32) #1

declare dso_local i32* @resume_one_page_table_init(i32*) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

declare dso_local i32 @resume_map_numa_kva(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
