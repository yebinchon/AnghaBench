; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh2a/extr_fpu.c_denormal_addd1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh2a/extr_fpu.c_denormal_addd1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @denormal_addd1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @denormal_addd1(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %8, 4503599627370496
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %3, align 8
  br label %52

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = and i64 %15, 9218868437227405312
  %17 = lshr i64 %16, 52
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub nsw i64 %18, 1
  %20 = icmp sgt i64 %19, 63
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i64, i64* %4, align 8
  store i64 %22, i64* %3, align 8
  br label %52

23:                                               ; preds = %14
  %24 = load i64, i64* %7, align 8
  %25 = sub nsw i64 %24, 1
  %26 = load i64, i64* %5, align 8
  %27 = lshr i64 %26, %25
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* %4, align 8
  store i64 %31, i64* %3, align 8
  br label %52

32:                                               ; preds = %23
  %33 = load i64, i64* %4, align 8
  %34 = and i64 %33, 4503599627370495
  %35 = or i64 %34, 4503599627370496
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp sge i64 %39, 9007199254740992
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load i64, i64* %6, align 8
  %43 = ashr i64 %42, 1
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %41, %32
  %47 = load i64, i64* %7, align 8
  %48 = shl i64 %47, 52
  %49 = load i64, i64* %6, align 8
  %50 = and i64 %49, 4503599627370495
  %51 = or i64 %48, %50
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %46, %30, %21, %10
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
