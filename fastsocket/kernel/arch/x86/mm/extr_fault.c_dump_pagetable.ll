; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_fault.c_dump_pagetable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_fault.c_dump_pagetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHYSICAL_PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PGD %lx \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"PUD %lx \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"PMD %lx \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"PTE %lx\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"BAD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dump_pagetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_pagetable(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %8 = call i32 (...) @read_cr3()
  %9 = load i32, i32* @PHYSICAL_PAGE_MASK, align 4
  %10 = and i32 %8, %9
  %11 = call i32* @__va(i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i64, i64* %2, align 8
  %14 = call i32 @pgd_index(i64 %13)
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @bad_address(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %92

21:                                               ; preds = %1
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pgd_val(i32 %23)
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pgd_present(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %90

31:                                               ; preds = %21
  %32 = load i32*, i32** %4, align 8
  %33 = load i64, i64* %2, align 8
  %34 = call i32* @pud_offset(i32* %32, i64 %33)
  store i32* %34, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @bad_address(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %92

39:                                               ; preds = %31
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pud_val(i32 %41)
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pud_present(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @pud_large(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %39
  br label %90

54:                                               ; preds = %48
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* %2, align 8
  %57 = call i32* @pmd_offset(i32* %55, i64 %56)
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i64 @bad_address(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %92

62:                                               ; preds = %54
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pmd_val(i32 %64)
  %66 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pmd_present(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @pmd_large(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %62
  br label %90

77:                                               ; preds = %71
  %78 = load i32*, i32** %6, align 8
  %79 = load i64, i64* %2, align 8
  %80 = call i32* @pte_offset_kernel(i32* %78, i64 %79)
  store i32* %80, i32** %7, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i64 @bad_address(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %92

85:                                               ; preds = %77
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pte_val(i32 %87)
  %89 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %85, %76, %53, %30
  %91 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %94

92:                                               ; preds = %84, %61, %38, %20
  %93 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %90
  ret void
}

declare dso_local i32* @__va(i32) #1

declare dso_local i32 @read_cr3(...) #1

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i64 @bad_address(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @pgd_val(i32) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_val(i32) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i64 @pud_large(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i64 @pmd_large(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @pte_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
