; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_estimateDiv128To64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_estimateDiv128To64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @estimateDiv128To64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimateDiv128To64(i32 %0, i32 %1, i32 %2) #0 {
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
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @LIT64(i32 -1)
  store i32 %20, i32* %4, align 4
  br label %84

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @do_div(i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 %28, 32
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = call i32 @LIT64(i32 0)
  br label %37

34:                                               ; preds = %21
  %35 = load i32, i32* %15, align 4
  %36 = shl i32 %35, 32
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi i32 [ %33, %32 ], [ %36, %34 ]
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @mul64To128(i32 %39, i32 %40, i32* %12, i32* %13)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @sub128(i32 %42, i32 %43, i32 %44, i32 %45, i32* %10, i32* %11)
  br label %47

47:                                               ; preds = %51, %37
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = call i32 @LIT64(i32 0)
  %53 = load i32, i32* %14, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %55, 32
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @add128(i32 %57, i32 %58, i32 %59, i32 %60, i32* %10, i32* %11)
  br label %47

62:                                               ; preds = %47
  %63 = load i32, i32* %10, align 4
  %64 = shl i32 %63, 32
  %65 = load i32, i32* %11, align 4
  %66 = ashr i32 %65, 32
  %67 = or i32 %64, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @do_div(i32 %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 %72, 32
  %74 = load i32, i32* %10, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %79

77:                                               ; preds = %62
  %78 = load i32, i32* %15, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i32 [ -1, %76 ], [ %78, %77 ]
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %79, %19
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @LIT64(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @mul64To128(i32, i32, i32*, i32*) #1

declare dso_local i32 @sub128(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @add128(i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
