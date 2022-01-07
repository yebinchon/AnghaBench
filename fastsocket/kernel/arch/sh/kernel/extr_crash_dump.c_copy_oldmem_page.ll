; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_crash_dump.c_copy_oldmem_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_crash_dump.c_copy_oldmem_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8

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
  br label %49

16:                                               ; preds = %5
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = shl i64 %17, %18
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call i8* @ioremap(i64 %19, i32 %20)
  store i8* %21, i8** %12, align 8
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %16
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr i8, i8* %26, i64 %27
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @copy_to_user(i8* %25, i8* %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @iounmap(i8* %33)
  %35 = load i64, i64* @EFAULT, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %6, align 8
  br label %49

37:                                               ; preds = %24
  br label %45

38:                                               ; preds = %16
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr i8, i8* %40, i64 %41
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @memcpy(i8* %39, i8* %42, i64 %43)
  br label %45

45:                                               ; preds = %38, %37
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @iounmap(i8* %46)
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %45, %32, %15
  %50 = load i64, i64* %6, align 8
  ret i64 %50
}

declare dso_local i8* @ioremap(i64, i32) #1

declare dso_local i64 @copy_to_user(i8*, i8*, i64) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
