; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_reg_compare.c_FPU_compare_st_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_reg_compare.c_FPU_compare_st_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMP_NaN = common dso_local global i32 0, align 4
@EX_Invalid = common dso_local global i32 0, align 4
@SW_C3 = common dso_local global i32 0, align 4
@SW_C2 = common dso_local global i32 0, align 4
@SW_C0 = common dso_local global i32 0, align 4
@COMP_Denormal = common dso_local global i32 0, align 4
@EX_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FPU_compare_st_data(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @compare(i32* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @COMP_NaN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @EX_Invalid, align 4
  %17 = call i32 @EXCEPTION(i32 %16)
  %18 = load i32, i32* @SW_C3, align 4
  %19 = load i32, i32* @SW_C2, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SW_C0, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  br label %38

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 7
  switch i32 %25, label %37 [
    i32 129, label %26
    i32 131, label %28
    i32 130, label %30
    i32 128, label %31
  ]

26:                                               ; preds = %23
  %27 = load i32, i32* @SW_C0, align 4
  store i32 %27, i32* %6, align 4
  br label %37

28:                                               ; preds = %23
  %29 = load i32, i32* @SW_C3, align 4
  store i32 %29, i32* %6, align 4
  br label %37

30:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %37

31:                                               ; preds = %23
  %32 = load i32, i32* @SW_C3, align 4
  %33 = load i32, i32* @SW_C2, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SW_C0, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %23, %31, %30, %28, %26
  br label %38

38:                                               ; preds = %37, %15
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @setcc(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @COMP_Denormal, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = call i64 (...) @denormal_operand()
  %47 = icmp slt i64 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @compare(i32*, i32) #1

declare dso_local i32 @EXCEPTION(i32) #1

declare dso_local i32 @setcc(i32) #1

declare dso_local i64 @denormal_operand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
