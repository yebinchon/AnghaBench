; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_float64_to_int32_round_to_zero.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_float64_to_int32_round_to_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@float_flag_inexact = common dso_local global i32 0, align 4
@float_flag_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float64_to_int32_round_to_zero(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @extractFloat64Frac(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @extractFloat64Exp(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @extractFloat64Sign(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 1075, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 21
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 2047
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %23, %20
  br label %64

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 52, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @float_flag_inexact, align 4
  %39 = call i32 @float_raise(i32 %38)
  br label %40

40:                                               ; preds = %37, %34
  store i32 0, i32* %2, align 4
  br label %82

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41
  %43 = call i32 @LIT64(i32 0)
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %42
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %4, align 4
  %61 = xor i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %27
  %65 = load i32, i32* @float_flag_invalid, align 4
  %66 = call i32 @float_raise(i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 -2147483648, i32 2147483647
  store i32 %70, i32* %2, align 4
  br label %82

71:                                               ; preds = %56
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @float_flag_inexact, align 4
  %79 = call i32 @float_raise(i32 %78)
  br label %80

80:                                               ; preds = %77, %71
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %64, %40
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @extractFloat64Frac(i32) #1

declare dso_local i32 @extractFloat64Exp(i32) #1

declare dso_local i32 @extractFloat64Sign(i32) #1

declare dso_local i32 @float_raise(i32) #1

declare dso_local i32 @LIT64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
