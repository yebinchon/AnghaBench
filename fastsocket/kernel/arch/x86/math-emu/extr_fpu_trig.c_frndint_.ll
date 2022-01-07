; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_fpu_trig.c_frndint_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_fpu_trig.c_frndint_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG_Valid = common dso_local global i64 0, align 8
@TW_Denormal = common dso_local global i64 0, align 8
@TAG_Zero = common dso_local global i64 0, align 8
@TAG_Special = common dso_local global i64 0, align 8
@TW_Infinity = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @frndint_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frndint_(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @TAG_Valid, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %62, %11
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @getsign(i32* %13)
  store i64 %14, i64* %7, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @exponent(i32* %15)
  %17 = icmp sgt i32 %16, 63
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %73

19:                                               ; preds = %12
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @TW_Denormal, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = call i64 (...) @denormal_operand()
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %73

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32*, i32** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @FPU_round_to_int(i32* %29, i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @set_precision_flag(i32 %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @setexponent16(i32* %37, i32 63)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @FPU_normalize(i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @setsign(i32* %41, i64 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @FPU_settag0(i32 %44)
  br label %73

46:                                               ; preds = %2
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @TAG_Zero, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %73

51:                                               ; preds = %46
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @TAG_Special, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32*, i32** %3, align 8
  %57 = call i64 @FPU_Special(i32* %56)
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @TW_Denormal, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %12

63:                                               ; preds = %58
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @TW_Infinity, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %73

68:                                               ; preds = %63
  %69 = load i32*, i32** %3, align 8
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @single_arg_error(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %18, %26, %36, %50, %67, %72
  ret void
}

declare dso_local i64 @getsign(i32*) #1

declare dso_local i32 @exponent(i32*) #1

declare dso_local i64 @denormal_operand(...) #1

declare dso_local i32 @FPU_round_to_int(i32*, i64) #1

declare dso_local i32 @set_precision_flag(i32) #1

declare dso_local i32 @setexponent16(i32*, i32) #1

declare dso_local i32 @FPU_normalize(i32*) #1

declare dso_local i32 @setsign(i32*, i64) #1

declare dso_local i32 @FPU_settag0(i32) #1

declare dso_local i64 @FPU_Special(i32*) #1

declare dso_local i32 @single_arg_error(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
