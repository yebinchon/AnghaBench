; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_float32_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_float32_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float32_div(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @extractFloat32Frac(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @extractFloat32Exp(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @extractFloat32Sign(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @extractFloat32Frac(i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @extractFloat32Exp(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @extractFloat32Sign(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = xor i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 255
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 255
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @packFloat32(i32 %37, i32 255, i32 0)
  store i32 %38, i32* %3, align 4
  br label %114

39:                                               ; preds = %2
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 255
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @packFloat32(i32 %43, i32 0, i32 0)
  store i32 %44, i32* %3, align 4
  br label %114

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @packFloat32(i32 %52, i32 255, i32 0)
  store i32 %53, i32* %3, align 4
  br label %114

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @normalizeFloat32Subnormal(i32 %55, i32* %10, i32* %13)
  br label %57

57:                                               ; preds = %54, %45
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @packFloat32(i32 %64, i32 0, i32 0)
  store i32 %65, i32* %3, align 4
  br label %114

66:                                               ; preds = %60
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @normalizeFloat32Subnormal(i32 %67, i32* %9, i32* %12)
  br label %69

69:                                               ; preds = %66, %57
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %70, %71
  %73 = add nsw i32 %72, 125
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = or i32 %74, 8388608
  %76 = shl i32 %75, 7
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = or i32 %77, 8388608
  %79 = shl i32 %78, 8
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %81, %82
  %84 = icmp sle i32 %80, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %69
  %86 = load i32, i32* %12, align 4
  %87 = ashr i32 %86, 1
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %85, %69
  %91 = load i32, i32* %12, align 4
  %92 = shl i32 %91, 32
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @do_div(i32 %93, i32 %94)
  %96 = load i32, i32* %14, align 4
  %97 = and i32 %96, 63
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %90
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* %12, align 4
  %104 = shl i32 %103, 32
  %105 = icmp ne i32 %102, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %14, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %99, %90
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @roundAndPackFloat32(i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %109, %63, %51, %42, %36
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @extractFloat32Frac(i32) #1

declare dso_local i32 @extractFloat32Exp(i32) #1

declare dso_local i32 @extractFloat32Sign(i32) #1

declare dso_local i32 @packFloat32(i32, i32, i32) #1

declare dso_local i32 @normalizeFloat32Subnormal(i32, i32*, i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @roundAndPackFloat32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
