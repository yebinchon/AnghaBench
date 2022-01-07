; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ns_to_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ns_to_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @dt282x_ns_to_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_ns_to_timer(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %57, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %60

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %57

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 1, %17
  %19 = mul nsw i32 250, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %22 [
    i32 129, label %21
    i32 130, label %30
    i32 128, label %35
  ]

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %16, %21
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %25, 2
  %27 = add nsw i32 %24, %26
  %28 = load i32, i32* %7, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %8, align 4
  br label %43

30:                                               ; preds = %16
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %8, align 4
  br label %43

35:                                               ; preds = %16
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %7, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %35, %30, %22
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 256
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32*, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 255, %53
  %55 = or i32 %52, %54
  store i32 %55, i32* %3, align 4
  br label %68

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %15
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %9

60:                                               ; preds = %9
  store i32 8192000, i32* %7, align 4
  store i32 255, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32*, i32** %4, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 255, %65
  %67 = or i32 3840, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %60, %46
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
