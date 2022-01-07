; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_dma_operation_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_dma_operation_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMA_CONTROL = common dso_local global i64 0, align 8
@DMA_CONTROL_TTC_32 = common dso_local global i32 0, align 4
@DMA_CONTROL_TTC_64 = common dso_local global i32 0, align 4
@DMA_CONTROL_TTC_128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @mac100_dma_operation_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac100_dma_operation_mode(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @DMA_CONTROL, align 8
  %10 = add i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 32
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @DMA_CONTROL_TTC_32, align 4
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 %19, 64
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @DMA_CONTROL_TTC_64, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @DMA_CONTROL_TTC_128, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @DMA_CONTROL, align 8
  %34 = add i64 %32, %33
  %35 = call i32 @writel(i32 %31, i64 %34)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
