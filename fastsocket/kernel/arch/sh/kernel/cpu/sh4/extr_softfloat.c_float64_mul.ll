; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_float64_mul.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_float64_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float64_mul(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @extractFloat64Frac(i32 %16)
  store i64 %17, i64* %12, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @extractFloat64Exp(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call signext i8 @extractFloat64Sign(i32 %20)
  store i8 %21, i8* %6, align 1
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @extractFloat64Frac(i32 %22)
  store i64 %23, i64* %13, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @extractFloat64Exp(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call signext i8 @extractFloat64Sign(i32 %26)
  store i8 %27, i8* %7, align 1
  %28 = load i8, i8* %6, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* %7, align 1
  %31 = sext i8 %30 to i32
  %32 = xor i32 %29, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %8, align 1
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8, i8* %8, align 1
  %41 = call i32 @packFloat64(i8 signext %40, i32 0, i32 0)
  store i32 %41, i32* %3, align 4
  br label %105

42:                                               ; preds = %36
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @normalizeFloat64Subnormal(i64 %43, i32* %9, i64* %12)
  br label %45

45:                                               ; preds = %42, %2
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i64, i64* %13, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i8, i8* %8, align 1
  %53 = call i32 @packFloat64(i8 signext %52, i32 0, i32 0)
  store i32 %53, i32* %3, align 4
  br label %105

54:                                               ; preds = %48
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @normalizeFloat64Subnormal(i64 %55, i32* %10, i64* %13)
  br label %57

57:                                               ; preds = %54, %45
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 2047
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, i64* %12, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 2047
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i64, i64* %13, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66, %60
  %70 = load i8, i8* %8, align 1
  %71 = call i32 @roundAndPackFloat64(i8 signext %70, i32 2047, i64 0)
  store i32 %71, i32* %3, align 4
  br label %105

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %73, %74
  %76 = sub nsw i32 %75, 1023
  store i32 %76, i32* %11, align 4
  %77 = load i64, i64* %12, align 8
  %78 = or i64 %77, 4503599627370496
  %79 = shl i64 %78, 10
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %13, align 8
  %81 = or i64 %80, 4503599627370496
  %82 = shl i64 %81, 11
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @mul64To128(i64 %83, i64 %84, i64* %14, i64* %15)
  %86 = load i64, i64* %15, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %14, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %14, align 8
  %93 = shl i64 %92, 1
  %94 = icmp sle i64 0, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %72
  %96 = load i64, i64* %14, align 8
  %97 = shl i64 %96, 1
  store i64 %97, i64* %14, align 8
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %95, %72
  %101 = load i8, i8* %8, align 1
  %102 = load i32, i32* %11, align 4
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @roundAndPackFloat64(i8 signext %101, i32 %102, i64 %103)
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %69, %51, %39
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @extractFloat64Frac(i32) #1

declare dso_local i32 @extractFloat64Exp(i32) #1

declare dso_local signext i8 @extractFloat64Sign(i32) #1

declare dso_local i32 @packFloat64(i8 signext, i32, i32) #1

declare dso_local i32 @normalizeFloat64Subnormal(i64, i32*, i64*) #1

declare dso_local i32 @roundAndPackFloat64(i8 signext, i32, i64) #1

declare dso_local i32 @mul64To128(i64, i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
