; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_fpu_trig.c_f2xm1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_fpu_trig.c_f2xm1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG_Valid = common dso_local global i32 0, align 4
@TAG_Zero = common dso_local global i32 0, align 4
@TAG_Special = common dso_local global i32 0, align 4
@CONST_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @f2xm1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f2xm1(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @clear_C1()
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @TAG_Valid, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @exponent(i32* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %42, %14
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @FPU_to_exp16(i32* %16, i32* %5)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @getsign(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @poly_2xm1(i32 %19, i32* %5, i32* %20)
  br label %22

22:                                               ; preds = %15, %10
  %23 = call i32 (...) @set_precision_flag_up()
  br label %57

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TAG_Zero, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %57

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TAG_Special, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @FPU_Special(i32* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %53 [
    i32 129, label %38
    i32 128, label %43
  ]

38:                                               ; preds = %36
  %39 = call i32 (...) @denormal_operand()
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %57

42:                                               ; preds = %38
  br label %15

43:                                               ; preds = %36
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @signnegative(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* @TAG_Valid, align 4
  %49 = call i32 @FPU_copy_to_reg0(i32* @CONST_1, i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @setnegative(i32* %50)
  br label %52

52:                                               ; preds = %47, %43
  br label %57

53:                                               ; preds = %36
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @single_arg_error(i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %22, %28, %41, %52, %53
  ret void
}

declare dso_local i32 @clear_C1(...) #1

declare dso_local i64 @exponent(i32*) #1

declare dso_local i32 @FPU_to_exp16(i32*, i32*) #1

declare dso_local i32 @poly_2xm1(i32, i32*, i32*) #1

declare dso_local i32 @getsign(i32*) #1

declare dso_local i32 @set_precision_flag_up(...) #1

declare dso_local i32 @FPU_Special(i32*) #1

declare dso_local i32 @denormal_operand(...) #1

declare dso_local i32 @signnegative(i32*) #1

declare dso_local i32 @FPU_copy_to_reg0(i32*, i32) #1

declare dso_local i32 @setnegative(i32*) #1

declare dso_local i32 @single_arg_error(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
