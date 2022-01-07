; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_dma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMA_BUS_MODE = common dso_local global i64 0, align 8
@DMA_BUS_MODE_SFT_RESET = common dso_local global i32 0, align 4
@DMA_BUS_MODE_DEFAULT = common dso_local global i32 0, align 4
@DMA_BUS_MODE_PBL_SHIFT = common dso_local global i32 0, align 4
@DMA_INTR_DEFAULT_MASK = common dso_local global i32 0, align 4
@DMA_INTR_ENA = common dso_local global i64 0, align 8
@DMA_TX_BASE_ADDR = common dso_local global i64 0, align 8
@DMA_RCV_BASE_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32)* @mac100_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac100_dma_init(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @DMA_BUS_MODE, align 8
  %12 = add i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @DMA_BUS_MODE_SFT_RESET, align 4
  %15 = load i32, i32* %9, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @DMA_BUS_MODE, align 8
  %20 = add i64 %18, %19
  %21 = call i32 @writel(i32 %17, i64 %20)
  br label %22

22:                                               ; preds = %23, %4
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @DMA_BUS_MODE, align 8
  %26 = add i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  %28 = load i32, i32* @DMA_BUS_MODE_SFT_RESET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %22, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @DMA_BUS_MODE_DEFAULT, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DMA_BUS_MODE_PBL_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %32, %35
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @DMA_BUS_MODE, align 8
  %39 = add i64 %37, %38
  %40 = call i32 @writel(i32 %36, i64 %39)
  %41 = load i32, i32* @DMA_INTR_DEFAULT_MASK, align 4
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @DMA_INTR_ENA, align 8
  %44 = add i64 %42, %43
  %45 = call i32 @writel(i32 %41, i64 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @DMA_TX_BASE_ADDR, align 8
  %49 = add i64 %47, %48
  %50 = call i32 @writel(i32 %46, i64 %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @DMA_RCV_BASE_ADDR, align 8
  %54 = add i64 %52, %53
  %55 = call i32 @writel(i32 %51, i64 %54)
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
