; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ns_to_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ns_to_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @dt3k_ns_to_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3k_ns_to_timer(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %52, %3
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %55

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %10, align 4
  %17 = add nsw i32 %16, 1
  %18 = mul i32 %15, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %21 [
    i32 129, label %20
    i32 130, label %29
    i32 128, label %34
  ]

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %14, %20
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sdiv i32 %24, 2
  %26 = add i32 %23, %25
  %27 = load i32, i32* %9, align 4
  %28 = udiv i32 %26, %27
  store i32 %28, i32* %8, align 4
  br label %39

29:                                               ; preds = %14
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = udiv i32 %31, %32
  store i32 %33, i32* %8, align 4
  br label %39

34:                                               ; preds = %14
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = udiv i32 %36, %37
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %34, %29, %21
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 65536
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, 16
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %4, align 4
  br label %68

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %11

55:                                               ; preds = %11
  store i32 15, i32* %10, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 1, %57
  %59 = mul i32 %56, %58
  store i32 %59, i32* %9, align 4
  store i32 65535, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = shl i32 %64, 16
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %55, %42
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
