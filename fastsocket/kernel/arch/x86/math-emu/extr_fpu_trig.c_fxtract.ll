; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_fpu_trig.c_fxtract.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_fpu_trig.c_fxtract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STACK_OVERFLOW = common dso_local global i64 0, align 8
@TAG_Valid = common dso_local global i64 0, align 8
@TAG_Zero = common dso_local global i64 0, align 8
@SIGN_NEG = common dso_local global i32 0, align 4
@CONST_Z = common dso_local global i32 0, align 4
@TAG_Special = common dso_local global i64 0, align 8
@TW_Denormal = common dso_local global i64 0, align 8
@TW_Infinity = common dso_local global i64 0, align 8
@CONST_INF = common dso_local global i32 0, align 4
@TW_NaN = common dso_local global i64 0, align 8
@TAG_Empty = common dso_local global i64 0, align 8
@control_word = common dso_local global i32 0, align 4
@EX_Invalid = common dso_local global i32 0, align 4
@EX_StackUnder = common dso_local global i32 0, align 4
@EX_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @fxtract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxtract(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32*, i32** %3, align 8
  store i32* %9, i32** %7, align 8
  %10 = load i64, i64* @STACK_OVERFLOW, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @FPU_stack_overflow()
  br label %131

14:                                               ; preds = %2
  %15 = call i32 (...) @clear_C1()
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @TAG_Valid, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = call i32 (...) @push()
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @getsign(i32* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @reg_copy(i32* %23, i32* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @exponent(i32* %27)
  %29 = call i32 @setexponent16(i32* %26, i32 %28)
  br label %30

30:                                               ; preds = %75, %19
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @exponent16(i32* %31)
  store i64 %32, i64* %8, align 8
  %33 = call i32 @convert_l2reg(i64* %8, i32 1)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @setexponentpos(i32* %34, i32 0)
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @setsign(i32* %36, i64 %37)
  %39 = load i64, i64* @TAG_Valid, align 8
  %40 = call i32 @FPU_settag0(i64 %39)
  br label %131

41:                                               ; preds = %14
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @TAG_Zero, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i32*, i32** %3, align 8
  %47 = call i64 @getsign(i32* %46)
  store i64 %47, i64* %6, align 8
  %48 = load i32, i32* @SIGN_NEG, align 4
  %49 = call i64 @FPU_divide_by_zero(i32 0, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %131

52:                                               ; preds = %45
  %53 = call i32 (...) @push()
  %54 = load i64, i64* @TAG_Zero, align 8
  %55 = call i32 @FPU_copy_to_reg0(i32* @CONST_Z, i64 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @setsign(i32* %56, i64 %57)
  br label %131

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @TAG_Special, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32*, i32** %3, align 8
  %66 = call i64 @FPU_Special(i32* %65)
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @TW_Denormal, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = call i64 (...) @denormal_operand()
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %131

75:                                               ; preds = %71
  %76 = call i32 (...) @push()
  %77 = load i32*, i32** %7, align 8
  %78 = call i64 @getsign(i32* %77)
  store i64 %78, i64* %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @FPU_to_exp16(i32* %79, i32* %80)
  br label %30

82:                                               ; preds = %67
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @TW_Infinity, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load i32*, i32** %3, align 8
  %88 = call i64 @getsign(i32* %87)
  store i64 %88, i64* %6, align 8
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @setpositive(i32* %89)
  %91 = call i32 (...) @push()
  %92 = load i64, i64* @TAG_Special, align 8
  %93 = call i32 @FPU_copy_to_reg0(i32* @CONST_INF, i64 %92)
  %94 = load i32*, i32** %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @setsign(i32* %94, i64 %95)
  br label %131

97:                                               ; preds = %82
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* @TW_NaN, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load i32*, i32** %3, align 8
  %103 = call i64 @real_1op_NaN(i32* %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %131

106:                                              ; preds = %101
  %107 = call i32 (...) @push()
  %108 = load i32*, i32** %3, align 8
  %109 = load i64, i64* @TAG_Special, align 8
  %110 = call i32 @FPU_copy_to_reg0(i32* %108, i64 %109)
  br label %131

111:                                              ; preds = %97
  %112 = load i64, i64* %4, align 8
  %113 = load i64, i64* @TAG_Empty, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load i32, i32* @control_word, align 4
  %117 = load i32, i32* @EX_Invalid, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = call i32 (...) @FPU_stack_underflow()
  %122 = call i32 (...) @push()
  %123 = call i32 (...) @FPU_stack_underflow()
  br label %127

124:                                              ; preds = %115
  %125 = load i32, i32* @EX_StackUnder, align 4
  %126 = call i32 @EXCEPTION(i32 %125)
  br label %127

127:                                              ; preds = %124, %120
  br label %128

128:                                              ; preds = %127, %111
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %12, %30, %51, %52, %74, %86, %105, %106, %130
  ret void
}

declare dso_local i32 @FPU_stack_overflow(...) #1

declare dso_local i32 @clear_C1(...) #1

declare dso_local i32 @push(...) #1

declare dso_local i64 @getsign(i32*) #1

declare dso_local i32 @reg_copy(i32*, i32*) #1

declare dso_local i32 @setexponent16(i32*, i32) #1

declare dso_local i32 @exponent(i32*) #1

declare dso_local i64 @exponent16(i32*) #1

declare dso_local i32 @convert_l2reg(i64*, i32) #1

declare dso_local i32 @setexponentpos(i32*, i32) #1

declare dso_local i32 @setsign(i32*, i64) #1

declare dso_local i32 @FPU_settag0(i64) #1

declare dso_local i64 @FPU_divide_by_zero(i32, i32) #1

declare dso_local i32 @FPU_copy_to_reg0(i32*, i64) #1

declare dso_local i64 @FPU_Special(i32*) #1

declare dso_local i64 @denormal_operand(...) #1

declare dso_local i32 @FPU_to_exp16(i32*, i32*) #1

declare dso_local i32 @setpositive(i32*) #1

declare dso_local i64 @real_1op_NaN(i32*) #1

declare dso_local i32 @FPU_stack_underflow(...) #1

declare dso_local i32 @EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
