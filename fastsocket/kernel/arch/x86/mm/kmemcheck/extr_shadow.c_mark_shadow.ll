; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_shadow.c_mark_shadow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_shadow.c_mark_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @mark_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_shadow(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = add i64 %15, %17
  %19 = sub i64 %18, 1
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @PAGE_MASK, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @PAGE_MASK, align 8
  %25 = and i64 %23, %24
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %11, align 4
  br label %38

31:                                               ; preds = %3
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = add i64 %32, %33
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %31, %29
  %39 = load i64, i64* %7, align 8
  %40 = call i8* @kmemcheck_shadow_lookup(i64 %39)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @memset(i8* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sub i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %72, %48
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = load i64, i64* @PAGE_SIZE, align 8
  %60 = icmp uge i64 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %56
  %62 = load i64, i64* %7, align 8
  %63 = call i8* @kmemcheck_shadow_lookup(i64 %62)
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memset(i8* %67, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i64, i64* @PAGE_SIZE, align 8
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = load i32, i32* %5, align 4
  %78 = zext i32 %77 to i64
  %79 = sub i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %56

81:                                               ; preds = %56
  %82 = load i32, i32* %5, align 4
  %83 = icmp ugt i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i64, i64* %7, align 8
  %86 = call i8* @kmemcheck_shadow_lookup(i64 %85)
  store i8* %86, i8** %12, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i8*, i8** %12, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @memset(i8* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %81
  ret void
}

declare dso_local i8* @kmemcheck_shadow_lookup(i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
