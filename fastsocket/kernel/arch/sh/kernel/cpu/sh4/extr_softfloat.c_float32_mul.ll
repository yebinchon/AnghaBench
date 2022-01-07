; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_float32_mul.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_float32_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float32_mul(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @extractFloat32Frac(i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @extractFloat32Exp(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call signext i8 @extractFloat32Sign(i32 %20)
  store i8 %21, i8* %6, align 1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @extractFloat32Frac(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @extractFloat32Exp(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call signext i8 @extractFloat32Sign(i32 %26)
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
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8, i8* %8, align 1
  %41 = call i32 @packFloat32(i8 signext %40, i32 0, i32 0)
  store i32 %41, i32* %3, align 4
  br label %104

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @normalizeFloat32Subnormal(i32 %43, i32* %9, i32* %12)
  br label %45

45:                                               ; preds = %42, %2
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i8, i8* %8, align 1
  %53 = call i32 @packFloat32(i8 signext %52, i32 0, i32 0)
  store i32 %53, i32* %3, align 4
  br label %104

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @normalizeFloat32Subnormal(i32 %55, i32* %10, i32* %13)
  br label %57

57:                                               ; preds = %54, %45
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 255
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 255
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66, %60
  %70 = load i8, i8* %8, align 1
  %71 = call i32 @roundAndPackFloat32(i8 signext %70, i32 255, i32 0)
  store i32 %71, i32* %3, align 4
  br label %104

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %73, %74
  %76 = sub nsw i32 %75, 127
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = or i32 %77, 8388608
  %79 = shl i32 %78, 7
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = or i32 %80, 8388608
  %82 = shl i32 %81, 8
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = load i32, i32* %13, align 4
  %86 = zext i32 %85 to i64
  %87 = mul i64 %84, %86
  %88 = call i32 @shift64RightJamming(i64 %87, i32 32, i64* %14)
  %89 = load i64, i64* %14, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = shl i32 %91, 1
  %93 = icmp sle i32 0, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %72
  %95 = load i32, i32* %15, align 4
  %96 = shl i32 %95, 1
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %94, %72
  %100 = load i8, i8* %8, align 1
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @roundAndPackFloat32(i8 signext %100, i32 %101, i32 %102)
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %99, %69, %51, %39
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @extractFloat32Frac(i32) #1

declare dso_local i32 @extractFloat32Exp(i32) #1

declare dso_local signext i8 @extractFloat32Sign(i32) #1

declare dso_local i32 @packFloat32(i8 signext, i32, i32) #1

declare dso_local i32 @normalizeFloat32Subnormal(i32, i32*, i32*) #1

declare dso_local i32 @roundAndPackFloat32(i8 signext, i32, i32) #1

declare dso_local i32 @shift64RightJamming(i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
