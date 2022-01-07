; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_crash_dump.c_copy_oldmem_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_crash_dump.c_copy_oldmem_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@max_pfn = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @copy_oldmem_page(i64 %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %50

16:                                               ; preds = %5
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i64 @min(i64 %17, i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @max_pfn, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = shl i64 %24, %25
  %27 = call i8* @__va(i64 %26)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @copy_oldmem_vaddr(i8* %28, i8* %29, i64 %30, i64 %31, i32 %32)
  store i64 %33, i64* %9, align 8
  br label %48

34:                                               ; preds = %16
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @PAGE_SHIFT, align 8
  %37 = shl i64 %35, %36
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = call i8* @__ioremap(i64 %37, i32 %38, i32 0)
  store i8* %39, i8** %12, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @copy_oldmem_vaddr(i8* %40, i8* %41, i64 %42, i64 %43, i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @iounmap(i8* %46)
  br label %48

48:                                               ; preds = %34, %23
  %49 = load i64, i64* %9, align 8
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %48, %15
  %51 = load i64, i64* %6, align 8
  ret i64 %51
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i8* @__va(i64) #1

declare dso_local i64 @copy_oldmem_vaddr(i8*, i8*, i64, i64, i32) #1

declare dso_local i8* @__ioremap(i64, i32, i32) #1

declare dso_local i32 @iounmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
