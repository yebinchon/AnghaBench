; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-bf548/extr_dma.c_channel2irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-bf548/extr_dma.c_channel2irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_SPORT0_RX = common dso_local global i32 0, align 4
@IRQ_SPORT0_TX = common dso_local global i32 0, align 4
@IRQ_SPORT1_RX = common dso_local global i32 0, align 4
@IRQ_SPORT1_TX = common dso_local global i32 0, align 4
@IRQ_SPI0 = common dso_local global i32 0, align 4
@IRQ_SPI1 = common dso_local global i32 0, align 4
@IRQ_UART0_RX = common dso_local global i32 0, align 4
@IRQ_UART0_TX = common dso_local global i32 0, align 4
@IRQ_UART1_RX = common dso_local global i32 0, align 4
@IRQ_UART1_TX = common dso_local global i32 0, align 4
@IRQ_EPPI0 = common dso_local global i32 0, align 4
@IRQ_EPPI1 = common dso_local global i32 0, align 4
@IRQ_EPPI2 = common dso_local global i32 0, align 4
@IRQ_PIXC_IN0 = common dso_local global i32 0, align 4
@IRQ_PIXC_IN1 = common dso_local global i32 0, align 4
@IRQ_PIXC_OUT = common dso_local global i32 0, align 4
@IRQ_SPORT2_RX = common dso_local global i32 0, align 4
@IRQ_SPORT2_TX = common dso_local global i32 0, align 4
@IRQ_SPORT3_RX = common dso_local global i32 0, align 4
@IRQ_SPORT3_TX = common dso_local global i32 0, align 4
@IRQ_SDH = common dso_local global i32 0, align 4
@IRQ_SPI2 = common dso_local global i32 0, align 4
@IRQ_MDMAS0 = common dso_local global i32 0, align 4
@IRQ_MDMAS1 = common dso_local global i32 0, align 4
@IRQ_MDMAS2 = common dso_local global i32 0, align 4
@IRQ_MDMAS3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @channel2irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %57 [
    i32 139, label %5
    i32 138, label %7
    i32 137, label %9
    i32 136, label %11
    i32 142, label %13
    i32 141, label %15
    i32 131, label %17
    i32 130, label %19
    i32 129, label %21
    i32 128, label %23
    i32 157, label %25
    i32 156, label %27
    i32 155, label %29
    i32 146, label %31
    i32 144, label %33
    i32 145, label %35
    i32 135, label %37
    i32 134, label %39
    i32 133, label %41
    i32 132, label %43
    i32 143, label %45
    i32 140, label %47
    i32 153, label %49
    i32 154, label %49
    i32 151, label %51
    i32 152, label %51
    i32 149, label %53
    i32 150, label %53
    i32 147, label %55
    i32 148, label %55
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @IRQ_SPORT0_RX, align 4
  store i32 %6, i32* %3, align 4
  br label %57

7:                                                ; preds = %1
  %8 = load i32, i32* @IRQ_SPORT0_TX, align 4
  store i32 %8, i32* %3, align 4
  br label %57

9:                                                ; preds = %1
  %10 = load i32, i32* @IRQ_SPORT1_RX, align 4
  store i32 %10, i32* %3, align 4
  br label %57

11:                                               ; preds = %1
  %12 = load i32, i32* @IRQ_SPORT1_TX, align 4
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %1, %11
  %14 = load i32, i32* @IRQ_SPI0, align 4
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %1
  %16 = load i32, i32* @IRQ_SPI1, align 4
  store i32 %16, i32* %3, align 4
  br label %57

17:                                               ; preds = %1
  %18 = load i32, i32* @IRQ_UART0_RX, align 4
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %1
  %20 = load i32, i32* @IRQ_UART0_TX, align 4
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %1
  %22 = load i32, i32* @IRQ_UART1_RX, align 4
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %1
  %24 = load i32, i32* @IRQ_UART1_TX, align 4
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %1
  %26 = load i32, i32* @IRQ_EPPI0, align 4
  store i32 %26, i32* %3, align 4
  br label %57

27:                                               ; preds = %1
  %28 = load i32, i32* @IRQ_EPPI1, align 4
  store i32 %28, i32* %3, align 4
  br label %57

29:                                               ; preds = %1
  %30 = load i32, i32* @IRQ_EPPI2, align 4
  store i32 %30, i32* %3, align 4
  br label %57

31:                                               ; preds = %1
  %32 = load i32, i32* @IRQ_PIXC_IN0, align 4
  store i32 %32, i32* %3, align 4
  br label %57

33:                                               ; preds = %1
  %34 = load i32, i32* @IRQ_PIXC_IN1, align 4
  store i32 %34, i32* %3, align 4
  br label %57

35:                                               ; preds = %1
  %36 = load i32, i32* @IRQ_PIXC_OUT, align 4
  store i32 %36, i32* %3, align 4
  br label %57

37:                                               ; preds = %1
  %38 = load i32, i32* @IRQ_SPORT2_RX, align 4
  store i32 %38, i32* %3, align 4
  br label %57

39:                                               ; preds = %1
  %40 = load i32, i32* @IRQ_SPORT2_TX, align 4
  store i32 %40, i32* %3, align 4
  br label %57

41:                                               ; preds = %1
  %42 = load i32, i32* @IRQ_SPORT3_RX, align 4
  store i32 %42, i32* %3, align 4
  br label %57

43:                                               ; preds = %1
  %44 = load i32, i32* @IRQ_SPORT3_TX, align 4
  store i32 %44, i32* %3, align 4
  br label %57

45:                                               ; preds = %1
  %46 = load i32, i32* @IRQ_SDH, align 4
  store i32 %46, i32* %3, align 4
  br label %57

47:                                               ; preds = %1
  %48 = load i32, i32* @IRQ_SPI2, align 4
  store i32 %48, i32* %3, align 4
  br label %57

49:                                               ; preds = %1, %1
  %50 = load i32, i32* @IRQ_MDMAS0, align 4
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %1, %1
  %52 = load i32, i32* @IRQ_MDMAS1, align 4
  store i32 %52, i32* %3, align 4
  br label %57

53:                                               ; preds = %1, %1
  %54 = load i32, i32* @IRQ_MDMAS2, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %1, %1
  %56 = load i32, i32* @IRQ_MDMAS3, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %1, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %9, %7, %5
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
