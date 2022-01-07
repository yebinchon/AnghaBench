; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_bfi_rx_enet_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_bfi_rx_enet_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { i32, i32, %struct.TYPE_33__*, %struct.TYPE_29__, %struct.TYPE_27__, i32, i32, %struct.TYPE_31__ }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_31__ = type { %struct.bfi_enet_rx_cfg_req }
%struct.bfi_enet_rx_cfg_req = type { i32, %struct.TYPE_30__, %struct.TYPE_28__, %struct.TYPE_23__, %struct.TYPE_22__* }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_32__ }
%struct.TYPE_21__ = type { %struct.TYPE_39__, %struct.TYPE_37__ }
%struct.TYPE_39__ = type { i8* }
%struct.TYPE_37__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { i8*, i32 }
%struct.TYPE_32__ = type { i8*, i32 }
%struct.bna_rxp = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i64, i64, i64, i64, i64, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32, i32 }
%struct.bna_rxq = type { i64, i32 }
%struct.list_head = type { i32 }

@BFI_MC_ENET = common dso_local global i32 0, align 4
@BFI_ENET_H2I_RX_CFG_SET_REQ = common dso_local global i32 0, align 4
@BNA_STATUS_T_DISABLED = common dso_local global i8* null, align 8
@BNA_STATUS_T_ENABLED = common dso_local global i8* null, align 8
@BNA_INTR_T_MSIX = common dso_local global i64 0, align 8
@BFI_ENET_RXQ_LARGE_SMALL = common dso_local global i32 0, align 4
@BFI_ENET_RXQ_HDS = common dso_local global i32 0, align 4
@BFI_ENET_RXQ_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rx*)* @bna_bfi_rx_enet_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_rx_enet_start(%struct.bna_rx* %0) #0 {
  %2 = alloca %struct.bna_rx*, align 8
  %3 = alloca %struct.bfi_enet_rx_cfg_req*, align 8
  %4 = alloca %struct.bna_rxp*, align 8
  %5 = alloca %struct.bna_rxq*, align 8
  %6 = alloca %struct.bna_rxq*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  store %struct.bna_rx* %0, %struct.bna_rx** %2, align 8
  %9 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %10 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  store %struct.bfi_enet_rx_cfg_req* %11, %struct.bfi_enet_rx_cfg_req** %3, align 8
  store %struct.bna_rxp* null, %struct.bna_rxp** %4, align 8
  store %struct.bna_rxq* null, %struct.bna_rxq** %5, align 8
  store %struct.bna_rxq* null, %struct.bna_rxq** %6, align 8
  %12 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %13 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %12, i32 0, i32 1
  %14 = load i32, i32* @BFI_MC_ENET, align 4
  %15 = load i32, i32* @BFI_ENET_H2I_RX_CFG_SET_REQ, align 4
  %16 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %17 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @bfi_msgq_mhdr_set(i8* %20, i32 %14, i32 %15, i32 0, i32 %18)
  %22 = call i32 @bfi_msgq_num_cmd_entries(i32 112)
  %23 = call i8* @htons(i32 %22)
  %24 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %25 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %28 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %31 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %8, align 4
  %32 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %33 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %32, i32 0, i32 5
  %34 = call %struct.list_head* @bfa_q_first(i32* %33)
  store %struct.list_head* %34, %struct.list_head** %7, align 8
  br label %35

35:                                               ; preds = %171, %1
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %38 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %176

41:                                               ; preds = %35
  %42 = load %struct.list_head*, %struct.list_head** %7, align 8
  %43 = bitcast %struct.list_head* %42 to %struct.bna_rxp*
  store %struct.bna_rxp* %43, %struct.bna_rxp** %4, align 8
  %44 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %45 = load %struct.bna_rxq*, %struct.bna_rxq** %5, align 8
  %46 = load %struct.bna_rxq*, %struct.bna_rxq** %6, align 8
  %47 = call i32 @GET_RXQS(%struct.bna_rxp* %44, %struct.bna_rxq* %45, %struct.bna_rxq* %46)
  %48 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %49 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %108 [
    i32 128, label %51
    i32 130, label %51
    i32 129, label %76
  ]

51:                                               ; preds = %41, %41
  %52 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %53 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %52, i32 0, i32 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 1
  %60 = load %struct.bna_rxq*, %struct.bna_rxq** %6, align 8
  %61 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %60, i32 0, i32 1
  %62 = call i32 @bfi_enet_datapath_q_init(i32* %59, i32* %61)
  %63 = load %struct.bna_rxq*, %struct.bna_rxq** %6, align 8
  %64 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i8* @htons(i32 %66)
  %68 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %69 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %68, i32 0, i32 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %74, i32 0, i32 0
  store i8* %67, i8** %75, align 8
  br label %76

76:                                               ; preds = %41, %51
  %77 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %78 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %77, i32 0, i32 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %83, i32 0, i32 1
  %85 = load %struct.bna_rxq*, %struct.bna_rxq** %5, align 8
  %86 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %85, i32 0, i32 1
  %87 = call i32 @bfi_enet_datapath_q_init(i32* %84, i32* %86)
  %88 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %89 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %88, i32 0, i32 2
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %90, i32 0, i32 1
  %92 = call i64 @bna_enet_mtu_get(i32* %91)
  %93 = load %struct.bna_rxq*, %struct.bna_rxq** %5, align 8
  %94 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.bna_rxq*, %struct.bna_rxq** %5, align 8
  %96 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i8* @htons(i32 %98)
  %100 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %101 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %100, i32 0, i32 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %106, i32 0, i32 0
  store i8* %99, i8** %107, align 8
  br label %110

