; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_64.c_init_one_level2_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_64.c_init_one_level2_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PMD_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@_KERNPG_TABLE = common dso_local global i32 0, align 4
@__PAGE_KERNEL_LARGE_EXEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, i32*, i64)* @init_one_level2_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_one_level2_page(%struct.kimage* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.kimage*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i64, i64* @PMD_MASK, align 8
  %14 = load i64, i64* %6, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @pgd_index(i64 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pgd_present(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %3
  %26 = load %struct.kimage*, %struct.kimage** %4, align 8
  %27 = call %struct.page* @kimage_alloc_control_pages(%struct.kimage* %26, i32 0)
  store %struct.page* %27, %struct.page** %9, align 8
  %28 = load %struct.page*, %struct.page** %9, align 8
  %29 = icmp ne %struct.page* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %89

31:                                               ; preds = %25
  %32 = load %struct.page*, %struct.page** %9, align 8
  %33 = call i64 @page_address(%struct.page* %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = call i32 @memset(i32* %35, i32 0, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @__pa(i32* %39)
  %41 = load i32, i32* @_KERNPG_TABLE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @__pgd(i32 %42)
  %44 = call i32 @set_pgd(i32* %38, i32 %43)
  br label %45

45:                                               ; preds = %31, %3
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32* @pud_offset(i32* %46, i64 %47)
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pud_present(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %45
  %54 = load %struct.kimage*, %struct.kimage** %4, align 8
  %55 = call %struct.page* @kimage_alloc_control_pages(%struct.kimage* %54, i32 0)
  store %struct.page* %55, %struct.page** %9, align 8
  %56 = load %struct.page*, %struct.page** %9, align 8
  %57 = icmp ne %struct.page* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %89

59:                                               ; preds = %53
  %60 = load %struct.page*, %struct.page** %9, align 8
  %61 = call i64 @page_address(%struct.page* %60)
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %8, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = call i32 @memset(i32* %63, i32 0, i32 %64)
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @__pa(i32* %67)
  %69 = load i32, i32* @_KERNPG_TABLE, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @__pud(i32 %70)
  %72 = call i32 @set_pud(i32* %66, i32 %71)
  br label %73

73:                                               ; preds = %59, %45
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32* @pmd_offset(i32* %74, i64 %75)
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pmd_present(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %73
  %82 = load i32*, i32** %8, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @__PAGE_KERNEL_LARGE_EXEC, align 8
  %85 = or i64 %83, %84
  %86 = call i32 @__pmd(i64 %85)
  %87 = call i32 @set_pmd(i32* %82, i32 %86)
  br label %88

88:                                               ; preds = %81, %73
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %88, %58, %30
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local %struct.page* @kimage_alloc_control_pages(%struct.kimage*, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @set_pgd(i32*, i32) #1

declare dso_local i32 @__pgd(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i32 @set_pud(i32*, i32) #1

declare dso_local i32 @__pud(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i32 @set_pmd(i32*, i32) #1

declare dso_local i32 @__pmd(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
