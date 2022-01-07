; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_hwmtm.c_init_txd_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_hwmtm.c_init_txd_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.s_smt_tx_queue** }
%struct.s_smt_tx_queue = type { i32, i64, %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd* }
%struct.s_smt_fp_txd = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%union.s_fp_descr = type { i32 }

@SMT_R1_RXD_COUNT = common dso_local global i32 0, align 4
@QUEUE_A0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Init async TxD ring, %d TxDs \00", align 1
@HWM_ASYNC_TXD_COUNT = common dso_local global i32 0, align 4
@B5_XA_DA = common dso_local global i32 0, align 4
@QUEUE_S = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Init sync TxD ring, %d TxDs \00", align 1
@HWM_SYNC_TXD_COUNT = common dso_local global i32 0, align 4
@B5_XS_DA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @init_txd_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_txd_ring(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca %struct.s_smt_fp_txd*, align 8
  %4 = alloca %struct.s_smt_tx_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %6 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %7 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load i32, i32* @SMT_R1_RXD_COUNT, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  %16 = bitcast i8* %15 to %struct.s_smt_fp_txd*
  store %struct.s_smt_fp_txd* %16, %struct.s_smt_fp_txd** %3, align 8
  %17 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %18 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.s_smt_tx_queue**, %struct.s_smt_tx_queue*** %20, align 8
  %22 = load i64, i64* @QUEUE_A0, align 8
  %23 = getelementptr inbounds %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %21, i64 %22
  %24 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %23, align 8
  store %struct.s_smt_tx_queue* %24, %struct.s_smt_tx_queue** %4, align 8
  %25 = load i32, i32* @HWM_ASYNC_TXD_COUNT, align 4
  %26 = call i32 @DB_GEN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25, i32 0, i32 3)
  %27 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %28 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %3, align 8
  %29 = bitcast %struct.s_smt_fp_txd* %28 to %union.s_fp_descr*
  %30 = load i32, i32* @HWM_ASYNC_TXD_COUNT, align 4
  %31 = call i32 @init_descr_ring(%struct.s_smc* %27, %union.s_fp_descr* %29, i32 %30)
  %32 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %3, align 8
  %33 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %32, i32 0, i32 0
  %34 = load volatile i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %3, align 8
  %37 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %36, i32 1
  store %struct.s_smt_fp_txd* %37, %struct.s_smt_fp_txd** %3, align 8
  %38 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %3, align 8
  %39 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %4, align 8
  %40 = getelementptr inbounds %struct.s_smt_tx_queue, %struct.s_smt_tx_queue* %39, i32 0, i32 2
  store %struct.s_smt_fp_txd* %38, %struct.s_smt_fp_txd** %40, align 8
  %41 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %4, align 8
  %42 = getelementptr inbounds %struct.s_smt_tx_queue, %struct.s_smt_tx_queue* %41, i32 0, i32 3
  store %struct.s_smt_fp_txd* %38, %struct.s_smt_fp_txd** %42, align 8
  %43 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %3, align 8
  %44 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %43, i32 -1
  store %struct.s_smt_fp_txd* %44, %struct.s_smt_fp_txd** %3, align 8
  %45 = load i32, i32* @HWM_ASYNC_TXD_COUNT, align 4
  %46 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %4, align 8
  %47 = getelementptr inbounds %struct.s_smt_tx_queue, %struct.s_smt_tx_queue* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %4, align 8
  %49 = getelementptr inbounds %struct.s_smt_tx_queue, %struct.s_smt_tx_queue* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @B5_XA_DA, align 4
  %51 = call i32 @ADDR(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @outpd(i32 %51, i32 %52)
  %54 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %3, align 8
  %55 = bitcast %struct.s_smt_fp_txd* %54 to i8*
  %56 = load i32, i32* @HWM_ASYNC_TXD_COUNT, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = bitcast i8* %59 to %struct.s_smt_fp_txd*
  store %struct.s_smt_fp_txd* %60, %struct.s_smt_fp_txd** %3, align 8
  %61 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %62 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.s_smt_tx_queue**, %struct.s_smt_tx_queue*** %64, align 8
  %66 = load i64, i64* @QUEUE_S, align 8
  %67 = getelementptr inbounds %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %65, i64 %66
  %68 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %67, align 8
  store %struct.s_smt_tx_queue* %68, %struct.s_smt_tx_queue** %4, align 8
  %69 = load i32, i32* @HWM_SYNC_TXD_COUNT, align 4
  %70 = call i32 @DB_GEN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 0, i32 3)
  %71 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %72 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %3, align 8
  %73 = bitcast %struct.s_smt_fp_txd* %72 to %union.s_fp_descr*
  %74 = load i32, i32* @HWM_SYNC_TXD_COUNT, align 4
  %75 = call i32 @init_descr_ring(%struct.s_smc* %71, %union.s_fp_descr* %73, i32 %74)
  %76 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %3, align 8
  %77 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %76, i32 0, i32 0
  %78 = load volatile i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %3, align 8
  %81 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %80, i32 1
  store %struct.s_smt_fp_txd* %81, %struct.s_smt_fp_txd** %3, align 8
  %82 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %3, align 8
  %83 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %4, align 8
  %84 = getelementptr inbounds %struct.s_smt_tx_queue, %struct.s_smt_tx_queue* %83, i32 0, i32 2
  store %struct.s_smt_fp_txd* %82, %struct.s_smt_fp_txd** %84, align 8
  %85 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %4, align 8
  %86 = getelementptr inbounds %struct.s_smt_tx_queue, %struct.s_smt_tx_queue* %85, i32 0, i32 3
  store %struct.s_smt_fp_txd* %82, %struct.s_smt_fp_txd** %86, align 8
  %87 = load i32, i32* @HWM_SYNC_TXD_COUNT, align 4
  %88 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %4, align 8
  %89 = getelementptr inbounds %struct.s_smt_tx_queue, %struct.s_smt_tx_queue* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %4, align 8
  %91 = getelementptr inbounds %struct.s_smt_tx_queue, %struct.s_smt_tx_queue* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @B5_XS_DA, align 4
  %93 = call i32 @ADDR(i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @outpd(i32 %93, i32 %94)
  ret void
}

declare dso_local i32 @DB_GEN(i8*, i32, i32, i32) #1

declare dso_local i32 @init_descr_ring(%struct.s_smc*, %union.s_fp_descr*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @outpd(i32, i32) #1

declare dso_local i32 @ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
