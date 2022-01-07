; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-irq.c_ms1bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-irq.c_ms1bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ms1bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms1bit(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  store i32 16, i32* %4, align 4
  %5 = load i64, i64* %2, align 8
  %6 = lshr i64 %5, 16
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i64, i64* %2, align 8
  %15 = zext i32 %13 to i64
  %16 = lshr i64 %14, %15
  store i64 %16, i64* %2, align 8
  store i32 8, i32* %4, align 4
  %17 = load i64, i64* %2, align 8
  %18 = lshr i64 %17, 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %9
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i64, i64* %2, align 8
  %27 = zext i32 %25 to i64
  %28 = lshr i64 %26, %27
  store i64 %28, i64* %2, align 8
  store i32 4, i32* %4, align 4
  %29 = load i64, i64* %2, align 8
  %30 = lshr i64 %29, 4
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* %2, align 8
  %39 = zext i32 %37 to i64
  %40 = lshr i64 %38, %39
  store i64 %40, i64* %2, align 8
  store i32 2, i32* %4, align 4
  %41 = load i64, i64* %2, align 8
  %42 = lshr i64 %41, 2
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i64, i64* %2, align 8
  %51 = zext i32 %49 to i64
  %52 = lshr i64 %50, %51
  store i64 %52, i64* %2, align 8
  store i32 1, i32* %4, align 4
  %53 = load i64, i64* %2, align 8
  %54 = lshr i64 %53, 1
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
