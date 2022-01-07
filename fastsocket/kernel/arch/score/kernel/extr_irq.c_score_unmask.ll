; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/score/kernel/extr_irq.c_score_unmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/score/kernel/extr_irq.c_score_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCORE_PIC = common dso_local global i64 0, align 8
@INT_MASKL = common dso_local global i64 0, align 8
@INT_MASKH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @score_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @score_unmask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sub i32 63, %4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ult i32 %6, 32
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i64, i64* @SCORE_PIC, align 8
  %10 = load i64, i64* @INT_MASKL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @__raw_readl(i64 %11)
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 1, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %12, %15
  %17 = load i64, i64* @SCORE_PIC, align 8
  %18 = load i64, i64* @INT_MASKL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @__raw_writel(i32 %16, i64 %19)
  br label %35

21:                                               ; preds = %1
  %22 = load i64, i64* @SCORE_PIC, align 8
  %23 = load i64, i64* @INT_MASKH, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @__raw_readl(i64 %24)
  %26 = load i32, i32* %3, align 4
  %27 = sub i32 %26, 32
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  %31 = load i64, i64* @SCORE_PIC, align 8
  %32 = load i64, i64* @INT_MASKH, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @__raw_writel(i32 %30, i64 %33)
  br label %35

35:                                               ; preds = %21, %8
  ret void
}

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
