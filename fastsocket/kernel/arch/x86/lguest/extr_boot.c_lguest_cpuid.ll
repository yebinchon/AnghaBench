; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lguest/extr_boot.c_lguest_cpuid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lguest/extr_boot.c_lguest_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @lguest_cpuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lguest_cpuid(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @native_cpuid(i32* %12, i32* %13, i32* %14, i32* %15)
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %52 [
    i32 0, label %18
    i32 1, label %25
    i32 -2147483648, label %41
    i32 -2147483647, label %48
  ]

18:                                               ; preds = %4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ugt i32 %20, 5
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  store i32 5, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %18
  br label %52

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 8705
  store i32 %28, i32* %26, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 125862225
  store i32 %31, i32* %29, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, 8192
  store i32 %34, i32* %32, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, -3841
  store i32 %37, i32* %35, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, 1280
  store i32 %40, i32* %38, align 4
  br label %52

41:                                               ; preds = %4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ugt i32 %43, -2147483640
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  store i32 -2147483640, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %41
  br label %52

48:                                               ; preds = %4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, -1048577
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %4, %48, %47, %25, %24
  ret void
}

declare dso_local i32 @native_cpuid(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
