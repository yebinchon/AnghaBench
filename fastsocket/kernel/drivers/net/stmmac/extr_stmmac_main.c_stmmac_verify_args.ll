; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_stmmac_verify_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_stmmac_verify_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@watchdog = common dso_local global i64 0, align 8
@TX_TIMEO = common dso_local global i64 0, align 8
@dma_rxsize = common dso_local global i64 0, align 8
@DMA_RX_SIZE = common dso_local global i64 0, align 8
@dma_txsize = common dso_local global i64 0, align 8
@DMA_TX_SIZE = common dso_local global i64 0, align 8
@buf_sz = common dso_local global i64 0, align 8
@DMA_BUFFER_SIZE = common dso_local global i64 0, align 8
@BUF_SIZE_16KiB = common dso_local global i64 0, align 8
@flow_ctrl = common dso_local global i32 0, align 4
@FLOW_AUTO = common dso_local global i32 0, align 4
@FLOW_OFF = common dso_local global i32 0, align 4
@pause = common dso_local global i32 0, align 4
@PAUSE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @stmmac_verify_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_verify_args() #0 {
  %1 = load i64, i64* @watchdog, align 8
  %2 = icmp slt i64 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i64 @unlikely(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i64, i64* @TX_TIMEO, align 8
  store i64 %7, i64* @watchdog, align 8
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i64, i64* @dma_rxsize, align 8
  %10 = icmp slt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i64, i64* @DMA_RX_SIZE, align 8
  store i64 %15, i64* @dma_rxsize, align 8
  br label %16

16:                                               ; preds = %14, %8
  %17 = load i64, i64* @dma_txsize, align 8
  %18 = icmp slt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* @DMA_TX_SIZE, align 8
  store i64 %23, i64* @dma_txsize, align 8
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i64, i64* @buf_sz, align 8
  %26 = load i64, i64* @DMA_BUFFER_SIZE, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @buf_sz, align 8
  %30 = load i64, i64* @BUF_SIZE_16KiB, align 8
  %31 = icmp sgt i64 %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ true, %24 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* @DMA_BUFFER_SIZE, align 8
  store i64 %38, i64* @buf_sz, align 8
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* @flow_ctrl, align 4
  %41 = icmp sgt i32 %40, 1
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @FLOW_AUTO, align 4
  store i32 %46, i32* @flow_ctrl, align 4
  br label %56

47:                                               ; preds = %39
  %48 = load i32, i32* @flow_ctrl, align 4
  %49 = icmp slt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @FLOW_OFF, align 4
  store i32 %54, i32* @flow_ctrl, align 4
  br label %55

55:                                               ; preds = %53, %47
  br label %56

56:                                               ; preds = %55, %45
  %57 = load i32, i32* @pause, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @pause, align 4
  %61 = icmp sgt i32 %60, 65535
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i1 [ true, %56 ], [ %61, %59 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @PAUSE_TIME, align 4
  store i32 %68, i32* @pause, align 4
  br label %69

69:                                               ; preds = %67, %62
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
