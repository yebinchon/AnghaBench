; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_it821x.c_it821x_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_it821x.c_it821x_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_UDMA_6 = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @it821x_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it821x_set_dma_mode(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @XFER_UDMA_0, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @XFER_UDMA_6, align 8
  %11 = icmp sle i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32*, i32** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @XFER_UDMA_0, align 8
  %16 = sub nsw i64 %14, %15
  %17 = call i32 @it821x_tune_udma(i32* %13, i64 %16)
  br label %33

18:                                               ; preds = %8, %2
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @XFER_MW_DMA_0, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @XFER_MW_DMA_2, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @XFER_MW_DMA_0, align 8
  %30 = sub nsw i64 %28, %29
  %31 = call i32 @it821x_tune_mwdma(i32* %27, i64 %30)
  br label %32

32:                                               ; preds = %26, %22, %18
  br label %33

33:                                               ; preds = %32, %12
  ret void
}

declare dso_local i32 @it821x_tune_udma(i32*, i64) #1

declare dso_local i32 @it821x_tune_mwdma(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
