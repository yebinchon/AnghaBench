; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh2a/extr_fpu.c_denormal_subf1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh2a/extr_fpu.c_denormal_subf1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @denormal_subf1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denormal_subf1(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %8, 8388608
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sub i32 %11, %12
  store i32 %13, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 2139095040
  %17 = lshr i32 %16, 23
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp sgt i32 %19, 31
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %5, align 4
  %27 = lshr i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %3, align 4
  br label %57

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 8388607
  %35 = or i32 %34, 8388608
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %48, %32
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 8388608
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %57

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %39

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 23
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 8388607
  %56 = or i32 %53, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %46, %30, %21, %10
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
