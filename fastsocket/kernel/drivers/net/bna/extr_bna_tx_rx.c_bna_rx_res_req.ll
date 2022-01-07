; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_res_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_res_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx_config = type { i32, i64, i32 }
%struct.bna_res_info = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.bna_mem_info }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bna_mem_info = type { i32, i32, i8* }

@BNA_RXP_SINGLE = common dso_local global i64 0, align 8
@BFI_CQ_WI_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BFI_RXQ_WI_SIZE = common dso_local global i32 0, align 4
@BNA_RES_T_MEM = common dso_local global i8* null, align 8
@BNA_RX_RES_MEM_T_CCB = common dso_local global i64 0, align 8
@BNA_MEM_T_KVA = common dso_local global i8* null, align 8
@BNA_RX_RES_MEM_T_RCB = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_CQPT = common dso_local global i64 0, align 8
@BNA_MEM_T_DMA = common dso_local global i8* null, align 8
@BNA_RX_RES_MEM_T_CSWQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_CQPT_PAGE = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_DQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_DSWQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_DPAGE = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_HQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_HSWQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_HPAGE = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_IBIDX = common dso_local global i64 0, align 8
@BFI_IBIDX_SIZE = common dso_local global i32 0, align 4
@BNA_RX_RES_MEM_T_RIT = common dso_local global i64 0, align 8
@BFI_ENET_RSS_RIT_MAX = common dso_local global i32 0, align 4
@BNA_RES_T_INTR = common dso_local global i8* null, align 8
@BNA_RX_RES_T_INTR = common dso_local global i64 0, align 8
@BNA_INTR_T_MSIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_rx_res_req(%struct.bna_rx_config* %0, %struct.bna_res_info* %1) #0 {
  %3 = alloca %struct.bna_rx_config*, align 8
  %4 = alloca %struct.bna_res_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bna_mem_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bna_rx_config* %0, %struct.bna_rx_config** %3, align 8
  store %struct.bna_res_info* %1, %struct.bna_res_info** %4, align 8
  %15 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %16 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %14, align 4
  %18 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %19 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BNA_RXP_SINGLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %26 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  br label %28

