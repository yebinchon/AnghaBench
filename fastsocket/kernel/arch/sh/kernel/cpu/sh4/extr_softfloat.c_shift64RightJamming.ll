; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_shift64RightJamming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_shift64RightJamming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shift64RightJamming(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %7, align 4
  br label %32

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 64
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 0, %20
  %22 = and i32 %21, 63
  %23 = shl i32 %19, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = or i32 %18, %25
  store i32 %26, i32* %7, align 4
  br label %31

27:                                               ; preds = %12
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %15
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
