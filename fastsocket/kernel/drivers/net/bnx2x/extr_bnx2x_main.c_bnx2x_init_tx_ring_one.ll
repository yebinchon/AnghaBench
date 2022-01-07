; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_init_tx_ring_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_init_tx_ring_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_fp_txdata = type { i64, i64, i64, i64, i64, %struct.TYPE_8__, i32*, i64, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.eth_tx_next_bd }
%struct.eth_tx_next_bd = type { i8*, i8* }

@NUM_TX_RINGS = common dso_local global i32 0, align 4
@TX_DESC_CNT = common dso_local global i32 0, align 4
@BCM_PAGE_SIZE = common dso_local global i32 0, align 4
@DOORBELL_HDR_DB_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_fp_txdata*)* @bnx2x_init_tx_ring_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_init_tx_ring_one(%struct.bnx2x_fp_txdata* %0) #0 {
  %2 = alloca %struct.bnx2x_fp_txdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.eth_tx_next_bd*, align 8
  store %struct.bnx2x_fp_txdata* %0, %struct.bnx2x_fp_txdata** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %48, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NUM_TX_RINGS, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %51

9:                                                ; preds = %5
  %10 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %10, i32 0, i32 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = load i32, i32* @TX_DESC_CNT, align 4
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.eth_tx_next_bd* %19, %struct.eth_tx_next_bd** %4, align 8
  %20 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %2, align 8
  %21 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @NUM_TX_RINGS, align 4
  %26 = srem i32 %24, %25
  %27 = mul nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %22, %28
  %30 = call i32 @U64_HI(i64 %29)
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.eth_tx_next_bd*, %struct.eth_tx_next_bd** %4, align 8
  %33 = getelementptr inbounds %struct.eth_tx_next_bd, %struct.eth_tx_next_bd* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %2, align 8
  %35 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @NUM_TX_RINGS, align 4
  %40 = srem i32 %38, %39
  %41 = mul nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %36, %42
  %44 = call i32 @U64_LO(i64 %43)
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.eth_tx_next_bd*, %struct.eth_tx_next_bd** %4, align 8
  %47 = getelementptr inbounds %struct.eth_tx_next_bd, %struct.eth_tx_next_bd* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %9
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %5

51:                                               ; preds = %5
  %52 = call i32 @cpu_to_le16(i32 0)
  %53 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %2, align 8
  %54 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  store i32 %52, i32* %55, align 4
  %56 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %2, align 8
  %57 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @DOORBELL_HDR_DB_TYPE, align 4
  %63 = call i32 @SET_FLAG(i32 %61, i32 %62, i32 1)
  %64 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %2, align 8
  %65 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %2, align 8
  %69 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %2, align 8
  %73 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %2, align 8
  %75 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %2, align 8
  %77 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %2, align 8
  %79 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %2, align 8
  %81 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @U64_HI(i64) #1

declare dso_local i32 @U64_LO(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @SET_FLAG(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
