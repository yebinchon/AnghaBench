; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_LM93_IN_REL_FROM_REG.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_LM93_IN_REL_FROM_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @LM93_IN_REL_FROM_REG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LM93_IN_REL_FROM_REG(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 4
  %14 = and i32 %13, 15
  %15 = add nsw i32 %14, 1
  %16 = mul nsw i32 %15, 12500
  br label %23

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 0
  %20 = and i32 %19, 15
  %21 = add nsw i32 %20, 1
  %22 = mul nsw i32 %21, -25000
  br label %23

23:                                               ; preds = %17, %11
  %24 = phi i32 [ %16, %11 ], [ %22, %17 ]
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, 1000
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %29, %30
  %32 = add nsw i64 %31, 5000
  %33 = sdiv i64 %32, 10000
  %34 = trunc i64 %33 to i32
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
