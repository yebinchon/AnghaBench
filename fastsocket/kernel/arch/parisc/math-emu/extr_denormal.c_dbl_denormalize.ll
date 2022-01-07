; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_denormal.c_dbl_denormalize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_denormal.c_dbl_denormalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@DBL_WRAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbl_denormalize(i32* %0, i32* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %14, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @Dbl_exponent(i32 %23)
  %25 = load i32, i32* @DBL_WRAP, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @Dbl_sign(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* %15, align 8
  %35 = call i32 @Dbl_denormalize(i32 %29, i32 %30, i32 %31, i64 %32, i64 %33, i64 %34)
  %36 = load i64, i64* %15, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %71 [
    i32 128, label %40
    i32 130, label %48
    i32 129, label %56
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @Dbl_increment(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  br label %71

48:                                               ; preds = %38
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @Dbl_increment(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %48
  br label %71

56:                                               ; preds = %38
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i64, i64* %14, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @Dbl_isone_lowmantissap2(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @Dbl_increment(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %62, %56
  br label %71

71:                                               ; preds = %38, %70, %55, %47
  br label %72

72:                                               ; preds = %71, %4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @Dbl_set_sign(i32 %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i64, i64* %15, align 8
  %81 = load i64*, i64** %7, align 8
  store i64 %80, i64* %81, align 8
  ret void
}

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i32 @Dbl_sign(i32) #1

declare dso_local i32 @Dbl_denormalize(i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @Dbl_increment(i32, i32) #1

declare dso_local i32 @Dbl_isone_lowmantissap2(i32) #1

declare dso_local i32 @Dbl_set_sign(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
