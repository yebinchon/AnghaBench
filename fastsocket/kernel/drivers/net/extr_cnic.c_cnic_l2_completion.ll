; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_l2_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_l2_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_local = type { i64*, i64, %struct.TYPE_4__*, %struct.cnic_uio_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.cnic_uio_dev = type { i64 }
%union.eth_rx_cqe = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@BNX2_PAGE_SIZE = common dso_local global i32 0, align 4
@CNIC_F_BNX2X_CLASS = common dso_local global i32 0, align 4
@BNX2X_MAX_RCQ_DESC_CNT = common dso_local global i64 0, align 8
@ETH_FAST_PATH_RX_CQE_TYPE = common dso_local global i32 0, align 4
@COMMON_RAMROD_ETH_RX_CQE_CMD_ID_SHIFT = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_CLIENT_SETUP = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_local*)* @cnic_l2_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_l2_completion(%struct.cnic_local* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cnic_uio_dev*, align 8
  %7 = alloca %union.eth_rx_cqe*, align 8
  %8 = alloca %union.eth_rx_cqe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cnic_local* %0, %struct.cnic_local** %3, align 8
  %12 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %13 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %12, i32 0, i32 3
  %14 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %13, align 8
  store %struct.cnic_uio_dev* %14, %struct.cnic_uio_dev** %6, align 8
  %15 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %6, align 8
  %16 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %19 = mul nsw i32 2, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = inttoptr i64 %21 to %union.eth_rx_cqe*
  store %union.eth_rx_cqe* %22, %union.eth_rx_cqe** %8, align 8
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* @CNIC_F_BNX2X_CLASS, align 4
  %24 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %25 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @test_bit(i32 %23, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %91

31:                                               ; preds = %1
  %32 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %33 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @BNX2X_MAX_RCQ_DESC_CNT, align 8
  %38 = and i64 %36, %37
  %39 = load i64, i64* @BNX2X_MAX_RCQ_DESC_CNT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %41, %31
  %45 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %46 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %86, %44
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %48
  %53 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %8, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @BNX2X_MAX_RCQ_DESC_CNT, align 8
  %56 = and i64 %54, %55
  %57 = getelementptr inbounds %union.eth_rx_cqe, %union.eth_rx_cqe* %53, i64 %56
  store %union.eth_rx_cqe* %57, %union.eth_rx_cqe** %7, align 8
  %58 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %7, align 8
  %59 = bitcast %union.eth_rx_cqe* %58 to %struct.TYPE_5__*
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @ETH_FAST_PATH_RX_CQE_TYPE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %52
  %67 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %7, align 8
  %68 = bitcast %union.eth_rx_cqe* %67 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* @COMMON_RAMROD_ETH_RX_CQE_CMD_ID_SHIFT, align 4
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @RAMROD_CMD_ID_ETH_CLIENT_SETUP, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @RAMROD_CMD_ID_ETH_HALT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %66
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %82, %78
  br label %86

86:                                               ; preds = %85, %52
  %87 = load i64, i64* %5, align 8
  %88 = call i64 @BNX2X_NEXT_RCQE(i64 %87)
  store i64 %88, i64* %5, align 8
  br label %48

89:                                               ; preds = %48
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %30
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @BNX2X_NEXT_RCQE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
