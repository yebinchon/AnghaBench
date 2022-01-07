; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_alloc_resource_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_alloc_resource_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_alloc_qp_parms = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, i32, %struct.TYPE_13__, %struct.TYPE_12__, i8*, %struct.TYPE_11__, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ipz_adapter_handle = type { i32 }

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_ALL_RES_QP_ENHANCED_OPS = common dso_local global i32 0, align 4
@H_ALL_RES_QP_PTE_PIN = common dso_local global i32 0, align 4
@H_ALL_RES_QP_SERVICE_TYPE = common dso_local global i32 0, align 4
@H_ALL_RES_QP_SIGNALING_TYPE = common dso_local global i32 0, align 4
@H_ALL_RES_QP_STORAGE = common dso_local global i32 0, align 4
@H_ALL_RES_QP_SMALL_SQ_PAGE_SIZE = common dso_local global i32 0, align 4
@H_ALL_RES_QP_SMALL_RQ_PAGE_SIZE = common dso_local global i32 0, align 4
@H_ALL_RES_QP_LL_RQ_CQE_POSTING = common dso_local global i32 0, align 4
@LLQP_RECV_COMP = common dso_local global i32 0, align 4
@H_ALL_RES_QP_LL_SQ_CQE_POSTING = common dso_local global i32 0, align 4
@LLQP_SEND_COMP = common dso_local global i32 0, align 4
@H_ALL_RES_QP_UD_AV_LKEY_CTRL = common dso_local global i32 0, align 4
@H_ALL_RES_QP_RESOURCE_TYPE = common dso_local global i32 0, align 4
@H_ALL_RES_QP_MAX_OUTST_SEND_WR = common dso_local global i32 0, align 4
@H_ALL_RES_QP_MAX_OUTST_RECV_WR = common dso_local global i32 0, align 4
@H_ALL_RES_QP_MAX_SEND_SGE = common dso_local global i32 0, align 4
@H_ALL_RES_QP_MAX_RECV_SGE = common dso_local global i32 0, align 4
@H_ALL_RES_QP_SRQ_QP_TOKEN = common dso_local global i32 0, align 4
@EQPT_SRQ = common dso_local global i64 0, align 8
@H_ALL_RES_QP_SRQ_LIMIT = common dso_local global i32 0, align 4
@H_ALL_RES_QP_SRQ_QPN = common dso_local global i32 0, align 4
@H_ALLOC_RESOURCE = common dso_local global i32 0, align 4
@H_ALL_RES_QP_ACT_OUTST_SEND_WR = common dso_local global i32 0, align 4
@H_ALL_RES_QP_ACT_OUTST_RECV_WR = common dso_local global i32 0, align 4
@H_ALL_RES_QP_ACT_SEND_SGE = common dso_local global i32 0, align 4
@H_ALL_RES_QP_ACT_RECV_SGE = common dso_local global i32 0, align 4
@H_ALL_RES_QP_SQUEUE_SIZE_PAGES = common dso_local global i32 0, align 4
@H_ALL_RES_QP_RQUEUE_SIZE_PAGES = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Could not establish HW access. rc=%d paddr=%#lx\00", align 1
@H_FREE_RESOURCE = common dso_local global i32 0, align 4
@H_NO_MEM = common dso_local global i32 0, align 4
@H_NOT_ENOUGH_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Not enough resources. ret=%lli\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hipz_h_alloc_resource_qp(i32 %0, %struct.ehca_alloc_qp_parms* %1, i32 %2) #0 {
  %4 = alloca %struct.ipz_adapter_handle, align 4
  %5 = alloca %struct.ehca_alloc_qp_parms*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %4, i32 0, i32 0
  store i32 %0, i32* %15, align 4
  store %struct.ehca_alloc_qp_parms* %1, %struct.ehca_alloc_qp_parms** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load i32, i32* @H_ALL_RES_QP_ENHANCED_OPS, align 4
  %21 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %22 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @EHCA_BMASK_SET(i32 %20, i32 %23)
  %25 = load i32, i32* @H_ALL_RES_QP_PTE_PIN, align 4
  %26 = call i32 @EHCA_BMASK_SET(i32 %25, i32 0)
  %27 = or i32 %24, %26
  %28 = load i32, i32* @H_ALL_RES_QP_SERVICE_TYPE, align 4
  %29 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %30 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @EHCA_BMASK_SET(i32 %28, i32 %31)
  %33 = or i32 %27, %32
  %34 = load i32, i32* @H_ALL_RES_QP_SIGNALING_TYPE, align 4
  %35 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %36 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @EHCA_BMASK_SET(i32 %34, i32 %37)
  %39 = or i32 %33, %38
  %40 = load i32, i32* @H_ALL_RES_QP_STORAGE, align 4
  %41 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %42 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @EHCA_BMASK_SET(i32 %40, i32 %43)
  %45 = or i32 %39, %44
  %46 = load i32, i32* @H_ALL_RES_QP_SMALL_SQ_PAGE_SIZE, align 4
  %47 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %48 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %47, i32 0, i32 12
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @EHCA_BMASK_SET(i32 %46, i32 %50)
  %52 = or i32 %45, %51
  %53 = load i32, i32* @H_ALL_RES_QP_SMALL_RQ_PAGE_SIZE, align 4
  %54 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %55 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %54, i32 0, i32 11
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @EHCA_BMASK_SET(i32 %53, i32 %57)
  %59 = or i32 %52, %58
  %60 = load i32, i32* @H_ALL_RES_QP_LL_RQ_CQE_POSTING, align 4
  %61 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %62 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @LLQP_RECV_COMP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @EHCA_BMASK_SET(i32 %60, i32 %69)
  %71 = or i32 %59, %70
  %72 = load i32, i32* @H_ALL_RES_QP_LL_SQ_CQE_POSTING, align 4
  %73 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %74 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @LLQP_SEND_COMP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @EHCA_BMASK_SET(i32 %72, i32 %81)
  %83 = or i32 %71, %82
  %84 = load i32, i32* @H_ALL_RES_QP_UD_AV_LKEY_CTRL, align 4
  %85 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %86 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @EHCA_BMASK_SET(i32 %84, i32 %87)
  %89 = or i32 %83, %88
  %90 = load i32, i32* @H_ALL_RES_QP_RESOURCE_TYPE, align 4
  %91 = call i32 @EHCA_BMASK_SET(i32 %90, i32 1)
  %92 = or i32 %89, %91
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* @H_ALL_RES_QP_MAX_OUTST_SEND_WR, align 4
  %94 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %95 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %94, i32 0, i32 12
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @EHCA_BMASK_SET(i32 %93, i32 %98)
  %100 = load i32, i32* @H_ALL_RES_QP_MAX_OUTST_RECV_WR, align 4
  %101 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %102 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %101, i32 0, i32 11
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @EHCA_BMASK_SET(i32 %100, i32 %105)
  %107 = or i32 %99, %106
  %108 = load i32, i32* @H_ALL_RES_QP_MAX_SEND_SGE, align 4
  %109 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %110 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %109, i32 0, i32 12
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @EHCA_BMASK_SET(i32 %108, i32 %112)
  %114 = or i32 %107, %113
  %115 = load i32, i32* @H_ALL_RES_QP_MAX_RECV_SGE, align 4
  %116 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %117 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %116, i32 0, i32 11
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @EHCA_BMASK_SET(i32 %115, i32 %119)
  %121 = or i32 %114, %120
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* @H_ALL_RES_QP_SRQ_QP_TOKEN, align 4
  %123 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %124 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @EHCA_BMASK_SET(i32 %122, i32 %125)
  store i32 %126, i32* %11, align 4
  %127 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %128 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* @EQPT_SRQ, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %3
  %134 = load i32, i32* @H_ALL_RES_QP_SRQ_LIMIT, align 4
  %135 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %136 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @EHCA_BMASK_SET(i32 %134, i32 %137)
  store i32 %138, i32* %12, align 4
  br label %145

