; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock.c___calc_pre_post_dividers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock.c___calc_pre_post_dividers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @__calc_pre_post_dividers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__calc_pre_post_dividers(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 512
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  store i32 8, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 64, i32* %15, align 4
  br label %75

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 64
  br i1 %18, label %19, label %62

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sdiv i32 %21, 64
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  store i32 8, i32* %9, align 4
  store i32 8, i32* %8, align 4
  br label %24

24:                                               ; preds = %49, %19
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %8, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  br label %52

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %8, align 4
  br label %24

52:                                               ; preds = %34, %24
  %53 = load i32, i32* %4, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %53, %55
  %57 = sub nsw i32 %56, 1
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %57, %59
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  br label %74

62:                                               ; preds = %16
  %63 = load i32, i32* %4, align 4
  %64 = icmp sle i32 %63, 8
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = load i32*, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %6, align 8
  store i32 1, i32* %68, align 4
  br label %73

69:                                               ; preds = %62
  %70 = load i32*, i32** %5, align 8
  store i32 1, i32* %70, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %52
  br label %75

75:                                               ; preds = %74, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
