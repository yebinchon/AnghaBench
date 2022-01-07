; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh2a/extr_fpu.c_denormal_addf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh2a/extr_fpu.c_denormal_addf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @denormal_addf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denormal_addf(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = xor i32 %8, %9
  %11 = and i32 %10, -2147483648
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, -2147483648
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 2147483647
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 2147483647
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %20, 8388608
  br i1 %21, label %22, label %34

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @denormal_subf1(i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = sub i32 0, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = xor i32 %31, -2147483648
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %22
  br label %40

34:                                               ; preds = %13
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @denormal_subf1(i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = xor i32 %38, -2147483648
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %34, %33
  br label %59

41:                                               ; preds = %2
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, -2147483648
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 2147483647
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 2147483647
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ult i32 %48, 8388608
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @denormal_addf1(i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %58

54:                                               ; preds = %41
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @denormal_addf1(i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %40
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %60, %61
  ret i32 %62
}

declare dso_local i32 @denormal_subf1(i32, i32) #1

declare dso_local i32 @denormal_addf1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
