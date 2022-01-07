; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_roundAndPackFloat32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_roundAndPackFloat32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPSCR_RM_NEAREST = common dso_local global i64 0, align 8
@FPSCR_CAUSE_OVERFLOW = common dso_local global i32 0, align 4
@FPSCR_CAUSE_INEXACT = common dso_local global i32 0, align 4
@FPSCR_CAUSE_UNDERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32)* @roundAndPackFloat32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @roundAndPackFloat32(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = call i64 (...) @float_rounding_mode()
  %13 = load i64, i64* @FPSCR_RM_NEAREST, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %8, align 4
  store i32 64, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 127
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 253, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 253, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 253
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %30, %24
  %37 = load i32, i32* @FPSCR_CAUSE_OVERFLOW, align 4
  %38 = load i32, i32* @FPSCR_CAUSE_INEXACT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @float_raise(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @packFloat32(i32 %41, i32 255, i32 0)
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %42, %46
  store i64 %47, i64* %4, align 8
  br label %106

48:                                               ; preds = %30, %27
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, -1
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %55, %56
  %58 = icmp ult i32 %57, -2147483648
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi i1 [ true, %51 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i32 @shift32RightJamming(i32 %62, i32 %64, i32* %7)
  store i32 0, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 127
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @FPSCR_CAUSE_UNDERFLOW, align 4
  %75 = call i32 @float_raise(i32 %74)
  br label %76

76:                                               ; preds = %73, %70, %59
  br label %77

77:                                               ; preds = %76, %48
  br label %78

78:                                               ; preds = %77, %19
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @FPSCR_CAUSE_INEXACT, align 4
  %83 = call i32 @float_raise(i32 %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %85, %86
  %88 = ashr i32 %87, 7
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %10, align 4
  %90 = xor i32 %89, 64
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %84
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %84
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @packFloat32(i32 %102, i32 %103, i32 %104)
  store i64 %105, i64* %4, align 8
  br label %106

106:                                              ; preds = %101, %36
  %107 = load i64, i64* %4, align 8
  ret i64 %107
}

declare dso_local i64 @float_rounding_mode(...) #1

declare dso_local i32 @float_raise(i32) #1

declare dso_local i64 @packFloat32(i32, i32, i32) #1

declare dso_local i32 @shift32RightJamming(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
