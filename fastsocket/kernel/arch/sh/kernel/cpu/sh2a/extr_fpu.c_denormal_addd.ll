; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh2a/extr_fpu.c_denormal_addd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh2a/extr_fpu.c_denormal_addd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @denormal_addd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @denormal_addd(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = xor i64 %8, %9
  %11 = and i64 %10, -9223372036854775808
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -9223372036854775808
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %3, align 8
  %17 = and i64 %16, 9223372036854775807
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = and i64 %18, 9223372036854775807
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %20, 4503599627370496
  br i1 %21, label %22, label %35

22:                                               ; preds = %13
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @denormal_subd1(i64 %23, i64 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i64, i64* %5, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = xor i64 %32, -9223372036854775808
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %29, %22
  br label %41

35:                                               ; preds = %13
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @denormal_subd1(i64 %36, i64 %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = xor i64 %39, -9223372036854775808
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %35, %34
  br label %60

42:                                               ; preds = %2
  %43 = load i64, i64* %3, align 8
  %44 = and i64 %43, -9223372036854775808
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %3, align 8
  %46 = and i64 %45, 9223372036854775807
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %4, align 8
  %48 = and i64 %47, 9223372036854775807
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ult i64 %49, 4503599627370496
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @denormal_addd1(i64 %52, i64 %53)
  store i64 %54, i64* %5, align 8
  br label %59

55:                                               ; preds = %42
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @denormal_addd1(i64 %56, i64 %57)
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %41
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %5, align 8
  %63 = or i64 %61, %62
  ret i64 %63
}

declare dso_local i64 @denormal_subd1(i64, i64) #1

declare dso_local i64 @denormal_addd1(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
