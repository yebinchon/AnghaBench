; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_via686a.c_IN_FROM_REG.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_via686a.c_IN_FROM_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @IN_FROM_REG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IN_FROM_REG(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sle i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = mul nsw i32 250000, %9
  %11 = add nsw i32 %10, 1330000
  %12 = add nsw i32 %11, 10512
  %13 = sdiv i32 %12, 21024
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %3, align 8
  br label %42

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 250000, %19
  %21 = add nsw i32 %20, 1330000
  %22 = add nsw i32 %21, 7868
  %23 = sdiv i32 %22, 15737
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  br label %42

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 250000, %29
  %31 = add nsw i32 %30, 1330000
  %32 = add nsw i32 %31, 5054
  %33 = sdiv i32 %32, 10108
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %3, align 8
  br label %42

35:                                               ; preds = %25
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 2500000, %36
  %38 = add nsw i32 %37, 13300000
  %39 = add nsw i32 %38, 20857
  %40 = sdiv i32 %39, 41714
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %35, %28, %18, %8
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