28:                                               ; preds = %24, %23
  %29 = phi i32 [ 0, %23 ], [ %27, %24 ]
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @BNA_TO_POWER_OF_2_HIGH(i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @BFI_CQ_WI_SIZE, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = call i32 @ALIGN(i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @SIZE_TO_PAGES(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @BNA_TO_POWER_OF_2_HIGH(i32 %43)
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @BFI_RXQ_WI_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = call i32 @ALIGN(i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @SIZE_TO_PAGES(i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i64, i64* @BNA_RXP_SINGLE, align 8
  %54 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %55 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %28
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @BNA_TO_POWER_OF_2_HIGH(i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @BFI_RXQ_WI_SIZE, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = call i32 @ALIGN(i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @SIZE_TO_PAGES(i32 %67)
  store i32 %68, i32* %9, align 4
  br label %70

69:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %58
  %71 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %72 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %73 = load i64, i64* @BNA_RX_RES_MEM_T_CCB, align 8
  %74 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %72, i64 %73
  %75 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %74, i32 0, i32 1
  store i8* %71, i8** %75, align 8
  %76 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %77 = load i64, i64* @BNA_RX_RES_MEM_T_CCB, align 8
  %78 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %76, i64 %77
  %79 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store %struct.bna_mem_info* %80, %struct.bna_mem_info** %11, align 8
  %81 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %82 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %83 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %85 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %84, i32 0, i32 0
  store i32 4, i32* %85, align 8
  %86 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %87 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %90 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %92 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %93 = load i64, i64* @BNA_RX_RES_MEM_T_RCB, align 8
  %94 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %92, i64 %93
  %95 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %94, i32 0, i32 1
  store i8* %91, i8** %95, align 8
  %96 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %97 = load i64, i64* @BNA_RX_RES_MEM_T_RCB, align 8
  %98 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %96, i64 %97
  %99 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store %struct.bna_mem_info* %100, %struct.bna_mem_info** %11, align 8
  %101 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %102 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %103 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %105 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %104, i32 0, i32 0
  store i32 4, i32* %105, align 8
  %106 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %107 = call i32 @BNA_GET_RXQS(%struct.bna_rx_config* %106)
  %108 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %109 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %111 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %112 = load i64, i64* @BNA_RX_RES_MEM_T_CQPT, align 8
  %113 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %111, i64 %112
  %114 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %113, i32 0, i32 1
  store i8* %110, i8** %114, align 8
  %115 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %116 = load i64, i64* @BNA_RX_RES_MEM_T_CQPT, align 8
  %117 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %115, i64 %116
  %118 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store %struct.bna_mem_info* %119, %struct.bna_mem_info** %11, align 8
  %120 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %121 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %122 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %128 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %130 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %133 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %135 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %136 = load i64, i64* @BNA_RX_RES_MEM_T_CSWQPT, align 8
  %137 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %135, i64 %136
  %138 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %137, i32 0, i32 1
  store i8* %134, i8** %138, align 8
  %139 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %140 = load i64, i64* @BNA_RX_RES_MEM_T_CSWQPT, align 8
  %141 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %139, i64 %140
  %142 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  store %struct.bna_mem_info* %143, %struct.bna_mem_info** %11, align 8
  %144 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %145 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %146 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 8
  %150 = trunc i64 %149 to i32
  %151 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %152 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %154 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %157 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %159 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %160 = load i64, i64* @BNA_RX_RES_MEM_T_CQPT_PAGE, align 8
  %161 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %159, i64 %160
  %162 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %161, i32 0, i32 1
  store i8* %158, i8** %162, align 8
  %163 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %164 = load i64, i64* @BNA_RX_RES_MEM_T_CQPT_PAGE, align 8
  %165 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %163, i64 %164
  %166 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  store %struct.bna_mem_info* %167, %struct.bna_mem_info** %11, align 8
  %168 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %169 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %170 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %169, i32 0, i32 2
  store i8* %168, i8** %170, align 8
  %171 = load i32, i32* @PAGE_SIZE, align 4
  %172 = load i32, i32* %8, align 4
  %173 = mul nsw i32 %171, %172
  %174 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %175 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %177 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %180 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %182 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %183 = load i64, i64* @BNA_RX_RES_MEM_T_DQPT, align 8
  %184 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %182, i64 %183
  %185 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %184, i32 0, i32 1
  store i8* %181, i8** %185, align 8
  %186 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %187 = load i64, i64* @BNA_RX_RES_MEM_T_DQPT, align 8
  %188 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %186, i64 %187
  %189 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  store %struct.bna_mem_info* %190, %struct.bna_mem_info** %11, align 8
  %191 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %192 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %193 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %192, i32 0, i32 2
  store i8* %191, i8** %193, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 4
  %197 = trunc i64 %196 to i32
  %198 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %199 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %201 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %204 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  %205 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %206 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %207 = load i64, i64* @BNA_RX_RES_MEM_T_DSWQPT, align 8
  %208 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %206, i64 %207
  %209 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %208, i32 0, i32 1
  store i8* %205, i8** %209, align 8
  %210 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %211 = load i64, i64* @BNA_RX_RES_MEM_T_DSWQPT, align 8
  %212 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %210, i64 %211
  %213 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  store %struct.bna_mem_info* %214, %struct.bna_mem_info** %11, align 8
  %215 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %216 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %217 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %216, i32 0, i32 2
  store i8* %215, i8** %217, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = mul i64 %219, 8
  %221 = trunc i64 %220 to i32
  %222 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %223 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %225 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %228 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  %229 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %230 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %231 = load i64, i64* @BNA_RX_RES_MEM_T_DPAGE, align 8
  %232 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %230, i64 %231
  %233 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %232, i32 0, i32 1
  store i8* %229, i8** %233, align 8
  %234 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %235 = load i64, i64* @BNA_RX_RES_MEM_T_DPAGE, align 8
  %236 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %234, i64 %235
  %237 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  store %struct.bna_mem_info* %238, %struct.bna_mem_info** %11, align 8
  %239 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %240 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %241 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %240, i32 0, i32 2
  store i8* %239, i8** %241, align 8
  %242 = load i32, i32* @PAGE_SIZE, align 4
  %243 = load i32, i32* %10, align 4
  %244 = mul nsw i32 %242, %243
  %245 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %246 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %248 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %251 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  %252 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %253 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %254 = load i64, i64* @BNA_RX_RES_MEM_T_HQPT, align 8
  %255 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %253, i64 %254
  %256 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %255, i32 0, i32 1
  store i8* %252, i8** %256, align 8
  %257 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %258 = load i64, i64* @BNA_RX_RES_MEM_T_HQPT, align 8
  %259 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %257, i64 %258
  %260 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 1
  store %struct.bna_mem_info* %261, %struct.bna_mem_info** %11, align 8
  %262 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %263 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %264 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %263, i32 0, i32 2
  store i8* %262, i8** %264, align 8
  %265 = load i32, i32* %9, align 4
  %266 = sext i32 %265 to i64
  %267 = mul i64 %266, 4
  %268 = trunc i64 %267 to i32
  %269 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %270 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  %271 = load i32, i32* %9, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %70
  %274 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %275 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  br label %278

277:                                              ; preds = %70
  br label %278

278:                                              ; preds = %277, %273
  %279 = phi i32 [ %276, %273 ], [ 0, %277 ]
  %280 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %281 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 4
  %282 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %283 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %284 = load i64, i64* @BNA_RX_RES_MEM_T_HSWQPT, align 8
  %285 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %283, i64 %284
  %286 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %285, i32 0, i32 1
  store i8* %282, i8** %286, align 8
  %287 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %288 = load i64, i64* @BNA_RX_RES_MEM_T_HSWQPT, align 8
  %289 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %287, i64 %288
  %290 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 1
  store %struct.bna_mem_info* %291, %struct.bna_mem_info** %11, align 8
  %292 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %293 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %294 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %293, i32 0, i32 2
  store i8* %292, i8** %294, align 8
  %295 = load i32, i32* %9, align 4
  %296 = sext i32 %295 to i64
  %297 = mul i64 %296, 8
  %298 = trunc i64 %297 to i32
  %299 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %300 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %299, i32 0, i32 0
  store i32 %298, i32* %300, align 8
  %301 = load i32, i32* %9, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %278
  %304 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %305 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  br label %308

307:                                              ; preds = %278
  br label %308

308:                                              ; preds = %307, %303
  %309 = phi i32 [ %306, %303 ], [ 0, %307 ]
  %310 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %311 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  %312 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %313 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %314 = load i64, i64* @BNA_RX_RES_MEM_T_HPAGE, align 8
  %315 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %313, i64 %314
  %316 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %315, i32 0, i32 1
  store i8* %312, i8** %316, align 8
  %317 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %318 = load i64, i64* @BNA_RX_RES_MEM_T_HPAGE, align 8
  %319 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %317, i64 %318
  %320 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 1
  store %struct.bna_mem_info* %321, %struct.bna_mem_info** %11, align 8
  %322 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %323 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %324 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %323, i32 0, i32 2
  store i8* %322, i8** %324, align 8
  %325 = load i32, i32* @PAGE_SIZE, align 4
  %326 = load i32, i32* %9, align 4
  %327 = mul nsw i32 %325, %326
  %328 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %329 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %328, i32 0, i32 0
  store i32 %327, i32* %329, align 8
  %330 = load i32, i32* %9, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %308
  %333 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %334 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  br label %337

336:                                              ; preds = %308
  br label %337

337:                                              ; preds = %336, %332
  %338 = phi i32 [ %335, %332 ], [ 0, %336 ]
  %339 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %340 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %339, i32 0, i32 1
  store i32 %338, i32* %340, align 4
  %341 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %342 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %343 = load i64, i64* @BNA_RX_RES_MEM_T_IBIDX, align 8
  %344 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %342, i64 %343
  %345 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %344, i32 0, i32 1
  store i8* %341, i8** %345, align 8
  %346 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %347 = load i64, i64* @BNA_RX_RES_MEM_T_IBIDX, align 8
  %348 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %346, i64 %347
  %349 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 1
  store %struct.bna_mem_info* %350, %struct.bna_mem_info** %11, align 8
  %351 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %352 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %353 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %352, i32 0, i32 2
  store i8* %351, i8** %353, align 8
  %354 = load i32, i32* @BFI_IBIDX_SIZE, align 4
  %355 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %356 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %355, i32 0, i32 0
  store i32 %354, i32* %356, align 8
  %357 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %358 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %361 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %360, i32 0, i32 1
  store i32 %359, i32* %361, align 4
  %362 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %363 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %364 = load i64, i64* @BNA_RX_RES_MEM_T_RIT, align 8
  %365 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %363, i64 %364
  %366 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %365, i32 0, i32 1
  store i8* %362, i8** %366, align 8
  %367 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %368 = load i64, i64* @BNA_RX_RES_MEM_T_RIT, align 8
  %369 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %367, i64 %368
  %370 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 1
  store %struct.bna_mem_info* %371, %struct.bna_mem_info** %11, align 8
  %372 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %373 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %374 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %373, i32 0, i32 2
  store i8* %372, i8** %374, align 8
  %375 = load i32, i32* @BFI_ENET_RSS_RIT_MAX, align 4
  %376 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %377 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %376, i32 0, i32 0
  store i32 %375, i32* %377, align 8
  %378 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %379 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %378, i32 0, i32 1
  store i32 1, i32* %379, align 4
  %380 = load i8*, i8** @BNA_RES_T_INTR, align 8
  %381 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %382 = load i64, i64* @BNA_RX_RES_T_INTR, align 8
  %383 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %381, i64 %382
  %384 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %383, i32 0, i32 1
  store i8* %380, i8** %384, align 8
  %385 = load i32, i32* @BNA_INTR_T_MSIX, align 4
  %386 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %387 = load i64, i64* @BNA_RX_RES_T_INTR, align 8
  %388 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %386, i64 %387
  %389 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 1
  store i32 %385, i32* %391, align 4
  %392 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %393 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %396 = load i64, i64* @BNA_RX_RES_T_INTR, align 8
  %397 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %395, i64 %396
  %398 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 0
  store i32 %394, i32* %400, align 8
  ret void
}

declare dso_local i32 @BNA_TO_POWER_OF_2_HIGH(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @SIZE_TO_PAGES(i32) #1

declare dso_local i32 @BNA_GET_RXQS(%struct.bna_rx_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
