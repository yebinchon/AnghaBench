; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_tx_split.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_tx_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_fp_txdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.eth_tx_bd }
%struct.eth_tx_bd = type { i8*, i8*, i8* }
%struct.sw_tx_bd = type { i32 }
%struct.eth_tx_start_bd = type { i8*, i8*, i8* }

@NETIF_MSG_TX_QUEUED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"TSO split header size is %d (%x:%x)\0A\00", align 1
@BNX2X_TSO_SPLIT_BD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"TSO split data size is %d (%x:%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnx2x*, %struct.bnx2x_fp_txdata*, %struct.sw_tx_bd*, %struct.eth_tx_start_bd**, i64, i64)* @bnx2x_tx_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnx2x_tx_split(%struct.bnx2x* %0, %struct.bnx2x_fp_txdata* %1, %struct.sw_tx_bd* %2, %struct.eth_tx_start_bd** %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.bnx2x_fp_txdata*, align 8
  %9 = alloca %struct.sw_tx_bd*, align 8
  %10 = alloca %struct.eth_tx_start_bd**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.eth_tx_start_bd*, align 8
  %14 = alloca %struct.eth_tx_bd*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store %struct.bnx2x_fp_txdata* %1, %struct.bnx2x_fp_txdata** %8, align 8
  store %struct.sw_tx_bd* %2, %struct.sw_tx_bd** %9, align 8
  store %struct.eth_tx_start_bd** %3, %struct.eth_tx_start_bd*** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load %struct.eth_tx_start_bd**, %struct.eth_tx_start_bd*** %10, align 8
  %18 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %17, align 8
  store %struct.eth_tx_start_bd* %18, %struct.eth_tx_start_bd** %13, align 8
  %19 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %13, align 8
  %20 = getelementptr inbounds %struct.eth_tx_start_bd, %struct.eth_tx_start_bd* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @le16_to_cpu(i8* %21)
  store i32 %22, i32* %16, align 4
  %23 = load i64, i64* %11, align 8
  %24 = call i8* @cpu_to_le16(i64 %23)
  %25 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %13, align 8
  %26 = getelementptr inbounds %struct.eth_tx_start_bd, %struct.eth_tx_start_bd* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @NETIF_MSG_TX_QUEUED, align 4
  %28 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %13, align 8
  %29 = getelementptr inbounds %struct.eth_tx_start_bd, %struct.eth_tx_start_bd* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %13, align 8
  %32 = getelementptr inbounds %struct.eth_tx_start_bd, %struct.eth_tx_start_bd* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %13, align 8
  %35 = getelementptr inbounds %struct.eth_tx_start_bd, %struct.eth_tx_start_bd* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @DP(i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %33, i8* %36)
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @NEXT_TX_IDX(i64 %38)
  %40 = call i64 @TX_BD(i32 %39)
  store i64 %40, i64* %12, align 8
  %41 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %8, align 8
  %42 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store %struct.eth_tx_bd* %46, %struct.eth_tx_bd** %14, align 8
  %47 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %13, align 8
  %48 = getelementptr inbounds %struct.eth_tx_start_bd, %struct.eth_tx_start_bd* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @le32_to_cpu(i8* %49)
  %51 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %13, align 8
  %52 = getelementptr inbounds %struct.eth_tx_start_bd, %struct.eth_tx_start_bd* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @le32_to_cpu(i8* %53)
  %55 = call i64 @HILO_U64(i32 %50, i32 %54)
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %55, %56
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %15, align 8
  %59 = call i32 @U64_HI(i64 %58)
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %14, align 8
  %62 = getelementptr inbounds %struct.eth_tx_bd, %struct.eth_tx_bd* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call i32 @U64_LO(i64 %63)
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %14, align 8
  %67 = getelementptr inbounds %struct.eth_tx_bd, %struct.eth_tx_bd* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %11, align 8
  %71 = sub i64 %69, %70
  %72 = call i8* @cpu_to_le16(i64 %71)
  %73 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %14, align 8
  %74 = getelementptr inbounds %struct.eth_tx_bd, %struct.eth_tx_bd* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @BNX2X_TSO_SPLIT_BD, align 4
  %76 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %9, align 8
  %77 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @NETIF_MSG_TX_QUEUED, align 4
  %81 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %14, align 8
  %82 = getelementptr inbounds %struct.eth_tx_bd, %struct.eth_tx_bd* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %14, align 8
  %85 = getelementptr inbounds %struct.eth_tx_bd, %struct.eth_tx_bd* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %14, align 8
  %88 = getelementptr inbounds %struct.eth_tx_bd, %struct.eth_tx_bd* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @DP(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %83, i8* %86, i8* %89)
  %91 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %14, align 8
  %92 = bitcast %struct.eth_tx_bd* %91 to %struct.eth_tx_start_bd*
  %93 = load %struct.eth_tx_start_bd**, %struct.eth_tx_start_bd*** %10, align 8
  store %struct.eth_tx_start_bd* %92, %struct.eth_tx_start_bd** %93, align 8
  %94 = load i64, i64* %12, align 8
  ret i64 %94
}

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @DP(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @TX_BD(i32) #1

declare dso_local i32 @NEXT_TX_IDX(i64) #1

declare dso_local i64 @HILO_U64(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @U64_HI(i64) #1

declare dso_local i32 @U64_LO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
