; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_tx_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_tx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64, i32, i64 }
%struct.bnx2x_fp_txdata = type { i64, i64, i32, i32* }
%struct.netdev_queue = type { i32 }

@NETIF_MSG_TX_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"queue[%d]: hw_cons %u  sw_cons %u  pkt_cons %u\0A\00", align 1
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@MAX_DESC_PER_TX_PKT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_tx_int(%struct.bnx2x* %0, %struct.bnx2x_fp_txdata* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_fp_txdata*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_fp_txdata* %1, %struct.bnx2x_fp_txdata** %4, align 8
  %10 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %17 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %15, i32 %18)
  store %struct.netdev_queue* %19, %struct.netdev_queue** %5, align 8
  %20 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le16_to_cpu(i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %26 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %32, %2
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @TX_BD(i64 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i32, i32* @NETIF_MSG_TX_DONE, align 4
  %36 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %37 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @DP(i32 %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %38, i64 %39, i64 %40, i64 %41)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %44 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @bnx2x_free_tx_pkt(%struct.bnx2x* %43, %struct.bnx2x_fp_txdata* %44, i64 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %28

49:                                               ; preds = %28
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %52 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %55 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = call i32 (...) @smp_mb()
  %57 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %58 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %57)
  %59 = call i64 @unlikely(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %49
  %62 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %63 = call i32 (...) @smp_processor_id()
  %64 = call i32 @__netif_tx_lock(%struct.netdev_queue* %62, i32 %63)
  %65 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %66 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %70 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %76 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %77 = call i64 @bnx2x_tx_avail(%struct.bnx2x* %75, %struct.bnx2x_fp_txdata* %76)
  %78 = load i64, i64* @MAX_DESC_PER_TX_PKT, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %82 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %81)
  br label %83

83:                                               ; preds = %80, %74, %68, %61
  %84 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %85 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %84)
  br label %86

86:                                               ; preds = %83, %49
  ret i32 0
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @TX_BD(i64) #1

declare dso_local i32 @DP(i32, i8*, i32, i64, i64, i64) #1

declare dso_local i64 @bnx2x_free_tx_pkt(%struct.bnx2x*, %struct.bnx2x_fp_txdata*, i64) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @bnx2x_tx_avail(%struct.bnx2x*, %struct.bnx2x_fp_txdata*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