108:                                              ; preds = %41
  %109 = call i32 @BUG_ON(i32 1)
  br label %110

110:                                              ; preds = %108, %76
  %111 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %112 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %111, i32 0, i32 4
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %117, i32 0, i32 0
  %119 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %120 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 1
  %122 = call i32 @bfi_enet_datapath_q_init(i32* %118, i32* %121)
  %123 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %124 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %130 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %129, i32 0, i32 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %137, i32 0, i32 1
  store i32 %128, i32* %138, align 4
  %139 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %140 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %146 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %145, i32 0, i32 4
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %153, i32 0, i32 0
  store i32 %144, i32* %154, align 8
  %155 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %156 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i8* @htons(i32 %160)
  %162 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %163 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %162, i32 0, i32 4
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %169, i32 0, i32 0
  store i8* %161, i8** %170, align 8
  br label %171

171:                                              ; preds = %110
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  %174 = load %struct.list_head*, %struct.list_head** %7, align 8
  %175 = call %struct.list_head* @bfa_q_next(%struct.list_head* %174)
  store %struct.list_head* %175, %struct.list_head** %7, align 8
  br label %35

176:                                              ; preds = %35
  %177 = load i8*, i8** @BNA_STATUS_T_DISABLED, align 8
  %178 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %179 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 7
  store i8* %177, i8** %180, align 8
  %181 = load i8*, i8** @BNA_STATUS_T_ENABLED, align 8
  %182 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %183 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 6
  store i8* %181, i8** %184, align 8
  %185 = load i8*, i8** @BNA_STATUS_T_DISABLED, align 8
  %186 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %187 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 5
  store i8* %185, i8** %188, align 8
  %189 = load i8*, i8** @BNA_STATUS_T_DISABLED, align 8
  %190 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %191 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 4
  store i8* %189, i8** %192, align 8
  %193 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %194 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @BNA_INTR_T_MSIX, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %176
  %201 = load i8*, i8** @BNA_STATUS_T_ENABLED, align 8
  br label %204

202:                                              ; preds = %176
  %203 = load i8*, i8** @BNA_STATUS_T_DISABLED, align 8
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi i8* [ %201, %200 ], [ %203, %202 ]
  %206 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %207 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 3
  store i8* %205, i8** %208, align 8
  %209 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %210 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i32
  %215 = call i8* @htonl(i32 %214)
  %216 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %217 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 2
  store i8* %215, i8** %218, align 8
  %219 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %220 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = call i8* @htonl(i32 %224)
  %226 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %227 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 1
  store i8* %225, i8** %228, align 8
  %229 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %230 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %235 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  store i64 %233, i64* %236, align 8
  %237 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %238 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  switch i32 %239, label %279 [
    i32 128, label %240
    i32 130, label %245
    i32 129, label %274
  ]

240:                                              ; preds = %204
  %241 = load i32, i32* @BFI_ENET_RXQ_LARGE_SMALL, align 4
  %242 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %243 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 1
  store i32 %241, i32* %244, align 4
  br label %281

245:                                              ; preds = %204
  %246 = load i32, i32* @BFI_ENET_RXQ_HDS, align 4
  %247 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %248 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 1
  store i32 %246, i32* %249, align 4
  %250 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %251 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %255 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 2
  store i32 %253, i32* %257, align 8
  %258 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %259 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %263 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 1
  store i32 %261, i32* %265, align 4
  %266 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %267 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %271 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 0
  store i32 %269, i32* %273, align 8
  br label %281

274:                                              ; preds = %204
  %275 = load i32, i32* @BFI_ENET_RXQ_SINGLE, align 4
  %276 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %277 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %277, i32 0, i32 1
  store i32 %275, i32* %278, align 4
  br label %281

279:                                              ; preds = %204
  %280 = call i32 @BUG_ON(i32 1)
  br label %281

281:                                              ; preds = %279, %274, %245, %240
  %282 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %283 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %287 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %287, i32 0, i32 0
  store i32 %285, i32* %288, align 8
  %289 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %290 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %289, i32 0, i32 1
  %291 = load %struct.bfi_enet_rx_cfg_req*, %struct.bfi_enet_rx_cfg_req** %3, align 8
  %292 = getelementptr inbounds %struct.bfi_enet_rx_cfg_req, %struct.bfi_enet_rx_cfg_req* %291, i32 0, i32 1
  %293 = call i32 @bfa_msgq_cmd_set(i32* %290, i32* null, i32* null, i32 112, %struct.TYPE_30__* %292)
  %294 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %295 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %294, i32 0, i32 2
  %296 = load %struct.TYPE_33__*, %struct.TYPE_33__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %296, i32 0, i32 0
  %298 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %299 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %298, i32 0, i32 1
  %300 = call i32 @bfa_msgq_cmd_post(i32* %297, i32* %299)
  ret void
}

declare dso_local i32 @bfi_msgq_mhdr_set(i8*, i32, i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @bfi_msgq_num_cmd_entries(i32) #1

declare dso_local %struct.list_head* @bfa_q_first(i32*) #1

declare dso_local i32 @GET_RXQS(%struct.bna_rxp*, %struct.bna_rxq*, %struct.bna_rxq*) #1

declare dso_local i32 @bfi_enet_datapath_q_init(i32*, i32*) #1

declare dso_local i64 @bna_enet_mtu_get(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.list_head* @bfa_q_next(%struct.list_head*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @bfa_msgq_cmd_set(i32*, i32*, i32*, i32, %struct.TYPE_30__*) #1

declare dso_local i32 @bfa_msgq_cmd_post(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
