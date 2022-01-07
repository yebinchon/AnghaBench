; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { i32, i32, i32, i32, %struct.TYPE_18__, i32 (%struct.bnad*, %struct.bna_ccb*)*, i32 (%struct.bnad*, %struct.bna_rcb*)*, i32, i64, %struct.bna*, i32, i32, i32, i32, i32, i8*, i32*, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.bna_ccb = type { i32*, i64, i32, i32, i32, %struct.TYPE_16__, i32, i32*, %struct.bna_rcb**, %struct.TYPE_17__*, i64 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.bna_rcb = type { i32, %struct.bna_ccb*, i32, %struct.bna_rxq*, i64, i8* }
%struct.bna_rxq = type { %struct.bna_rcb*, i64, i64, i64, i64, i32, %struct.bna_rxp*, %struct.bna_rx* }
%struct.bna_rxp = type { i64, i32, %struct.TYPE_17__, %struct.bna_rx*, i32 }
%struct.TYPE_17__ = type { %struct.bna_ccb*, %struct.TYPE_15__, %struct.bna_rx* }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.bna = type { i32, %struct.bna_rx_mod }
%struct.bna_rx_mod = type { i32, i32 }
%struct.bnad = type { i32 }
%struct.bna_rx_config = type { i32, i64, %struct.TYPE_18__, i64, i32, i32, i32 }
%struct.bna_rx_event_cbfn = type { i32, i32, i32, i32, i32 (%struct.bnad*, %struct.bna_ccb*)*, i32, i32 (%struct.bnad*, %struct.bna_rcb*)* }
%struct.bna_res_info = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.bna_intr_info }
%struct.TYPE_13__ = type { i32, %struct.bna_mem_descr* }
%struct.bna_mem_descr = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.bna_intr_info = type { i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@BNA_RX_RES_T_INTR = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_CCB = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_RCB = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_UNMAPQ = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_CQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_CSWQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_CQPT_PAGE = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_HQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_DQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_HSWQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_DSWQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_HPAGE = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_DPAGE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@BNA_RX_MOD_F_ENET_STARTED = common dso_local global i32 0, align 4
@BNA_RX_MOD_F_ENET_LOOPBACK = common dso_local global i32 0, align 4
@BNA_RX_F_ENET_STARTED = common dso_local global i64 0, align 8
@BNA_RXP_SINGLE = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_IBIDX = common dso_local global i64 0, align 8
@BNA_INTR_T_MSIX = common dso_local global i64 0, align 8
@BFI_RX_INTERPKT_COUNT = common dso_local global i32 0, align 4
@BFI_RX_INTERPKT_TIMEO = common dso_local global i32 0, align 4
@BNA_RXP_HDS = common dso_local global i64 0, align 8
@bna_rx_sm_stopped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bna_rx* @bna_rx_create(%struct.bna* %0, %struct.bnad* %1, %struct.bna_rx_config* %2, %struct.bna_rx_event_cbfn* %3, %struct.bna_res_info* %4, i8* %5) #0 {
  %7 = alloca %struct.bna_rx*, align 8
  %8 = alloca %struct.bna*, align 8
  %9 = alloca %struct.bnad*, align 8
  %10 = alloca %struct.bna_rx_config*, align 8
  %11 = alloca %struct.bna_rx_event_cbfn*, align 8
  %12 = alloca %struct.bna_res_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.bna_rx_mod*, align 8
  %15 = alloca %struct.bna_rx*, align 8
  %16 = alloca %struct.bna_rxp*, align 8
  %17 = alloca %struct.bna_rxq*, align 8
  %18 = alloca %struct.bna_rxq*, align 8
  %19 = alloca %struct.bna_intr_info*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.bna_mem_descr*, align 8
  %22 = alloca %struct.bna_mem_descr*, align 8
  %23 = alloca %struct.bna_mem_descr*, align 8
  %24 = alloca %struct.bna_mem_descr*, align 8
  %25 = alloca %struct.bna_mem_descr*, align 8
  %26 = alloca %struct.bna_mem_descr*, align 8
  %27 = alloca %struct.bna_mem_descr*, align 8
  %28 = alloca %struct.bna_mem_descr*, align 8
  %29 = alloca %struct.bna_mem_descr*, align 8
  %30 = alloca %struct.bna_mem_descr*, align 8
  %31 = alloca %struct.bna_mem_descr*, align 8
  %32 = alloca %struct.bna_mem_descr*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.bna* %0, %struct.bna** %8, align 8
  store %struct.bnad* %1, %struct.bnad** %9, align 8
  store %struct.bna_rx_config* %2, %struct.bna_rx_config** %10, align 8
  store %struct.bna_rx_event_cbfn* %3, %struct.bna_rx_event_cbfn** %11, align 8
  store %struct.bna_res_info* %4, %struct.bna_res_info** %12, align 8
  store i8* %5, i8** %13, align 8
  %37 = load %struct.bna*, %struct.bna** %8, align 8
  %38 = getelementptr inbounds %struct.bna, %struct.bna* %37, i32 0, i32 1
  store %struct.bna_rx_mod* %38, %struct.bna_rx_mod** %14, align 8
  %39 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %14, align 8
  %40 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %41 = call i32 @bna_rx_res_check(%struct.bna_rx_mod* %39, %struct.bna_rx_config* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %6
  store %struct.bna_rx* null, %struct.bna_rx** %7, align 8
  br label %863

44:                                               ; preds = %6
  %45 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %46 = load i64, i64* @BNA_RX_RES_T_INTR, align 8
  %47 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %45, i64 %46
  %48 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  store %struct.bna_intr_info* %49, %struct.bna_intr_info** %19, align 8
  %50 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %51 = load i64, i64* @BNA_RX_RES_MEM_T_CCB, align 8
  %52 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %50, i64 %51
  %53 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %55, align 8
  %57 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %56, i64 0
  store %struct.bna_mem_descr* %57, %struct.bna_mem_descr** %21, align 8
  %58 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %59 = load i64, i64* @BNA_RX_RES_MEM_T_RCB, align 8
  %60 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %58, i64 %59
  %61 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %63, align 8
  %65 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %64, i64 0
  store %struct.bna_mem_descr* %65, %struct.bna_mem_descr** %22, align 8
  %66 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %67 = load i64, i64* @BNA_RX_RES_MEM_T_UNMAPQ, align 8
  %68 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %66, i64 %67
  %69 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %71, align 8
  %73 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %72, i64 0
  store %struct.bna_mem_descr* %73, %struct.bna_mem_descr** %23, align 8
  %74 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %75 = load i64, i64* @BNA_RX_RES_MEM_T_CQPT, align 8
  %76 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %74, i64 %75
  %77 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %79, align 8
  %81 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %80, i64 0
  store %struct.bna_mem_descr* %81, %struct.bna_mem_descr** %24, align 8
  %82 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %83 = load i64, i64* @BNA_RX_RES_MEM_T_CSWQPT, align 8
  %84 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %82, i64 %83
  %85 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %87, align 8
  %89 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %88, i64 0
  store %struct.bna_mem_descr* %89, %struct.bna_mem_descr** %25, align 8
  %90 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %91 = load i64, i64* @BNA_RX_RES_MEM_T_CQPT_PAGE, align 8
  %92 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %90, i64 %91
  %93 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %95, align 8
  %97 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %96, i64 0
  store %struct.bna_mem_descr* %97, %struct.bna_mem_descr** %26, align 8
  %98 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %99 = load i64, i64* @BNA_RX_RES_MEM_T_HQPT, align 8
  %100 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %98, i64 %99
  %101 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %103, align 8
  %105 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %104, i64 0
  store %struct.bna_mem_descr* %105, %struct.bna_mem_descr** %27, align 8
  %106 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %107 = load i64, i64* @BNA_RX_RES_MEM_T_DQPT, align 8
  %108 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %106, i64 %107
  %109 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %111, align 8
  %113 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %112, i64 0
  store %struct.bna_mem_descr* %113, %struct.bna_mem_descr** %28, align 8
  %114 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %115 = load i64, i64* @BNA_RX_RES_MEM_T_HSWQPT, align 8
  %116 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %114, i64 %115
  %117 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %119, align 8
  %121 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %120, i64 0
  store %struct.bna_mem_descr* %121, %struct.bna_mem_descr** %29, align 8
  %122 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %123 = load i64, i64* @BNA_RX_RES_MEM_T_DSWQPT, align 8
  %124 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %122, i64 %123
  %125 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %127, align 8
  %129 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %128, i64 0
  store %struct.bna_mem_descr* %129, %struct.bna_mem_descr** %30, align 8
  %130 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %131 = load i64, i64* @BNA_RX_RES_MEM_T_HPAGE, align 8
  %132 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %130, i64 %131
  %133 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %135, align 8
  %137 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %136, i64 0
  store %struct.bna_mem_descr* %137, %struct.bna_mem_descr** %31, align 8
  %138 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %139 = load i64, i64* @BNA_RX_RES_MEM_T_DPAGE, align 8
  %140 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %138, i64 %139
  %141 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %143, align 8
  %145 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %144, i64 0
  store %struct.bna_mem_descr* %145, %struct.bna_mem_descr** %32, align 8
  %146 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %147 = load i64, i64* @BNA_RX_RES_MEM_T_CQPT_PAGE, align 8
  %148 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %146, i64 %147
  %149 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @PAGE_SIZE, align 4
  %154 = sdiv i32 %152, %153
  store i32 %154, i32* %20, align 4
  %155 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %156 = load i64, i64* @BNA_RX_RES_MEM_T_DPAGE, align 8
  %157 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %155, i64 %156
  %158 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @PAGE_SIZE, align 4
  %163 = sdiv i32 %161, %162
  store i32 %163, i32* %34, align 4
  %164 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %165 = load i64, i64* @BNA_RX_RES_MEM_T_HPAGE, align 8
  %166 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %164, i64 %165
  %167 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @PAGE_SIZE, align 4
  %172 = sdiv i32 %170, %171
  store i32 %172, i32* %35, align 4
  %173 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %14, align 8
  %174 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %175 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = call %struct.bna_rx* @bna_rx_get(%struct.bna_rx_mod* %173, i32 %176)
  store %struct.bna_rx* %177, %struct.bna_rx** %15, align 8
  %178 = load %struct.bna*, %struct.bna** %8, align 8
  %179 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %180 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %179, i32 0, i32 9
  store %struct.bna* %178, %struct.bna** %180, align 8
  %181 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %182 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %181, i32 0, i32 8
  store i64 0, i64* %182, align 8
  %183 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %184 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %183, i32 0, i32 7
  %185 = call i32 @INIT_LIST_HEAD(i32* %184)
  %186 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %187 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %186, i32 0, i32 17
  store i32* null, i32** %187, align 8
  %188 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %189 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %188, i32 0, i32 16
  store i32* null, i32** %189, align 8
  %190 = load i8*, i8** %13, align 8
  %191 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %192 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %191, i32 0, i32 15
  store i8* %190, i8** %192, align 8
  %193 = load %struct.bna_rx_event_cbfn*, %struct.bna_rx_event_cbfn** %11, align 8
  %194 = getelementptr inbounds %struct.bna_rx_event_cbfn, %struct.bna_rx_event_cbfn* %193, i32 0, i32 6
  %195 = load i32 (%struct.bnad*, %struct.bna_rcb*)*, i32 (%struct.bnad*, %struct.bna_rcb*)** %194, align 8
  %196 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %197 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %196, i32 0, i32 6
  store i32 (%struct.bnad*, %struct.bna_rcb*)* %195, i32 (%struct.bnad*, %struct.bna_rcb*)** %197, align 8
  %198 = load %struct.bna_rx_event_cbfn*, %struct.bna_rx_event_cbfn** %11, align 8
  %199 = getelementptr inbounds %struct.bna_rx_event_cbfn, %struct.bna_rx_event_cbfn* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %202 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %201, i32 0, i32 14
  store i32 %200, i32* %202, align 8
  %203 = load %struct.bna_rx_event_cbfn*, %struct.bna_rx_event_cbfn** %11, align 8
  %204 = getelementptr inbounds %struct.bna_rx_event_cbfn, %struct.bna_rx_event_cbfn* %203, i32 0, i32 4
  %205 = load i32 (%struct.bnad*, %struct.bna_ccb*)*, i32 (%struct.bnad*, %struct.bna_ccb*)** %204, align 8
  %206 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %207 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %206, i32 0, i32 5
  store i32 (%struct.bnad*, %struct.bna_ccb*)* %205, i32 (%struct.bnad*, %struct.bna_ccb*)** %207, align 8
  %208 = load %struct.bna_rx_event_cbfn*, %struct.bna_rx_event_cbfn** %11, align 8
  %209 = getelementptr inbounds %struct.bna_rx_event_cbfn, %struct.bna_rx_event_cbfn* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %212 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %211, i32 0, i32 13
  store i32 %210, i32* %212, align 4
  %213 = load %struct.bna_rx_event_cbfn*, %struct.bna_rx_event_cbfn** %11, align 8
  %214 = getelementptr inbounds %struct.bna_rx_event_cbfn, %struct.bna_rx_event_cbfn* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %217 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %216, i32 0, i32 12
  store i32 %215, i32* %217, align 8
  %218 = load %struct.bna_rx_event_cbfn*, %struct.bna_rx_event_cbfn** %11, align 8
  %219 = getelementptr inbounds %struct.bna_rx_event_cbfn, %struct.bna_rx_event_cbfn* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %222 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %221, i32 0, i32 11
  store i32 %220, i32* %222, align 4
  %223 = load %struct.bna_rx_event_cbfn*, %struct.bna_rx_event_cbfn** %11, align 8
  %224 = getelementptr inbounds %struct.bna_rx_event_cbfn, %struct.bna_rx_event_cbfn* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %227 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %226, i32 0, i32 10
  store i32 %225, i32* %227, align 8
  %228 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %229 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %228, i32 0, i32 9
  %230 = load %struct.bna*, %struct.bna** %229, align 8
  %231 = getelementptr inbounds %struct.bna, %struct.bna* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @BNA_RX_MOD_F_ENET_STARTED, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %276

237:                                              ; preds = %44
  %238 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %239 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  switch i32 %240, label %275 [
    i32 128, label %241
    i32 129, label %258
  ]

241:                                              ; preds = %237
  %242 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %243 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %242, i32 0, i32 9
  %244 = load %struct.bna*, %struct.bna** %243, align 8
  %245 = getelementptr inbounds %struct.bna, %struct.bna* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @BNA_RX_MOD_F_ENET_LOOPBACK, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %241
  %252 = load i64, i64* @BNA_RX_F_ENET_STARTED, align 8
  %253 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %254 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %253, i32 0, i32 8
  %255 = load i64, i64* %254, align 8
  %256 = or i64 %255, %252
  store i64 %256, i64* %254, align 8
  br label %257

257:                                              ; preds = %251, %241
  br label %275

258:                                              ; preds = %237
  %259 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %260 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %259, i32 0, i32 9
  %261 = load %struct.bna*, %struct.bna** %260, align 8
  %262 = getelementptr inbounds %struct.bna, %struct.bna* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @BNA_RX_MOD_F_ENET_LOOPBACK, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %258
  %269 = load i64, i64* @BNA_RX_F_ENET_STARTED, align 8
  %270 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %271 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %270, i32 0, i32 8
  %272 = load i64, i64* %271, align 8
  %273 = or i64 %272, %269
  store i64 %273, i64* %271, align 8
  br label %274

274:                                              ; preds = %268, %258
  br label %275

275:                                              ; preds = %237, %274, %257
  br label %276

276:                                              ; preds = %275, %44
  %277 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %278 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %281 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %36, align 4
  br label %282

282:                                              ; preds = %835, %276
  %283 = load i32, i32* %33, align 4
  %284 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %285 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp slt i32 %283, %286
  br i1 %287, label %288, label %838

288:                                              ; preds = %282
  %289 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %14, align 8
  %290 = call %struct.bna_rxp* @bna_rxp_get(%struct.bna_rx_mod* %289)
  store %struct.bna_rxp* %290, %struct.bna_rxp** %16, align 8
  %291 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %292 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %291, i32 0, i32 4
  %293 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %294 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %293, i32 0, i32 7
  %295 = call i32 @list_add_tail(i32* %292, i32* %294)
  %296 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %297 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %300 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %299, i32 0, i32 0
  store i64 %298, i64* %300, align 8
  %301 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %302 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %303 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %302, i32 0, i32 3
  store %struct.bna_rx* %301, %struct.bna_rx** %303, align 8
  %304 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %305 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %306 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 2
  store %struct.bna_rx* %304, %struct.bna_rx** %307, align 8
  %308 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %14, align 8
  %309 = call %struct.bna_rxq* @bna_rxq_get(%struct.bna_rx_mod* %308)
  store %struct.bna_rxq* %309, %struct.bna_rxq** %17, align 8
  %310 = load i64, i64* @BNA_RXP_SINGLE, align 8
  %311 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %312 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %310, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %288
  store %struct.bna_rxq* null, %struct.bna_rxq** %18, align 8
  br label %319

316:                                              ; preds = %288
  %317 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %14, align 8
  %318 = call %struct.bna_rxq* @bna_rxq_get(%struct.bna_rx_mod* %317)
  store %struct.bna_rxq* %318, %struct.bna_rxq** %18, align 8
  br label %319

319:                                              ; preds = %316, %315
  %320 = load %struct.bna_intr_info*, %struct.bna_intr_info** %19, align 8
  %321 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = icmp eq i32 1, %322
  br i1 %323, label %324, label %333

324:                                              ; preds = %319
  %325 = load %struct.bna_intr_info*, %struct.bna_intr_info** %19, align 8
  %326 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %325, i32 0, i32 2
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i64 0
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %332 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 8
  br label %344

333:                                              ; preds = %319
  %334 = load %struct.bna_intr_info*, %struct.bna_intr_info** %19, align 8
  %335 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %334, i32 0, i32 2
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %335, align 8
  %337 = load i32, i32* %33, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %343 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %342, i32 0, i32 1
  store i32 %341, i32* %343, align 8
  br label %344

344:                                              ; preds = %333, %324
  %345 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %346 = load i64, i64* @BNA_RX_RES_MEM_T_IBIDX, align 8
  %347 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %345, i64 %346
  %348 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 1
  %351 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %350, align 8
  %352 = load i32, i32* %33, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %351, i64 %353
  %355 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %359 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %358, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 7
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 1
  store i32 %357, i32* %362, align 4
  %363 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %364 = load i64, i64* @BNA_RX_RES_MEM_T_IBIDX, align 8
  %365 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %363, i64 %364
  %366 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 1
  %369 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %368, align 8
  %370 = load i32, i32* %33, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %369, i64 %371
  %373 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %377 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %378, i32 0, i32 7
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 0
  store i32 %375, i32* %380, align 8
  %381 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %382 = load i64, i64* @BNA_RX_RES_MEM_T_IBIDX, align 8
  %383 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %381, i64 %382
  %384 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 1
  %387 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %386, align 8
  %388 = load i32, i32* %33, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %387, i64 %389
  %391 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %394 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 4
  store i64 %392, i64* %396, align 8
  %397 = load %struct.bna_intr_info*, %struct.bna_intr_info** %19, align 8
  %398 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %401 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %400, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 0
  store i64 %399, i64* %403, align 8
  %404 = load %struct.bna_intr_info*, %struct.bna_intr_info** %19, align 8
  %405 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = load i64, i64* @BNA_INTR_T_MSIX, align 8
  %408 = icmp eq i64 %406, %407
  br i1 %408, label %409, label %417

409:                                              ; preds = %344
  %410 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %411 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 8
  %413 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %414 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %413, i32 0, i32 2
  %415 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 1
  store i32 %412, i32* %416, align 8
  br label %426

417:                                              ; preds = %344
  %418 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %419 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = shl i32 1, %420
  %422 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %423 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %422, i32 0, i32 2
  %424 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %424, i32 0, i32 1
  store i32 %421, i32* %425, align 8
  br label %426

426:                                              ; preds = %417, %409
  %427 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %428 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %427, i32 0, i32 5
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %431 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %432, i32 0, i32 2
  store i32 %429, i32* %433, align 4
  %434 = load i32, i32* @BFI_RX_INTERPKT_COUNT, align 4
  %435 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %436 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %435, i32 0, i32 2
  %437 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %437, i32 0, i32 6
  store i32 %434, i32* %438, align 4
  %439 = load i32, i32* @BFI_RX_INTERPKT_TIMEO, align 4
  %440 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %441 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %440, i32 0, i32 2
  %442 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %442, i32 0, i32 5
  store i32 %439, i32* %443, align 8
  %444 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %445 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %446 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %447 = call i32 @bna_rxp_add_rxqs(%struct.bna_rxp* %444, %struct.bna_rxq* %445, %struct.bna_rxq* %446)
  %448 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %449 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %450 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %449, i32 0, i32 7
  store %struct.bna_rx* %448, %struct.bna_rx** %450, align 8
  %451 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %452 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %453 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %452, i32 0, i32 6
  store %struct.bna_rxp* %451, %struct.bna_rxp** %453, align 8
  %454 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %22, align 8
  %455 = load i32, i32* %36, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %454, i64 %456
  %458 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = inttoptr i64 %459 to %struct.bna_rcb*
  %461 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %462 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %461, i32 0, i32 0
  store %struct.bna_rcb* %460, %struct.bna_rcb** %462, align 8
  %463 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %23, align 8
  %464 = load i32, i32* %36, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %463, i64 %465
  %467 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = inttoptr i64 %468 to i8*
  %470 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %471 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %470, i32 0, i32 0
  %472 = load %struct.bna_rcb*, %struct.bna_rcb** %471, align 8
  %473 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %472, i32 0, i32 5
  store i8* %469, i8** %473, align 8
  %474 = load i32, i32* %36, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %36, align 4
  %476 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %477 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %476, i32 0, i32 3
  %478 = load i64, i64* %477, align 8
  %479 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %480 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %479, i32 0, i32 0
  %481 = load %struct.bna_rcb*, %struct.bna_rcb** %480, align 8
  %482 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %481, i32 0, i32 4
  store i64 %478, i64* %482, align 8
  %483 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %484 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %485 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %484, i32 0, i32 0
  %486 = load %struct.bna_rcb*, %struct.bna_rcb** %485, align 8
  %487 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %486, i32 0, i32 3
  store %struct.bna_rxq* %483, %struct.bna_rxq** %487, align 8
  %488 = load %struct.bna*, %struct.bna** %8, align 8
  %489 = getelementptr inbounds %struct.bna, %struct.bna* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %492 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %491, i32 0, i32 0
  %493 = load %struct.bna_rcb*, %struct.bna_rcb** %492, align 8
  %494 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %493, i32 0, i32 2
  store i32 %490, i32* %494, align 8
  %495 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %496 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %495, i32 0, i32 0
  %497 = load %struct.bna_rcb*, %struct.bna_rcb** %496, align 8
  %498 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %497, i32 0, i32 0
  store i32 0, i32* %498, align 8
  %499 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %500 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %499, i32 0, i32 3
  store i64 0, i64* %500, align 8
  %501 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %502 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %501, i32 0, i32 4
  store i64 0, i64* %502, align 8
  %503 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %504 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %503, i32 0, i32 1
  store i64 0, i64* %504, align 8
  %505 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %506 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %505, i32 0, i32 2
  store i64 0, i64* %506, align 8
  %507 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %508 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %509 = load i32, i32* %34, align 4
  %510 = load i32, i32* @PAGE_SIZE, align 4
  %511 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %28, align 8
  %512 = load i32, i32* %33, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %511, i64 %513
  %515 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %30, align 8
  %516 = load i32, i32* %33, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %515, i64 %517
  %519 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %32, align 8
  %520 = load i32, i32* %33, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %519, i64 %521
  %523 = call i32 @bna_rxq_qpt_setup(%struct.bna_rxq* %507, %struct.bna_rxp* %508, i32 %509, i32 %510, %struct.bna_mem_descr* %514, %struct.bna_mem_descr* %518, %struct.bna_mem_descr* %522)
  %524 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %525 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %524, i32 0, i32 6
  %526 = load i32 (%struct.bnad*, %struct.bna_rcb*)*, i32 (%struct.bnad*, %struct.bna_rcb*)** %525, align 8
  %527 = icmp ne i32 (%struct.bnad*, %struct.bna_rcb*)* %526, null
  br i1 %527, label %528, label %537

528:                                              ; preds = %426
  %529 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %530 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %529, i32 0, i32 6
  %531 = load i32 (%struct.bnad*, %struct.bna_rcb*)*, i32 (%struct.bnad*, %struct.bna_rcb*)** %530, align 8
  %532 = load %struct.bnad*, %struct.bnad** %9, align 8
  %533 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %534 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %533, i32 0, i32 0
  %535 = load %struct.bna_rcb*, %struct.bna_rcb** %534, align 8
  %536 = call i32 %531(%struct.bnad* %532, %struct.bna_rcb* %535)
  br label %537

537:                                              ; preds = %528, %426
  %538 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %539 = icmp ne %struct.bna_rxq* %538, null
  br i1 %539, label %540, label %649

540:                                              ; preds = %537
  %541 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %542 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %543 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %542, i32 0, i32 7
  store %struct.bna_rx* %541, %struct.bna_rx** %543, align 8
  %544 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %545 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %546 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %545, i32 0, i32 6
  store %struct.bna_rxp* %544, %struct.bna_rxp** %546, align 8
  %547 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %22, align 8
  %548 = load i32, i32* %36, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %547, i64 %549
  %551 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %550, i32 0, i32 0
  %552 = load i64, i64* %551, align 8
  %553 = inttoptr i64 %552 to %struct.bna_rcb*
  %554 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %555 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %554, i32 0, i32 0
  store %struct.bna_rcb* %553, %struct.bna_rcb** %555, align 8
  %556 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %23, align 8
  %557 = load i32, i32* %36, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %556, i64 %558
  %560 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %559, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = inttoptr i64 %561 to i8*
  %563 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %564 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %563, i32 0, i32 0
  %565 = load %struct.bna_rcb*, %struct.bna_rcb** %564, align 8
  %566 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %565, i32 0, i32 5
  store i8* %562, i8** %566, align 8
  %567 = load i32, i32* %36, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %36, align 4
  %569 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %570 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %569, i32 0, i32 3
  %571 = load i64, i64* %570, align 8
  %572 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %573 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %572, i32 0, i32 0
  %574 = load %struct.bna_rcb*, %struct.bna_rcb** %573, align 8
  %575 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %574, i32 0, i32 4
  store i64 %571, i64* %575, align 8
  %576 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %577 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %578 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %577, i32 0, i32 0
  %579 = load %struct.bna_rcb*, %struct.bna_rcb** %578, align 8
  %580 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %579, i32 0, i32 3
  store %struct.bna_rxq* %576, %struct.bna_rxq** %580, align 8
  %581 = load %struct.bna*, %struct.bna** %8, align 8
  %582 = getelementptr inbounds %struct.bna, %struct.bna* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 4
  %584 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %585 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %584, i32 0, i32 0
  %586 = load %struct.bna_rcb*, %struct.bna_rcb** %585, align 8
  %587 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %586, i32 0, i32 2
  store i32 %583, i32* %587, align 8
  %588 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %589 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %588, i32 0, i32 0
  %590 = load %struct.bna_rcb*, %struct.bna_rcb** %589, align 8
  %591 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %590, i32 0, i32 0
  store i32 1, i32* %591, align 8
  %592 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %593 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %592, i32 0, i32 1
  %594 = load i64, i64* %593, align 8
  %595 = load i64, i64* @BNA_RXP_HDS, align 8
  %596 = icmp eq i64 %594, %595
  br i1 %596, label %597, label %602

597:                                              ; preds = %540
  %598 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %599 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %598, i32 0, i32 2
  %600 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 8
  br label %606

602:                                              ; preds = %540
  %603 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %604 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %603, i32 0, i32 4
  %605 = load i32, i32* %604, align 8
  br label %606

606:                                              ; preds = %602, %597
  %607 = phi i32 [ %601, %597 ], [ %605, %602 ]
  %608 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %609 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %608, i32 0, i32 5
  store i32 %607, i32* %609, align 8
  %610 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %611 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %610, i32 0, i32 3
  store i64 0, i64* %611, align 8
  %612 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %613 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %612, i32 0, i32 4
  store i64 0, i64* %613, align 8
  %614 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %615 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %614, i32 0, i32 1
  store i64 0, i64* %615, align 8
  %616 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %617 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %616, i32 0, i32 2
  store i64 0, i64* %617, align 8
  %618 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %619 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %620 = load i32, i32* %35, align 4
  %621 = load i32, i32* @PAGE_SIZE, align 4
  %622 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %27, align 8
  %623 = load i32, i32* %33, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %622, i64 %624
  %626 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %29, align 8
  %627 = load i32, i32* %33, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %626, i64 %628
  %630 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %31, align 8
  %631 = load i32, i32* %33, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %630, i64 %632
  %634 = call i32 @bna_rxq_qpt_setup(%struct.bna_rxq* %618, %struct.bna_rxp* %619, i32 %620, i32 %621, %struct.bna_mem_descr* %625, %struct.bna_mem_descr* %629, %struct.bna_mem_descr* %633)
  %635 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %636 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %635, i32 0, i32 6
  %637 = load i32 (%struct.bnad*, %struct.bna_rcb*)*, i32 (%struct.bnad*, %struct.bna_rcb*)** %636, align 8
  %638 = icmp ne i32 (%struct.bnad*, %struct.bna_rcb*)* %637, null
  br i1 %638, label %639, label %648

639:                                              ; preds = %606
  %640 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %641 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %640, i32 0, i32 6
  %642 = load i32 (%struct.bnad*, %struct.bna_rcb*)*, i32 (%struct.bnad*, %struct.bna_rcb*)** %641, align 8
  %643 = load %struct.bnad*, %struct.bnad** %9, align 8
  %644 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %645 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %644, i32 0, i32 0
  %646 = load %struct.bna_rcb*, %struct.bna_rcb** %645, align 8
  %647 = call i32 %642(%struct.bnad* %643, %struct.bna_rcb* %646)
  br label %648

648:                                              ; preds = %639, %606
  br label %649

649:                                              ; preds = %648, %537
  %650 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %21, align 8
  %651 = load i32, i32* %33, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %650, i64 %652
  %654 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %653, i32 0, i32 0
  %655 = load i64, i64* %654, align 8
  %656 = inttoptr i64 %655 to %struct.bna_ccb*
  %657 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %658 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %657, i32 0, i32 2
  %659 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %658, i32 0, i32 0
  store %struct.bna_ccb* %656, %struct.bna_ccb** %659, align 8
  %660 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %661 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %660, i32 0, i32 3
  %662 = load i64, i64* %661, align 8
  %663 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %664 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %663, i32 0, i32 1
  %665 = load i64, i64* %664, align 8
  %666 = load i64, i64* @BNA_RXP_SINGLE, align 8
  %667 = icmp eq i64 %665, %666
  br i1 %667, label %668, label %669

668:                                              ; preds = %649
  br label %673

669:                                              ; preds = %649
  %670 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %671 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %670, i32 0, i32 3
  %672 = load i64, i64* %671, align 8
  br label %673

673:                                              ; preds = %669, %668
  %674 = phi i64 [ 0, %668 ], [ %672, %669 ]
  %675 = add nsw i64 %662, %674
  %676 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %677 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %676, i32 0, i32 2
  %678 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %677, i32 0, i32 0
  %679 = load %struct.bna_ccb*, %struct.bna_ccb** %678, align 8
  %680 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %679, i32 0, i32 10
  store i64 %675, i64* %680, align 8
  %681 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %682 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %681, i32 0, i32 2
  %683 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %684 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %683, i32 0, i32 2
  %685 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %684, i32 0, i32 0
  %686 = load %struct.bna_ccb*, %struct.bna_ccb** %685, align 8
  %687 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %686, i32 0, i32 9
  store %struct.TYPE_17__* %682, %struct.TYPE_17__** %687, align 8
  %688 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %689 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %688, i32 0, i32 0
  %690 = load %struct.bna_rcb*, %struct.bna_rcb** %689, align 8
  %691 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %692 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %691, i32 0, i32 2
  %693 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %692, i32 0, i32 0
  %694 = load %struct.bna_ccb*, %struct.bna_ccb** %693, align 8
  %695 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %694, i32 0, i32 8
  %696 = load %struct.bna_rcb**, %struct.bna_rcb*** %695, align 8
  %697 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %696, i64 0
  store %struct.bna_rcb* %690, %struct.bna_rcb** %697, align 8
  %698 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %699 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %698, i32 0, i32 2
  %700 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %699, i32 0, i32 0
  %701 = load %struct.bna_ccb*, %struct.bna_ccb** %700, align 8
  %702 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %703 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %702, i32 0, i32 0
  %704 = load %struct.bna_rcb*, %struct.bna_rcb** %703, align 8
  %705 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %704, i32 0, i32 1
  store %struct.bna_ccb* %701, %struct.bna_ccb** %705, align 8
  %706 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %707 = icmp ne %struct.bna_rxq* %706, null
  br i1 %707, label %708, label %727

708:                                              ; preds = %673
  %709 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %710 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %709, i32 0, i32 0
  %711 = load %struct.bna_rcb*, %struct.bna_rcb** %710, align 8
  %712 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %713 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %712, i32 0, i32 2
  %714 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %713, i32 0, i32 0
  %715 = load %struct.bna_ccb*, %struct.bna_ccb** %714, align 8
  %716 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %715, i32 0, i32 8
  %717 = load %struct.bna_rcb**, %struct.bna_rcb*** %716, align 8
  %718 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %717, i64 1
  store %struct.bna_rcb* %711, %struct.bna_rcb** %718, align 8
  %719 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %720 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %719, i32 0, i32 2
  %721 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %720, i32 0, i32 0
  %722 = load %struct.bna_ccb*, %struct.bna_ccb** %721, align 8
  %723 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %724 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %723, i32 0, i32 0
  %725 = load %struct.bna_rcb*, %struct.bna_rcb** %724, align 8
  %726 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %725, i32 0, i32 1
  store %struct.bna_ccb* %722, %struct.bna_ccb** %726, align 8
  br label %727

727:                                              ; preds = %708, %673
  %728 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %729 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %728, i32 0, i32 2
  %730 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %729, i32 0, i32 1
  %731 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %730, i32 0, i32 4
  %732 = load i64, i64* %731, align 8
  %733 = inttoptr i64 %732 to i32*
  %734 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %735 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %734, i32 0, i32 2
  %736 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %735, i32 0, i32 0
  %737 = load %struct.bna_ccb*, %struct.bna_ccb** %736, align 8
  %738 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %737, i32 0, i32 0
  store i32* %733, i32** %738, align 8
  %739 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %740 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %739, i32 0, i32 2
  %741 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %740, i32 0, i32 1
  %742 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %741, i32 0, i32 3
  %743 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %744 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %743, i32 0, i32 2
  %745 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %744, i32 0, i32 0
  %746 = load %struct.bna_ccb*, %struct.bna_ccb** %745, align 8
  %747 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %746, i32 0, i32 7
  store i32* %742, i32** %747, align 8
  %748 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %749 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %748, i32 0, i32 2
  %750 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %749, i32 0, i32 1
  %751 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %750, i32 0, i32 0
  %752 = load i64, i64* %751, align 8
  %753 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %754 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %753, i32 0, i32 2
  %755 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %754, i32 0, i32 0
  %756 = load %struct.bna_ccb*, %struct.bna_ccb** %755, align 8
  %757 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %756, i32 0, i32 1
  store i64 %752, i64* %757, align 8
  %758 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %759 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %758, i32 0, i32 2
  %760 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %759, i32 0, i32 1
  %761 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %760, i32 0, i32 1
  %762 = load i32, i32* %761, align 8
  %763 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %764 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %763, i32 0, i32 2
  %765 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %764, i32 0, i32 0
  %766 = load %struct.bna_ccb*, %struct.bna_ccb** %765, align 8
  %767 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %766, i32 0, i32 2
  store i32 %762, i32* %767, align 8
  %768 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %769 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %768, i32 0, i32 2
  %770 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %769, i32 0, i32 1
  %771 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %770, i32 0, i32 2
  %772 = load i32, i32* %771, align 4
  %773 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %774 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %773, i32 0, i32 2
  %775 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %774, i32 0, i32 0
  %776 = load %struct.bna_ccb*, %struct.bna_ccb** %775, align 8
  %777 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %776, i32 0, i32 6
  store i32 %772, i32* %777, align 8
  %778 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %779 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %778, i32 0, i32 2
  %780 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %779, i32 0, i32 0
  %781 = load %struct.bna_ccb*, %struct.bna_ccb** %780, align 8
  %782 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %781, i32 0, i32 5
  %783 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %782, i32 0, i32 1
  store i64 0, i64* %783, align 8
  %784 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %785 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %784, i32 0, i32 2
  %786 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %785, i32 0, i32 0
  %787 = load %struct.bna_ccb*, %struct.bna_ccb** %786, align 8
  %788 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %787, i32 0, i32 5
  %789 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %788, i32 0, i32 0
  store i64 0, i64* %789, align 8
  %790 = load %struct.bna*, %struct.bna** %8, align 8
  %791 = getelementptr inbounds %struct.bna, %struct.bna* %790, i32 0, i32 0
  %792 = load i32, i32* %791, align 4
  %793 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %794 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %793, i32 0, i32 2
  %795 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %794, i32 0, i32 0
  %796 = load %struct.bna_ccb*, %struct.bna_ccb** %795, align 8
  %797 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %796, i32 0, i32 4
  store i32 %792, i32* %797, align 8
  %798 = load i32, i32* %33, align 4
  %799 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %800 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %799, i32 0, i32 2
  %801 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %800, i32 0, i32 0
  %802 = load %struct.bna_ccb*, %struct.bna_ccb** %801, align 8
  %803 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %802, i32 0, i32 3
  store i32 %798, i32* %803, align 4
  %804 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %805 = load i32, i32* %20, align 4
  %806 = load i32, i32* @PAGE_SIZE, align 4
  %807 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %24, align 8
  %808 = load i32, i32* %33, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %807, i64 %809
  %811 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %25, align 8
  %812 = load i32, i32* %33, align 4
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %811, i64 %813
  %815 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %26, align 8
  %816 = load i32, i32* %33, align 4
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %815, i64 %817
  %819 = call i32 @bna_rxp_cqpt_setup(%struct.bna_rxp* %804, i32 %805, i32 %806, %struct.bna_mem_descr* %810, %struct.bna_mem_descr* %814, %struct.bna_mem_descr* %818)
  %820 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %821 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %820, i32 0, i32 5
  %822 = load i32 (%struct.bnad*, %struct.bna_ccb*)*, i32 (%struct.bnad*, %struct.bna_ccb*)** %821, align 8
  %823 = icmp ne i32 (%struct.bnad*, %struct.bna_ccb*)* %822, null
  br i1 %823, label %824, label %834

824:                                              ; preds = %727
  %825 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %826 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %825, i32 0, i32 5
  %827 = load i32 (%struct.bnad*, %struct.bna_ccb*)*, i32 (%struct.bnad*, %struct.bna_ccb*)** %826, align 8
  %828 = load %struct.bnad*, %struct.bnad** %9, align 8
  %829 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %830 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %829, i32 0, i32 2
  %831 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %830, i32 0, i32 0
  %832 = load %struct.bna_ccb*, %struct.bna_ccb** %831, align 8
  %833 = call i32 %827(%struct.bnad* %828, %struct.bna_ccb* %832)
  br label %834

834:                                              ; preds = %824, %727
  br label %835

835:                                              ; preds = %834
  %836 = load i32, i32* %33, align 4
  %837 = add nsw i32 %836, 1
  store i32 %837, i32* %33, align 4
  br label %282

838:                                              ; preds = %282
  %839 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %840 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %839, i32 0, i32 4
  %841 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %842 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %841, i32 0, i32 2
  %843 = bitcast %struct.TYPE_18__* %840 to i8*
  %844 = bitcast %struct.TYPE_18__* %842 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %843, i8* align 8 %844, i64 4, i1 false)
  %845 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %846 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %845, i32 0, i32 3
  %847 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %848 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %849 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %850 = call i32 @bna_rxf_init(i32* %846, %struct.bna_rx* %847, %struct.bna_rx_config* %848, %struct.bna_res_info* %849)
  %851 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %852 = load i32, i32* @bna_rx_sm_stopped, align 4
  %853 = call i32 @bfa_fsm_set_state(%struct.bna_rx* %851, i32 %852)
  %854 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %855 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %854, i32 0, i32 2
  %856 = load i32, i32* %855, align 8
  %857 = shl i32 1, %856
  %858 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %14, align 8
  %859 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %858, i32 0, i32 1
  %860 = load i32, i32* %859, align 4
  %861 = or i32 %860, %857
  store i32 %861, i32* %859, align 4
  %862 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  store %struct.bna_rx* %862, %struct.bna_rx** %7, align 8
  br label %863

863:                                              ; preds = %838, %43
  %864 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  ret %struct.bna_rx* %864
}

declare dso_local i32 @bna_rx_res_check(%struct.bna_rx_mod*, %struct.bna_rx_config*) #1

declare dso_local %struct.bna_rx* @bna_rx_get(%struct.bna_rx_mod*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.bna_rxp* @bna_rxp_get(%struct.bna_rx_mod*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.bna_rxq* @bna_rxq_get(%struct.bna_rx_mod*) #1

declare dso_local i32 @bna_rxp_add_rxqs(%struct.bna_rxp*, %struct.bna_rxq*, %struct.bna_rxq*) #1

declare dso_local i32 @bna_rxq_qpt_setup(%struct.bna_rxq*, %struct.bna_rxp*, i32, i32, %struct.bna_mem_descr*, %struct.bna_mem_descr*, %struct.bna_mem_descr*) #1

declare dso_local i32 @bna_rxp_cqpt_setup(%struct.bna_rxp*, i32, i32, %struct.bna_mem_descr*, %struct.bna_mem_descr*, %struct.bna_mem_descr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bna_rxf_init(i32*, %struct.bna_rx*, %struct.bna_rx_config*, %struct.bna_res_info*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_rx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
