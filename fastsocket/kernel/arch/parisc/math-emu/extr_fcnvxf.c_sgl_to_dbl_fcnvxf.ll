; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvxf.c_sgl_to_dbl_fcnvxf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvxf.c_sgl_to_dbl_fcnvxf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOEXCEPTION = common dso_local global i32 0, align 4
@DBL_EXP_LENGTH = common dso_local global i32 0, align 4
@DBL_BIAS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_to_dbl_fcnvxf(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @Dbl_setone_sign(i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @Int_negate(i32 %21)
  br label %38

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @Dbl_setzero_sign(i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @Dbl_setzero(i32 %29, i32 %30)
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @Dbl_copytoptr(i32 %32, i32 %33, i32* %34)
  %36 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %36, i32* %5, align 4
  br label %74

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %18
  store i32 16, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @Find_ms_one_bit(i32 %39, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %49

48:                                               ; preds = %38
  store i32 1073741824, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @DBL_EXP_LENGTH, align 4
  %53 = sub nsw i32 %52, 1
  %54 = ashr i32 %51, %53
  %55 = call i32 @Dbl_set_mantissap1(i32 %50, i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @DBL_EXP_LENGTH, align 4
  %59 = sub nsw i32 33, %58
  %60 = shl i32 %57, %59
  %61 = call i32 @Dbl_set_mantissap2(i32 %56, i32 %60)
  %62 = load i32, i32* %12, align 4
  %63 = load i64, i64* @DBL_BIAS, align 8
  %64 = add nsw i64 30, %63
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %64, %66
  %68 = call i32 @Dbl_set_exponent(i32 %62, i64 %67)
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @Dbl_copytoptr(i32 %69, i32 %70, i32* %71)
  %73 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %49, %28
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @Dbl_setone_sign(i32) #1

declare dso_local i32 @Int_negate(i32) #1

declare dso_local i32 @Dbl_setzero_sign(i32) #1

declare dso_local i32 @Dbl_setzero(i32, i32) #1

declare dso_local i32 @Dbl_copytoptr(i32, i32, i32*) #1

declare dso_local i32 @Find_ms_one_bit(i32, i32) #1

declare dso_local i32 @Dbl_set_mantissap1(i32, i32) #1

declare dso_local i32 @Dbl_set_mantissap2(i32, i32) #1

declare dso_local i32 @Dbl_set_exponent(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
