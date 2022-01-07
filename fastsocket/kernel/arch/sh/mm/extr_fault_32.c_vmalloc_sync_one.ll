; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_fault_32.c_vmalloc_sync_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_fault_32.c_vmalloc_sync_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@init_mm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64)* @vmalloc_sync_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @vmalloc_sync_one(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @pgd_index(i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_mm, i32 0, i32 0), align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pgd_present(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %73

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32* @pud_offset(i32* %28, i64 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32* @pud_offset(i32* %31, i64 %32)
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pud_present(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  store i32* null, i32** %3, align 8
  br label %73

39:                                               ; preds = %27
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32* @pmd_offset(i32* %40, i64 %41)
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32* @pmd_offset(i32* %43, i64 %44)
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pmd_present(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  store i32* null, i32** %3, align 8
  br label %73

51:                                               ; preds = %39
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pmd_present(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @set_pmd(i32* %57, i32 %59)
  br label %71

61:                                               ; preds = %51
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @pmd_page(i32 %63)
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @pmd_page(i32 %66)
  %68 = icmp ne i64 %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  store i32* null, i32** %3, align 8
  br label %73

71:                                               ; preds = %56
  %72 = load i32*, i32** %11, align 8
  store i32* %72, i32** %3, align 8
  br label %73

73:                                               ; preds = %71, %61, %50, %38, %26
  %74 = load i32*, i32** %3, align 8
  ret i32* %74
}

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i32 @set_pmd(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @pmd_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
