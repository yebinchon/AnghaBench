; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_flushqueues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_flushqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_2__*, %struct.brcms_hardware* }
%struct.TYPE_2__ = type { i32 }
%struct.brcms_hardware = type { i64* }

@NFIFO = common dso_local global i64 0, align 8
@DMA_RANGE_ALL = common dso_local global i32 0, align 4
@TX_BCMC_FIFO = common dso_local global i64 0, align 8
@RX_FIFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*)* @brcms_c_flushqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_flushqueues(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %5 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %5, i32 0, i32 1
  %7 = load %struct.brcms_hardware*, %struct.brcms_hardware** %6, align 8
  store %struct.brcms_hardware* %7, %struct.brcms_hardware** %3, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %43, %1
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @NFIFO, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  %13 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %12
  %21 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %22 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @DMA_RANGE_ALL, align 4
  %28 = call i32 @dma_txreclaim(i64 %26, i32 %27)
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @TX_BCMC_FIFO, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %34 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @brcms_fifo_to_ac(i64 %38)
  %40 = call i32 @ieee80211_wake_queue(i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %32, %20
  br label %42

42:                                               ; preds = %41, %12
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %8

46:                                               ; preds = %8
  %47 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %48 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @RX_FIFO, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @dma_rxreclaim(i64 %52)
  ret void
}

declare dso_local i32 @dma_txreclaim(i64, i32) #1

declare dso_local i32 @ieee80211_wake_queue(i32, i32) #1

declare dso_local i32 @brcms_fifo_to_ac(i64) #1

declare dso_local i32 @dma_rxreclaim(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
