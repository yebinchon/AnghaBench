; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_rx_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_rx_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.niu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rx_ring_info = type { i64, i64, i32, %struct.rxdma_mailbox* }
%struct.rxdma_mailbox = type { i64, i64 }

@RCRSTAT_A_QLEN = common dso_local global i32 0, align 4
@RX_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: niu_rx_work(chan[%d]), stat[%llx] qlen=%d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RX_DMA_CTL_STAT_MEX = common dso_local global i32 0, align 4
@RX_DMA_CTL_STAT_PKTREAD_SHIFT = common dso_local global i32 0, align 4
@RX_DMA_CTL_STAT_PTRREAD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, %struct.niu*, %struct.rx_ring_info*, i32)* @niu_rx_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_rx_work(%struct.napi_struct* %0, %struct.niu* %1, %struct.rx_ring_info* %2, i32 %3) #0 {
  %5 = alloca %struct.napi_struct*, align 8
  %6 = alloca %struct.niu*, align 8
  %7 = alloca %struct.rx_ring_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rxdma_mailbox*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %5, align 8
  store %struct.niu* %1, %struct.niu** %6, align 8
  store %struct.rx_ring_info* %2, %struct.rx_ring_info** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %16 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %15, i32 0, i32 3
  %17 = load %struct.rxdma_mailbox*, %struct.rxdma_mailbox** %16, align 8
  store %struct.rxdma_mailbox* %17, %struct.rxdma_mailbox** %12, align 8
  %18 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %19 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @RX_DMA_CTL_STAT(i32 %20)
  %22 = call i32 @nr64(i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %24 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @RCRSTAT_A(i32 %25)
  %27 = call i32 @nr64(i32 %26)
  %28 = load i32, i32* @RCRSTAT_A_QLEN, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.rxdma_mailbox*, %struct.rxdma_mailbox** %12, align 8
  %31 = getelementptr inbounds %struct.rxdma_mailbox, %struct.rxdma_mailbox* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.rxdma_mailbox*, %struct.rxdma_mailbox** %12, align 8
  %33 = getelementptr inbounds %struct.rxdma_mailbox, %struct.rxdma_mailbox* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @RX_STATUS, align 4
  %35 = load %struct.niu*, %struct.niu** %6, align 8
  %36 = getelementptr inbounds %struct.niu, %struct.niu* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %41 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @niudbg(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i64 %44, i32 %45)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @min(i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %54, %4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %56 = load %struct.niu*, %struct.niu** %6, align 8
  %57 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %58 = call i64 @niu_process_rx_pkt(%struct.napi_struct* %55, %struct.niu* %56, %struct.rx_ring_info* %57)
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %50

65:                                               ; preds = %50
  %66 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %67 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %70 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %68, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %65
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %86, %73
  %75 = load i32, i32* %14, align 4
  %76 = zext i32 %75 to i64
  %77 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %78 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.niu*, %struct.niu** %6, align 8
  %83 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %84 = load i32, i32* @GFP_ATOMIC, align 4
  %85 = call i32 @niu_rbr_refill(%struct.niu* %82, %struct.rx_ring_info* %83, i32 %84)
  br label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %14, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %74

89:                                               ; preds = %74
  %90 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %91 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %65
  %93 = load i32, i32* @RX_DMA_CTL_STAT_MEX, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @RX_DMA_CTL_STAT_PKTREAD_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = or i32 %93, %96
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @RX_DMA_CTL_STAT_PTRREAD_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = or i32 %97, %100
  store i32 %101, i32* %13, align 4
  %102 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %103 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @RX_DMA_CTL_STAT(i32 %104)
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @nw64(i32 %105, i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = icmp sgt i32 %108, 10
  br i1 %109, label %110, label %114

110:                                              ; preds = %92
  %111 = load %struct.niu*, %struct.niu** %6, align 8
  %112 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %113 = call i32 @niu_sync_rx_discard_stats(%struct.niu* %111, %struct.rx_ring_info* %112, i32 32767)
  br label %114

114:                                              ; preds = %110, %92
  %115 = load i32, i32* %11, align 4
  ret i32 %115
}

declare dso_local i32 @nr64(i32) #1

declare dso_local i32 @RX_DMA_CTL_STAT(i32) #1

declare dso_local i32 @RCRSTAT_A(i32) #1

declare dso_local i32 @niudbg(i32, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @niu_process_rx_pkt(%struct.napi_struct*, %struct.niu*, %struct.rx_ring_info*) #1

declare dso_local i32 @niu_rbr_refill(%struct.niu*, %struct.rx_ring_info*, i32) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @niu_sync_rx_discard_stats(%struct.niu*, %struct.rx_ring_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
