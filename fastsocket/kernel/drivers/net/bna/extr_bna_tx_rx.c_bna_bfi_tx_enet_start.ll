; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_bfi_tx_enet_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_bfi_tx_enet_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_tx = type { i32, i32, %struct.TYPE_17__*, i64, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { %struct.bfi_enet_tx_cfg_req }
%struct.bfi_enet_tx_cfg_req = type { i32, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_27__, %struct.TYPE_26__* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_16__ = type { i8*, i8*, i8*, i32 }
%struct.TYPE_27__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_20__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.bna_txq = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.list_head = type { i32 }

@BFI_MC_ENET = common dso_local global i32 0, align 4
@BFI_ENET_H2I_TX_CFG_SET_REQ = common dso_local global i32 0, align 4
@BNA_STATUS_T_ENABLED = common dso_local global i8* null, align 8
@BNA_STATUS_T_DISABLED = common dso_local global i8* null, align 8
@BNA_INTR_T_MSIX = common dso_local global i64 0, align 8
@BFI_ENET_TX_VLAN_WI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_tx*)* @bna_bfi_tx_enet_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_tx_enet_start(%struct.bna_tx* %0) #0 {
  %2 = alloca %struct.bna_tx*, align 8
  %3 = alloca %struct.bfi_enet_tx_cfg_req*, align 8
  %4 = alloca %struct.bna_txq*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  store %struct.bna_tx* %0, %struct.bna_tx** %2, align 8
  %7 = load %struct.bna_tx*, %struct.bna_tx** %2, align 8
  %8 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  store %struct.bfi_enet_tx_cfg_req* %9, %struct.bfi_enet_tx_cfg_req** %3, align 8
  store %struct.bna_txq* null, %struct.bna_txq** %4, align 8
  %10 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %11 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %10, i32 0, i32 1
  %12 = load i32, i32* @BFI_MC_ENET, align 4
  %13 = load i32, i32* @BFI_ENET_H2I_TX_CFG_SET_REQ, align 4
  %14 = load %struct.bna_tx*, %struct.bna_tx** %2, align 8
  %15 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @bfi_msgq_mhdr_set(i8* %18, i32 %12, i32 %13, i32 0, i32 %16)
  %20 = call i32 @bfi_msgq_num_cmd_entries(i32 120)
  %21 = call i8* @htons(i32 %20)
  %22 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %23 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load %struct.bna_tx*, %struct.bna_tx** %2, align 8
  %26 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %29 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %6, align 4
  %30 = load %struct.bna_tx*, %struct.bna_tx** %2, align 8
  %31 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %30, i32 0, i32 4
  %32 = call %struct.list_head* @bfa_q_first(i32* %31)
  store %struct.list_head* %32, %struct.list_head** %5, align 8
  br label %33

33:                                               ; preds = %109, %1
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.bna_tx*, %struct.bna_tx** %2, align 8
  %36 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %114

39:                                               ; preds = %33
  %40 = load %struct.list_head*, %struct.list_head** %5, align 8
  %41 = bitcast %struct.list_head* %40 to %struct.bna_txq*
  store %struct.bna_txq* %41, %struct.bna_txq** %4, align 8
  %42 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %43 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %42, i32 0, i32 4
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load %struct.bna_txq*, %struct.bna_txq** %4, align 8
  %51 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %50, i32 0, i32 2
  %52 = call i32 @bfi_enet_datapath_q_init(i32* %49, i32* %51)
  %53 = load %struct.bna_txq*, %struct.bna_txq** %4, align 8
  %54 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %57 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %56, i32 0, i32 4
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  store i32 %55, i32* %63, align 8
  %64 = load %struct.bna_txq*, %struct.bna_txq** %4, align 8
  %65 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %70 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %69, i32 0, i32 4
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  store i32 %68, i32* %78, align 4
  %79 = load %struct.bna_txq*, %struct.bna_txq** %4, align 8
  %80 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %85 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %84, i32 0, i32 4
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  store i32 %83, i32* %93, align 8
  %94 = load %struct.bna_txq*, %struct.bna_txq** %4, align 8
  %95 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i8* @htons(i32 %98)
  %100 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %101 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %100, i32 0, i32 4
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  store i8* %99, i8** %108, align 8
  br label %109

109:                                              ; preds = %39
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  %112 = load %struct.list_head*, %struct.list_head** %5, align 8
  %113 = call %struct.list_head* @bfa_q_next(%struct.list_head* %112)
  store %struct.list_head* %113, %struct.list_head** %5, align 8
  br label %33

114:                                              ; preds = %33
  %115 = load i8*, i8** @BNA_STATUS_T_ENABLED, align 8
  %116 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %117 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 7
  store i8* %115, i8** %118, align 8
  %119 = load i8*, i8** @BNA_STATUS_T_ENABLED, align 8
  %120 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %121 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 6
  store i8* %119, i8** %122, align 8
  %123 = load i8*, i8** @BNA_STATUS_T_DISABLED, align 8
  %124 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %125 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 5
  store i8* %123, i8** %126, align 8
  %127 = load i8*, i8** @BNA_STATUS_T_ENABLED, align 8
  %128 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %129 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 4
  store i8* %127, i8** %130, align 8
  %131 = load %struct.bna_txq*, %struct.bna_txq** %4, align 8
  %132 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @BNA_INTR_T_MSIX, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %114
  %138 = load i8*, i8** @BNA_STATUS_T_ENABLED, align 8
  br label %141

139:                                              ; preds = %114
  %140 = load i8*, i8** @BNA_STATUS_T_DISABLED, align 8
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i8* [ %138, %137 ], [ %140, %139 ]
  %143 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %144 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 3
  store i8* %142, i8** %145, align 8
  %146 = load %struct.bna_txq*, %struct.bna_txq** %4, align 8
  %147 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i8* @htonl(i32 %150)
  %152 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %153 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 2
  store i8* %151, i8** %154, align 8
  %155 = load %struct.bna_txq*, %struct.bna_txq** %4, align 8
  %156 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i8* @htonl(i32 %159)
  %161 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %162 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 1
  store i8* %160, i8** %163, align 8
  %164 = load %struct.bna_txq*, %struct.bna_txq** %4, align 8
  %165 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %169 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  store i64 %167, i64* %170, align 8
  %171 = load i32, i32* @BFI_ENET_TX_VLAN_WI, align 4
  %172 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %173 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 3
  store i32 %171, i32* %174, align 8
  %175 = load %struct.bna_tx*, %struct.bna_tx** %2, align 8
  %176 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i8* @htons(i32 %178)
  %180 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %181 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  store i8* %179, i8** %182, align 8
  %183 = load i8*, i8** @BNA_STATUS_T_DISABLED, align 8
  %184 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %185 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  store i8* %183, i8** %186, align 8
  %187 = load i8*, i8** @BNA_STATUS_T_DISABLED, align 8
  %188 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %189 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  store i8* %187, i8** %190, align 8
  %191 = load %struct.bna_tx*, %struct.bna_tx** %2, align 8
  %192 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %191, i32 0, i32 1
  %193 = load %struct.bfi_enet_tx_cfg_req*, %struct.bfi_enet_tx_cfg_req** %3, align 8
  %194 = getelementptr inbounds %struct.bfi_enet_tx_cfg_req, %struct.bfi_enet_tx_cfg_req* %193, i32 0, i32 1
  %195 = call i32 @bfa_msgq_cmd_set(i32* %192, i32* null, i32* null, i32 120, %struct.TYPE_18__* %194)
  %196 = load %struct.bna_tx*, %struct.bna_tx** %2, align 8
  %197 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %196, i32 0, i32 2
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load %struct.bna_tx*, %struct.bna_tx** %2, align 8
  %201 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %200, i32 0, i32 1
  %202 = call i32 @bfa_msgq_cmd_post(i32* %199, i32* %201)
  ret void
}

declare dso_local i32 @bfi_msgq_mhdr_set(i8*, i32, i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @bfi_msgq_num_cmd_entries(i32) #1

declare dso_local %struct.list_head* @bfa_q_first(i32*) #1

declare dso_local i32 @bfi_enet_datapath_q_init(i32*, i32*) #1

declare dso_local %struct.list_head* @bfa_q_next(%struct.list_head*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @bfa_msgq_cmd_set(i32*, i32*, i32*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @bfa_msgq_cmd_post(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
