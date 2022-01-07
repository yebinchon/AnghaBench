; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lasat/extr_interrupt.c_ls1bit32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lasat/extr_interrupt.c_ls1bit32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ls1bit32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls1bit32(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 31, i32* %3, align 4
  store i32 16, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = shl i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = shl i32 %14, %13
  store i32 %15, i32* %2, align 4
  store i32 8, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = shl i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %9
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %2, align 4
  %26 = shl i32 %25, %24
  store i32 %26, i32* %2, align 4
  store i32 4, i32* %4, align 4
  %27 = load i32, i32* %2, align 4
  %28 = shl i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %2, align 4
  %37 = shl i32 %36, %35
  store i32 %37, i32* %2, align 4
  store i32 2, i32* %4, align 4
  %38 = load i32, i32* %2, align 4
  %39 = shl i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %2, align 4
  %48 = shl i32 %47, %46
  store i32 %48, i32* %2, align 4
  store i32 1, i32* %4, align 4
  %49 = load i32, i32* %2, align 4
  %50 = shl i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
