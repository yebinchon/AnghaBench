; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_crash_dump_64.c_copy_oldmem_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_crash_dump_64.c_copy_oldmem_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
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
  br label %56

16:                                               ; preds = %5
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = shl i64 %17, %18
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call i8* @ioremap_cache(i64 %19, i32 %20)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i64, i64* @ENOMEM, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %6, align 8
  br label %56

27:                                               ; preds = %16
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr i8, i8* %32, i64 %33
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @copy_to_user(i8* %31, i8* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @iounmap(i8* %39)
  %41 = load i64, i64* @EFAULT, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %6, align 8
  br label %56

43:                                               ; preds = %30
  br label %51

44:                                               ; preds = %27
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr i8, i8* %46, i64 %47
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @memcpy(i8* %45, i8* %48, i64 %49)
  br label %51

51:                                               ; preds = %44, %43
  %52 = call i32 (...) @set_iounmap_nonlazy()
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @iounmap(i8* %53)
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %51, %38, %24, %15
  %57 = load i64, i64* %6, align 8
  ret i64 %57
}

declare dso_local i8* @ioremap_cache(i64, i32) #1

declare dso_local i64 @copy_to_user(i8*, i8*, i64) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @set_iounmap_nonlazy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
