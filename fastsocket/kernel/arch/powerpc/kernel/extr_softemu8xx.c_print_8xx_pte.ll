; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_softemu8xx.c_print_8xx_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_softemu8xx.c_print_8xx_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c" pte @ 0x%8lx: \00", align 1
@PAGE_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c" (0x%08lx)->(0x%08lx)->0x%08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c" RPN: %05lx PP: %lx SPS: %lx SH: %lx CI: %lx v: %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"no pte\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"no pmd\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"no pgd\0A\00", align 1
@pp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_8xx_pte(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @PAGE_MASK, align 8
  %13 = and i64 %11, %12
  %14 = call i32* @pgd_offset(%struct.mm_struct* %10, i64 %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %86

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @PAGE_MASK, align 8
  %21 = and i64 %19, %20
  %22 = call i32 @pud_offset(i32* %18, i64 %21)
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @PAGE_MASK, align 8
  %25 = and i64 %23, %24
  %26 = call i32* @pmd_offset(i32 %22, i64 %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %83

29:                                               ; preds = %17
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @pmd_present(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %83

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @PAGE_MASK, align 8
  %38 = and i64 %36, %37
  %39 = call i32* @pte_offset_kernel(i32* %35, i64 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %80

42:                                               ; preds = %34
  %43 = load i32*, i32** %5, align 8
  %44 = ptrtoint i32* %43 to i64
  %45 = load i32*, i32** %7, align 8
  %46 = ptrtoint i32* %45 to i64
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @pte_val(i32 %48)
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %46, i64 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @pte_val(i32 %52)
  %54 = ashr i64 %53, 12
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @pte_val(i32 %56)
  %58 = ashr i64 %57, 10
  %59 = and i64 %58, 3
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @pte_val(i32 %61)
  %63 = ashr i64 %62, 3
  %64 = and i64 %63, 1
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @pte_val(i32 %66)
  %68 = ashr i64 %67, 2
  %69 = and i64 %68, 1
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @pte_val(i32 %71)
  %73 = ashr i64 %72, 1
  %74 = and i64 %73, 1
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @pte_val(i32 %76)
  %78 = and i64 %77, 1
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %54, i64 %59, i64 %64, i64 %69, i64 %74, i64 %78)
  br label %82

80:                                               ; preds = %34
  %81 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %42
  br label %85

83:                                               ; preds = %29, %17
  %84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %82
  br label %88

86:                                               ; preds = %2
  %87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %85
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @pmd_offset(i32, i64) #1

declare dso_local i32 @pud_offset(i32*, i64) #1

declare dso_local i64 @pmd_present(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i64 @pte_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