139:                                              ; preds = %3
  %140 = load i32, i32* @H_ALL_RES_QP_SRQ_QPN, align 4
  %141 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %142 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @EHCA_BMASK_SET(i32 %140, i32 %143)
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %139, %133
  %146 = load i32, i32* @H_ALLOC_RESOURCE, align 4
  %147 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %4, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %151 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %150, i32 0, i32 18
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %155 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %154, i32 0, i32 17
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %159 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %158, i32 0, i32 16
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %163 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %162, i32 0, i32 15
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = shl i32 %165, 32
  %167 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %168 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %167, i32 0, i32 14
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %166, %170
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @ehca_plpar_hcall9(i32 %146, i64* %19, i32 %148, i32 %149, i32 %153, i32 %157, i32 %161, i32 %171, i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %8, align 4
  %176 = getelementptr inbounds i64, i64* %19, i64 0
  %177 = load i64, i64* %176, align 16
  %178 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %179 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %178, i32 0, i32 9
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  store i64 %177, i64* %180, align 8
  %181 = getelementptr inbounds i64, i64* %19, i64 1
  %182 = load i64, i64* %181, align 8
  %183 = inttoptr i64 %182 to i8*
  %184 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %185 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %184, i32 0, i32 13
  store i8* %183, i8** %185, align 8
  %186 = load i32, i32* @H_ALL_RES_QP_ACT_OUTST_SEND_WR, align 4
  %187 = getelementptr inbounds i64, i64* %19, i64 2
  %188 = load i64, i64* %187, align 16
  %189 = call i64 @EHCA_BMASK_GET(i32 %186, i64 %188)
  %190 = inttoptr i64 %189 to i8*
  %191 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %192 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %191, i32 0, i32 12
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 5
  store i8* %190, i8** %193, align 8
  %194 = load i32, i32* @H_ALL_RES_QP_ACT_OUTST_RECV_WR, align 4
  %195 = getelementptr inbounds i64, i64* %19, i64 2
  %196 = load i64, i64* %195, align 16
  %197 = call i64 @EHCA_BMASK_GET(i32 %194, i64 %196)
  %198 = inttoptr i64 %197 to i8*
  %199 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %200 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %199, i32 0, i32 11
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 5
  store i8* %198, i8** %201, align 8
  %202 = load i32, i32* @H_ALL_RES_QP_ACT_SEND_SGE, align 4
  %203 = getelementptr inbounds i64, i64* %19, i64 3
  %204 = load i64, i64* %203, align 8
  %205 = call i64 @EHCA_BMASK_GET(i32 %202, i64 %204)
  %206 = inttoptr i64 %205 to i8*
  %207 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %208 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %207, i32 0, i32 12
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 4
  store i8* %206, i8** %209, align 8
  %210 = load i32, i32* @H_ALL_RES_QP_ACT_RECV_SGE, align 4
  %211 = getelementptr inbounds i64, i64* %19, i64 3
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @EHCA_BMASK_GET(i32 %210, i64 %212)
  %214 = inttoptr i64 %213 to i8*
  %215 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %216 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %215, i32 0, i32 11
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 4
  store i8* %214, i8** %217, align 8
  %218 = load i32, i32* @H_ALL_RES_QP_SQUEUE_SIZE_PAGES, align 4
  %219 = getelementptr inbounds i64, i64* %19, i64 4
  %220 = load i64, i64* %219, align 16
  %221 = call i64 @EHCA_BMASK_GET(i32 %218, i64 %220)
  %222 = inttoptr i64 %221 to i8*
  %223 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %224 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %223, i32 0, i32 12
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 3
  store i8* %222, i8** %225, align 8
  %226 = load i32, i32* @H_ALL_RES_QP_RQUEUE_SIZE_PAGES, align 4
  %227 = getelementptr inbounds i64, i64* %19, i64 4
  %228 = load i64, i64* %227, align 16
  %229 = call i64 @EHCA_BMASK_GET(i32 %226, i64 %228)
  %230 = inttoptr i64 %229 to i8*
  %231 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %232 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %231, i32 0, i32 11
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 3
  store i8* %230, i8** %233, align 8
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* @H_SUCCESS, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %263

237:                                              ; preds = %145
  %238 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %239 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %238, i32 0, i32 10
  %240 = load i32, i32* %6, align 4
  %241 = getelementptr inbounds i64, i64* %19, i64 6
  %242 = load i64, i64* %241, align 16
  %243 = getelementptr inbounds i64, i64* %19, i64 6
  %244 = load i64, i64* %243, align 16
  %245 = call i32 @hcp_galpas_ctor(i32* %239, i32 %240, i64 %242, i64 %244)
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %262

248:                                              ; preds = %237
  %249 = load i32, i32* %7, align 4
  %250 = getelementptr inbounds i64, i64* %19, i64 6
  %251 = load i64, i64* %250, align 16
  %252 = call i32 (i8*, i32, ...) @ehca_gen_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %249, i64 %251)
  %253 = load i32, i32* @H_FREE_RESOURCE, align 4
  %254 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %4, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.ehca_alloc_qp_parms*, %struct.ehca_alloc_qp_parms** %5, align 8
  %257 = getelementptr inbounds %struct.ehca_alloc_qp_parms, %struct.ehca_alloc_qp_parms* %256, i32 0, i32 9
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @ehca_plpar_hcall_norets(i32 %253, i32 %255, i64 %259, i32 0, i32 0, i32 0, i32 0, i32 0)
  %261 = load i32, i32* @H_NO_MEM, align 4
  store i32 %261, i32* %8, align 4
  br label %262

262:                                              ; preds = %248, %237
  br label %263

263:                                              ; preds = %262, %145
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* @H_NOT_ENOUGH_RESOURCES, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %263
  %268 = load i32, i32* %8, align 4
  %269 = call i32 (i8*, i32, ...) @ehca_gen_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %268)
  br label %270

270:                                              ; preds = %267, %263
  %271 = load i32, i32* %8, align 4
  %272 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %272)
  ret i32 %271
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EHCA_BMASK_SET(i32, i32) #2

declare dso_local i32 @ehca_plpar_hcall9(i32, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @EHCA_BMASK_GET(i32, i64) #2

declare dso_local i32 @hcp_galpas_ctor(i32*, i32, i64, i64) #2

declare dso_local i32 @ehca_gen_err(i8*, i32, ...) #2

declare dso_local i32 @ehca_plpar_hcall_norets(i32, i32, i64, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
