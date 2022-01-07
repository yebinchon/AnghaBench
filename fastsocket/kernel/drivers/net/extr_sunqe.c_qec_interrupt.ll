; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunqe.c_qec_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunqe.c_qec_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunqec = type { %struct.sunqe**, i64 }
%struct.sunqe = type { i32, i64, i32 }

@GLOB_STAT = common dso_local global i64 0, align 8
@CREG_STAT = common dso_local global i64 0, align 8
@CREG_STAT_ERRORS = common dso_local global i32 0, align 4
@CREG_STAT_RXIRQ = common dso_local global i32 0, align 4
@CREG_STAT_TXIRQ = common dso_local global i32 0, align 4
@CREG_TIMASK = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qec_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qec_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sunqec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sunqe*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sunqec*
  store %struct.sunqec* %11, %struct.sunqec** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.sunqec*, %struct.sunqec** %5, align 8
  %13 = getelementptr inbounds %struct.sunqec, %struct.sunqec* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GLOB_STAT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @sbus_readl(i64 %16)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %95, %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %100

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 15
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %95

25:                                               ; preds = %21
  %26 = load %struct.sunqec*, %struct.sunqec** %5, align 8
  %27 = getelementptr inbounds %struct.sunqec, %struct.sunqec* %26, i32 0, i32 0
  %28 = load %struct.sunqe**, %struct.sunqe*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sunqe*, %struct.sunqe** %28, i64 %30
  %32 = load %struct.sunqe*, %struct.sunqe** %31, align 8
  store %struct.sunqe* %32, %struct.sunqe** %8, align 8
  %33 = load %struct.sunqe*, %struct.sunqe** %8, align 8
  %34 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CREG_STAT, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @sbus_readl(i64 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @CREG_STAT_ERRORS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %25
  %44 = load %struct.sunqe*, %struct.sunqe** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @qe_is_bolixed(%struct.sunqe* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %94

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %25
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @CREG_STAT_RXIRQ, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.sunqe*, %struct.sunqe** %8, align 8
  %57 = call i32 @qe_rx(%struct.sunqe* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.sunqe*, %struct.sunqe** %8, align 8
  %60 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @netif_queue_stopped(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @CREG_STAT_TXIRQ, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %64
  %70 = load %struct.sunqe*, %struct.sunqe** %8, align 8
  %71 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %70, i32 0, i32 0
  %72 = call i32 @spin_lock(i32* %71)
  %73 = load %struct.sunqe*, %struct.sunqe** %8, align 8
  %74 = call i32 @qe_tx_reclaim(%struct.sunqe* %73)
  %75 = load %struct.sunqe*, %struct.sunqe** %8, align 8
  %76 = call i64 @TX_BUFFS_AVAIL(%struct.sunqe* %75)
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %69
  %79 = load %struct.sunqe*, %struct.sunqe** %8, align 8
  %80 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @netif_wake_queue(i32 %81)
  %83 = load %struct.sunqe*, %struct.sunqe** %8, align 8
  %84 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CREG_TIMASK, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @sbus_writel(i32 1, i64 %87)
  br label %89

89:                                               ; preds = %78, %69
  %90 = load %struct.sunqe*, %struct.sunqe** %8, align 8
  %91 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock(i32* %91)
  br label %93

93:                                               ; preds = %89, %64, %58
  br label %94

94:                                               ; preds = %93, %48
  br label %95

95:                                               ; preds = %94, %21
  %96 = load i32, i32* %6, align 4
  %97 = ashr i32 %96, 4
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %18

100:                                              ; preds = %18
  %101 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %101
}

declare dso_local i32 @sbus_readl(i64) #1

declare dso_local i64 @qe_is_bolixed(%struct.sunqe*, i32) #1

declare dso_local i32 @qe_rx(%struct.sunqe*) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @qe_tx_reclaim(%struct.sunqe*) #1

declare dso_local i64 @TX_BUFFS_AVAIL(%struct.sunqe*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @sbus_writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
