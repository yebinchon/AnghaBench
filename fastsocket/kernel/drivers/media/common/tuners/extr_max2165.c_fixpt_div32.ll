; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_max2165.c_fixpt_div32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_max2165.c_fixpt_div32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fixpt_div32(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 0, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %52

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %44, %17
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 31
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = shl i32 %30, 1
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %12, align 4
  %43 = shl i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %47, %16
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
