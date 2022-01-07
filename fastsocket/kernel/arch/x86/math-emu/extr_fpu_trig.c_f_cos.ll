; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_fpu_trig.c_f_cos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_fpu_trig.c_f_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG_Valid = common dso_local global i64 0, align 8
@FCOS = common dso_local global i32 0, align 4
@CONST_1 = common dso_local global i32 0, align 4
@TAG_Zero = common dso_local global i64 0, align 8
@TAG_Special = common dso_local global i64 0, align 8
@TW_Denormal = common dso_local global i64 0, align 8
@TW_Infinity = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @f_cos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_cos(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @getsign(i32* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @TAG_Valid, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @exponent(i32* %14)
  %16 = icmp sgt i32 %15, -40
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @exponent(i32* %18)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @exponent(i32* %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @significand(i32* %26)
  %28 = sext i32 %27 to i64
  %29 = icmp ule i64 %28, -3958705157555305932
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %17
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @poly_cos(i32* %31)
  %33 = call i32 (...) @set_precision_flag_down()
  store i32 0, i32* %3, align 4
  br label %93

34:                                               ; preds = %25, %21
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @FCOS, align 4
  %37 = call i32 @trig_arg(i32* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @poly_sine(i32* %40)
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  %44 = and i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @changesign(i32* %47)
  br label %49

49:                                               ; preds = %46, %39
  %50 = call i32 (...) @set_precision_flag_down()
  store i32 0, i32* %3, align 4
  br label %93

51:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %93

52:                                               ; preds = %13
  br label %53

53:                                               ; preds = %82, %52
  %54 = call i32 @setcc(i32 0)
  %55 = load i64, i64* @TAG_Valid, align 8
  %56 = call i32 @FPU_copy_to_reg0(i32* @CONST_1, i64 %55)
  %57 = call i32 (...) @set_precision_flag_up()
  store i32 0, i32* %3, align 4
  br label %93

58:                                               ; preds = %2
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @TAG_Zero, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* @TAG_Valid, align 8
  %64 = call i32 @FPU_copy_to_reg0(i32* @CONST_1, i64 %63)
  %65 = call i32 @setcc(i32 0)
  store i32 0, i32* %3, align 4
  br label %93

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @TAG_Special, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32*, i32** %4, align 8
  %73 = call i64 @FPU_Special(i32* %72)
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @TW_Denormal, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = call i64 (...) @denormal_operand()
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %93

82:                                               ; preds = %78
  br label %53

83:                                               ; preds = %74
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @TW_Infinity, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 @arith_invalid(i32 0)
  store i32 1, i32* %3, align 4
  br label %93

89:                                               ; preds = %83
  %90 = load i32*, i32** %4, align 8
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @single_arg_error(i32* %90, i64 %91)
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %87, %81, %62, %53, %51, %49, %30
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @getsign(i32*) #1

declare dso_local i32 @exponent(i32*) #1

declare dso_local i32 @significand(i32*) #1

declare dso_local i32 @poly_cos(i32*) #1

declare dso_local i32 @set_precision_flag_down(...) #1

declare dso_local i32 @trig_arg(i32*, i32) #1

declare dso_local i32 @poly_sine(i32*) #1

declare dso_local i32 @changesign(i32*) #1

declare dso_local i32 @setcc(i32) #1

declare dso_local i32 @FPU_copy_to_reg0(i32*, i64) #1

declare dso_local i32 @set_precision_flag_up(...) #1

declare dso_local i64 @FPU_Special(i32*) #1

declare dso_local i64 @denormal_operand(...) #1

declare dso_local i32 @arith_invalid(i32) #1

declare dso_local i32 @single_arg_error(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
