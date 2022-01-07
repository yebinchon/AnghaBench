; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_fpu_trig.c_fsqrt_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_fpu_trig.c_fsqrt_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG_Valid = common dso_local global i64 0, align 8
@control_word = common dso_local global i32 0, align 4
@SIGN_POS = common dso_local global i32 0, align 4
@TAG_Zero = common dso_local global i64 0, align 8
@TAG_Special = common dso_local global i64 0, align 8
@TW_Infinity = common dso_local global i64 0, align 8
@TW_Denormal = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @fsqrt_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsqrt_(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i32 (...) @clear_C1()
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @TAG_Valid, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @signnegative(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @arith_invalid(i32 0)
  br label %83

17:                                               ; preds = %11
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @exponent(i32* %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %72, %17
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 1
  %24 = call i32 @setexponent16(i32* %21, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @control_word, align 4
  %27 = load i32, i32* @SIGN_POS, align 4
  %28 = call i64 @wm_sqrt(i32* %25, i32 0, i32 0, i32 %26, i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 1
  %32 = call i32 @addexponent(i32* %29, i32 %31)
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @FPU_settag0(i64 %33)
  br label %83

35:                                               ; preds = %2
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @TAG_Zero, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %83

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @TAG_Special, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32*, i32** %3, align 8
  %46 = call i64 @FPU_Special(i32* %45)
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @TW_Infinity, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @signnegative(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @arith_invalid(i32 0)
  br label %57

57:                                               ; preds = %55, %51
  br label %83

58:                                               ; preds = %47
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @TW_Denormal, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i32*, i32** %3, align 8
  %64 = call i64 @signnegative(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @arith_invalid(i32 0)
  br label %83

68:                                               ; preds = %62
  %69 = call i64 (...) @denormal_operand()
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %83

72:                                               ; preds = %68
  %73 = load i32*, i32** %3, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @FPU_to_exp16(i32* %73, i32* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @exponent16(i32* %76)
  store i32 %77, i32* %5, align 4
  br label %20

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %78
  %80 = load i32*, i32** %3, align 8
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @single_arg_error(i32* %80, i64 %81)
  br label %83

83:                                               ; preds = %79, %71, %66, %57, %39, %20, %15
  ret void
}

declare dso_local i32 @clear_C1(...) #1

declare dso_local i64 @signnegative(i32*) #1

declare dso_local i32 @arith_invalid(i32) #1

declare dso_local i32 @exponent(i32*) #1

declare dso_local i32 @setexponent16(i32*, i32) #1

declare dso_local i64 @wm_sqrt(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @addexponent(i32*, i32) #1

declare dso_local i32 @FPU_settag0(i64) #1

declare dso_local i64 @FPU_Special(i32*) #1

declare dso_local i64 @denormal_operand(...) #1

declare dso_local i32 @FPU_to_exp16(i32*, i32*) #1

declare dso_local i32 @exponent16(i32*) #1

declare dso_local i32 @single_arg_error(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
