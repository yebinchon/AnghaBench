; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_poll_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i32, i32, i32* }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.nes_cq = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.nes_hw_cqe* }
%struct.nes_hw_cqe = type { i64* }
%struct.nes_qp = type { %struct.TYPE_8__, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_6__ = type { i64* }

@NES_DBG_CQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NES_CQE_OPCODE_IDX = common dso_local global i64 0, align 8
@NES_CQE_VALID = common dso_local global i32 0, align 4
@NES_CQE_COMP_COMP_CTX_LOW_IDX = common dso_local global i64 0, align 8
@NES_SW_CONTEXT_ALIGN = common dso_local global i32 0, align 4
@NES_CQE_COMP_COMP_CTX_HIGH_IDX = common dso_local global i64 0, align 8
@NES_CQE_ERROR_CODE_IDX = common dso_local global i64 0, align 8
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@NES_IWARP_CQE_MAJOR_DRV = common dso_local global i32 0, align 4
@NES_IWARP_CQE_MAJOR_FLUSH = common dso_local global i32 0, align 4
@NES_IWARP_CQE_MINOR_FLUSH = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@NES_CQE_SQ = common dso_local global i32 0, align 4
@NES_IWARP_SQ_WQE_COMP_SCRATCH_HIGH_IDX = common dso_local global i64 0, align 8
@NES_IWARP_SQ_WQE_COMP_SCRATCH_LOW_IDX = common dso_local global i64 0, align 8
@NES_IWARP_SQ_WQE_TOTAL_PAYLOAD_IDX = common dso_local global i64 0, align 8
@NES_IWARP_SQ_WQE_MISC_IDX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Operation = RDMA WRITE.\0A\00", align 1
@IB_WC_RDMA_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Operation = RDMA READ.\0A\00", align 1
@IB_WC_RDMA_READ = common dso_local global i32 0, align 4
@NES_IWARP_SQ_WQE_RDMA_LENGTH_IDX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"Operation = Send.\0A\00", align 1
@IB_WC_SEND = common dso_local global i32 0, align 4
@IB_WC_LOCAL_INV = common dso_local global i32 0, align 4
@IB_WC_FAST_REG_MR = common dso_local global i32 0, align 4
@NES_CQE_PAYLOAD_LENGTH_IDX = common dso_local global i64 0, align 8
@NES_IWARP_RQ_WQE_COMP_SCRATCH_LOW_IDX = common dso_local global i64 0, align 8
@NES_IWARP_RQ_WQE_COMP_SCRATCH_HIGH_IDX = common dso_local global i64 0, align 8
@IB_WC_RECV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [78 x i8] c"CQ%u Issuing CQE Allocate since more than half of cqes are pending %u of %u.\0A\00", align 1
@NES_CQE_ALLOC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"Reporting %u completions for CQ%u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cq*, i32, %struct.ib_wc*)* @nes_poll_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nes_vnic*, align 8
  %11 = alloca %struct.nes_device*, align 8
  %12 = alloca %struct.nes_cq*, align 8
  %13 = alloca %struct.nes_qp*, align 8
  %14 = alloca %struct.nes_hw_cqe, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  store i64 0, i64* %9, align 8
  %23 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %24 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.nes_vnic* @to_nesvnic(i32 %25)
  store %struct.nes_vnic* %26, %struct.nes_vnic** %10, align 8
  %27 = load %struct.nes_vnic*, %struct.nes_vnic** %10, align 8
  %28 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %27, i32 0, i32 0
  %29 = load %struct.nes_device*, %struct.nes_device** %28, align 8
  store %struct.nes_device* %29, %struct.nes_device** %11, align 8
  %30 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %31 = call %struct.nes_cq* @to_nescq(%struct.ib_cq* %30)
  store %struct.nes_cq* %31, %struct.nes_cq** %12, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %21, align 4
  %32 = load i32, i32* @NES_DBG_CQ, align 4
  %33 = call i32 (i32, i8*, ...) @nes_debug(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %35 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %34, i32 0, i32 1
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %39 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %15, align 4
  %42 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %43 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %17, align 4
  br label %46

46:                                               ; preds = %509, %3
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %510

50:                                               ; preds = %46
  %51 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %52 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load %struct.nes_hw_cqe*, %struct.nes_hw_cqe** %53, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %54, i64 %56
  %58 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @NES_CQE_OPCODE_IDX, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @le32_to_cpu(i64 %62)
  %64 = load i32, i32* @NES_CQE_VALID, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %50
  br label %510

68:                                               ; preds = %50
  %69 = call i32 (...) @rmb()
  %70 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %71 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load %struct.nes_hw_cqe*, %struct.nes_hw_cqe** %72, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %73, i64 %75
  %77 = bitcast %struct.nes_hw_cqe* %14 to i8*
  %78 = bitcast %struct.nes_hw_cqe* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 8, i1 false)
  %79 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %14, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @NES_CQE_COMP_COMP_CTX_LOW_IDX, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @le32_to_cpu(i64 %83)
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load %struct.nes_device*, %struct.nes_device** %11, align 8
  %87 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = and i32 %85, %91
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* @NES_SW_CONTEXT_ALIGN, align 4
  %94 = sub nsw i32 %93, 1
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %20, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %20, align 4
  %98 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %14, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* @NES_CQE_COMP_COMP_CTX_HIGH_IDX, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @le32_to_cpu(i64 %102)
  %104 = shl i32 %103, 32
  %105 = load i32, i32* %20, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %412

109:                                              ; preds = %68
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to %struct.nes_qp*
  store %struct.nes_qp* %112, %struct.nes_qp** %13, align 8
  %113 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %114 = call i32 @memset(%struct.ib_wc* %113, i32 0, i32 32)
  %115 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %14, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* @NES_CQE_ERROR_CODE_IDX, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %109
  %122 = load i32, i32* @IB_WC_SUCCESS, align 4
  %123 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %124 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  br label %163

125:                                              ; preds = %109
  %126 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %14, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* @NES_CQE_ERROR_CODE_IDX, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @le32_to_cpu(i64 %130)
  store i32 %131, i32* %22, align 4
  %132 = load i32, i32* @NES_IWARP_CQE_MAJOR_DRV, align 4
  %133 = load i32, i32* %22, align 4
  %134 = ashr i32 %133, 16
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %158

136:                                              ; preds = %125
  %137 = load i32, i32* %22, align 4
  %138 = and i32 %137, 65535
  %139 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %140 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* @NES_IWARP_CQE_MAJOR_FLUSH, align 4
  %142 = shl i32 %141, 16
  %143 = load i32, i32* @NES_IWARP_CQE_MINOR_FLUSH, align 4
  %144 = or i32 %142, %143
  %145 = call i8* @cpu_to_le32(i32 %144)
  %146 = ptrtoint i8* %145 to i64
  %147 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %148 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 3
  %150 = load %struct.nes_hw_cqe*, %struct.nes_hw_cqe** %149, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %150, i64 %152
  %154 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* @NES_CQE_ERROR_CODE_IDX, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  store i64 %146, i64* %157, align 8
  br label %162

158:                                              ; preds = %125
  %159 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %160 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %161 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %158, %136
  br label %163

163:                                              ; preds = %162, %121
  %164 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %165 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %164, i32 0, i32 2
  %166 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %167 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %166, i32 0, i32 5
  store i32* %165, i32** %167, align 8
  %168 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %169 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %173 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %14, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = load i64, i64* @NES_CQE_OPCODE_IDX, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @le32_to_cpu(i64 %178)
  %180 = load i32, i32* @NES_CQE_SQ, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %332

183:                                              ; preds = %163
  %184 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %185 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %183
  %189 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %190 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %189, i32 0, i32 1
  store i64 0, i64* %190, align 8
  %191 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %192 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %188, %183
  %197 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %198 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 7
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = load i32, i32* %19, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i64*, i64** %204, align 8
  %206 = load i64, i64* @NES_IWARP_SQ_WQE_COMP_SCRATCH_HIGH_IDX, align 8
  %207 = getelementptr inbounds i64, i64* %205, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = trunc i64 %208 to i32
  %210 = call i8* @cpu_to_le32(i32 %209)
  %211 = ptrtoint i8* %210 to i32
  %212 = shl i32 %211, 32
  %213 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %214 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 7
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = load i32, i32* %19, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i64*, i64** %220, align 8
  %222 = load i64, i64* @NES_IWARP_SQ_WQE_COMP_SCRATCH_LOW_IDX, align 8
  %223 = getelementptr inbounds i64, i64* %221, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = call i8* @cpu_to_le32(i32 %225)
  %227 = ptrtoint i8* %226 to i32
  %228 = or i32 %212, %227
  store i32 %228, i32* %8, align 4
  %229 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %230 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 7
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = load i32, i32* %19, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i64*, i64** %236, align 8
  %238 = load i64, i64* @NES_IWARP_SQ_WQE_TOTAL_PAYLOAD_IDX, align 8
  %239 = getelementptr inbounds i64, i64* %237, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @le32_to_cpu(i64 %240)
  %242 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %243 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 4
  %244 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %245 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 7
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = load i32, i32* %19, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i64*, i64** %251, align 8
  %253 = load i64, i64* @NES_IWARP_SQ_WQE_MISC_IDX, align 8
  %254 = getelementptr inbounds i64, i64* %252, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @le32_to_cpu(i64 %255)
  %257 = and i32 %256, 63
  switch i32 %257, label %299 [
    i32 132, label %258
    i32 133, label %264
    i32 130, label %285
    i32 128, label %285
    i32 131, label %285
    i32 129, label %285
    i32 134, label %291
    i32 135, label %295
  ]

258:                                              ; preds = %196
  %259 = load i32, i32* @NES_DBG_CQ, align 4
  %260 = call i32 (i32, i8*, ...) @nes_debug(i32 %259, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %261 = load i32, i32* @IB_WC_RDMA_WRITE, align 4
  %262 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %263 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %262, i32 0, i32 3
  store i32 %261, i32* %263, align 4
  br label %299

264:                                              ; preds = %196
  %265 = load i32, i32* @NES_DBG_CQ, align 4
  %266 = call i32 (i32, i8*, ...) @nes_debug(i32 %265, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %267 = load i32, i32* @IB_WC_RDMA_READ, align 4
  %268 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %269 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %268, i32 0, i32 3
  store i32 %267, i32* %269, align 4
  %270 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %271 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 7
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = load i32, i32* %19, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i64*, i64** %277, align 8
  %279 = load i64, i64* @NES_IWARP_SQ_WQE_RDMA_LENGTH_IDX, align 8
  %280 = getelementptr inbounds i64, i64* %278, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = call i32 @le32_to_cpu(i64 %281)
  %283 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %284 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 4
  br label %299

285:                                              ; preds = %196, %196, %196, %196
  %286 = load i32, i32* @NES_DBG_CQ, align 4
  %287 = call i32 (i32, i8*, ...) @nes_debug(i32 %286, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %288 = load i32, i32* @IB_WC_SEND, align 4
  %289 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %290 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %289, i32 0, i32 3
  store i32 %288, i32* %290, align 4
  br label %299

291:                                              ; preds = %196
  %292 = load i32, i32* @IB_WC_LOCAL_INV, align 4
  %293 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %294 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %293, i32 0, i32 3
  store i32 %292, i32* %294, align 4
  br label %299

295:                                              ; preds = %196
  %296 = load i32, i32* @IB_WC_FAST_REG_MR, align 4
  %297 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %298 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %297, i32 0, i32 3
  store i32 %296, i32* %298, align 4
  br label %299

299:                                              ; preds = %196, %295, %291, %285, %264, %258
  %300 = load i32, i32* %19, align 4
  %301 = add nsw i32 %300, 1
  %302 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %303 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = sub nsw i32 %305, 1
  %307 = and i32 %301, %306
  %308 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %309 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  store i32 %307, i32* %310, align 8
  %311 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %312 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @IB_WC_SUCCESS, align 4
  %315 = icmp ne i32 %313, %314
  br i1 %315, label %316, label %331

316:                                              ; preds = %299
  %317 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %318 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %322 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = icmp ne i32 %320, %324
  br i1 %325, label %326, label %331

326:                                              ; preds = %316
  store i32 0, i32* %21, align 4
  %327 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %328 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  store i32 %330, i32* %16, align 4
  br label %331

331:                                              ; preds = %326, %316, %299
  br label %404

332:                                              ; preds = %163
  %333 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %14, i32 0, i32 0
  %334 = load i64*, i64** %333, align 8
  %335 = load i64, i64* @NES_CQE_PAYLOAD_LENGTH_IDX, align 8
  %336 = getelementptr inbounds i64, i64* %334, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = call i32 @le32_to_cpu(i64 %337)
  %339 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %340 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %339, i32 0, i32 1
  store i32 %338, i32* %340, align 4
  %341 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %342 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 6
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %343, align 8
  %345 = load i32, i32* %19, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 0
  %349 = load i64*, i64** %348, align 8
  %350 = load i64, i64* @NES_IWARP_RQ_WQE_COMP_SCRATCH_LOW_IDX, align 8
  %351 = getelementptr inbounds i64, i64* %349, i64 %350
  %352 = load i64, i64* %351, align 8
  %353 = call i32 @le32_to_cpu(i64 %352)
  %354 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %355 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 6
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %356, align 8
  %358 = load i32, i32* %19, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 0
  %362 = load i64*, i64** %361, align 8
  %363 = load i64, i64* @NES_IWARP_RQ_WQE_COMP_SCRATCH_HIGH_IDX, align 8
  %364 = getelementptr inbounds i64, i64* %362, i64 %363
  %365 = load i64, i64* %364, align 8
  %366 = call i32 @le32_to_cpu(i64 %365)
  %367 = shl i32 %366, 32
  %368 = or i32 %353, %367
  store i32 %368, i32* %8, align 4
  %369 = load i32, i32* @IB_WC_RECV, align 4
  %370 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %371 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %370, i32 0, i32 3
  store i32 %369, i32* %371, align 4
  %372 = load i32, i32* %19, align 4
  %373 = add nsw i32 %372, 1
  %374 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %375 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 8
  %378 = sub nsw i32 %377, 1
  %379 = and i32 %373, %378
  %380 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %381 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 3
  store i32 %379, i32* %382, align 4
  %383 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %384 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @IB_WC_SUCCESS, align 4
  %387 = icmp ne i32 %385, %386
  br i1 %387, label %388, label %403

388:                                              ; preds = %332
  %389 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %390 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %394 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 5
  %396 = load i32, i32* %395, align 4
  %397 = icmp ne i32 %392, %396
  br i1 %397, label %398, label %403

398:                                              ; preds = %388
  store i32 0, i32* %21, align 4
  %399 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  %400 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  store i32 %402, i32* %16, align 4
  br label %403

403:                                              ; preds = %398, %388, %332
  br label %404

404:                                              ; preds = %403, %331
  %405 = load i32, i32* %8, align 4
  %406 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %407 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %406, i32 0, i32 2
  store i32 %405, i32* %407, align 8
  %408 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %409 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %408, i32 1
  store %struct.ib_wc* %409, %struct.ib_wc** %6, align 8
  %410 = load i32, i32* %18, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %18, align 4
  br label %412

412:                                              ; preds = %404, %68
  %413 = load i32, i32* %21, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %477

415:                                              ; preds = %412
  %416 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %417 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %416, i32 0, i32 2
  %418 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %417, i32 0, i32 3
  %419 = load %struct.nes_hw_cqe*, %struct.nes_hw_cqe** %418, align 8
  %420 = load i32, i32* %15, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %419, i64 %421
  %423 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %422, i32 0, i32 0
  %424 = load i64*, i64** %423, align 8
  %425 = load i64, i64* @NES_CQE_OPCODE_IDX, align 8
  %426 = getelementptr inbounds i64, i64* %424, i64 %425
  store i64 0, i64* %426, align 8
  %427 = load i32, i32* %15, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %15, align 4
  %429 = load i32, i32* %17, align 4
  %430 = icmp sge i32 %428, %429
  br i1 %430, label %431, label %432

431:                                              ; preds = %415
  store i32 0, i32* %15, align 4
  br label %432

432:                                              ; preds = %431, %415
  %433 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %434 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %434, align 8
  %437 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %438 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* %17, align 4
  %441 = sdiv i32 %440, 2
  %442 = icmp sgt i32 %439, %441
  br i1 %442, label %448, label %443

443:                                              ; preds = %432
  %444 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %445 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = icmp eq i32 %446, 255
  br i1 %447, label %448, label %476

448:                                              ; preds = %443, %432
  %449 = load i32, i32* @NES_DBG_CQ, align 4
  %450 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %451 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %450, i32 0, i32 2
  %452 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %455 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* %17, align 4
  %458 = call i32 (i32, i8*, ...) @nes_debug(i32 %449, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32 %453, i32 %456, i32 %457)
  %459 = load %struct.nes_device*, %struct.nes_device** %11, align 8
  %460 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @NES_CQE_ALLOC, align 8
  %463 = add nsw i64 %461, %462
  %464 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %465 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %464, i32 0, i32 2
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 8
  %468 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %469 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = shl i32 %470, 16
  %472 = or i32 %467, %471
  %473 = call i32 @nes_write32(i64 %463, i32 %472)
  %474 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %475 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %474, i32 0, i32 0
  store i32 0, i32* %475, align 8
  br label %476

476:                                              ; preds = %448, %443
  br label %509

477:                                              ; preds = %412
  %478 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %14, i32 0, i32 0
  %479 = load i64*, i64** %478, align 8
  %480 = load i64, i64* @NES_CQE_COMP_COMP_CTX_LOW_IDX, align 8
  %481 = getelementptr inbounds i64, i64* %479, i64 %480
  %482 = load i64, i64* %481, align 8
  %483 = call i32 @le32_to_cpu(i64 %482)
  store i32 %483, i32* %19, align 4
  %484 = load i32, i32* %19, align 4
  %485 = load %struct.nes_device*, %struct.nes_device** %11, align 8
  %486 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %485, i32 0, i32 1
  %487 = load %struct.TYPE_9__*, %struct.TYPE_9__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 4
  %490 = sub nsw i32 %489, 1
  %491 = xor i32 %490, -1
  %492 = and i32 %484, %491
  %493 = load i32, i32* %16, align 4
  %494 = or i32 %492, %493
  store i32 %494, i32* %19, align 4
  %495 = load i32, i32* %19, align 4
  %496 = call i8* @cpu_to_le32(i32 %495)
  %497 = ptrtoint i8* %496 to i64
  %498 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %499 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %498, i32 0, i32 2
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %499, i32 0, i32 3
  %501 = load %struct.nes_hw_cqe*, %struct.nes_hw_cqe** %500, align 8
  %502 = load i32, i32* %15, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %501, i64 %503
  %505 = getelementptr inbounds %struct.nes_hw_cqe, %struct.nes_hw_cqe* %504, i32 0, i32 0
  %506 = load i64*, i64** %505, align 8
  %507 = load i64, i64* @NES_CQE_COMP_COMP_CTX_LOW_IDX, align 8
  %508 = getelementptr inbounds i64, i64* %506, i64 %507
  store i64 %497, i64* %508, align 8
  store i32 1, i32* %21, align 4
  br label %509

509:                                              ; preds = %477, %476
  br label %46

510:                                              ; preds = %67, %46
  %511 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %512 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %533

515:                                              ; preds = %510
  %516 = load %struct.nes_device*, %struct.nes_device** %11, align 8
  %517 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = load i64, i64* @NES_CQE_ALLOC, align 8
  %520 = add nsw i64 %518, %519
  %521 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %522 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %521, i32 0, i32 2
  %523 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %522, i32 0, i32 2
  %524 = load i32, i32* %523, align 8
  %525 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %526 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = shl i32 %527, 16
  %529 = or i32 %524, %528
  %530 = call i32 @nes_write32(i64 %520, i32 %529)
  %531 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %532 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %531, i32 0, i32 0
  store i32 0, i32* %532, align 8
  br label %533

533:                                              ; preds = %515, %510
  %534 = load i32, i32* %15, align 4
  %535 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %536 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %535, i32 0, i32 2
  %537 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i32 0, i32 0
  store i32 %534, i32* %537, align 8
  %538 = load i32, i32* @NES_DBG_CQ, align 4
  %539 = load i32, i32* %18, align 4
  %540 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %541 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %540, i32 0, i32 2
  %542 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 8
  %544 = call i32 (i32, i8*, ...) @nes_debug(i32 %538, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %539, i32 %543)
  %545 = load %struct.nes_cq*, %struct.nes_cq** %12, align 8
  %546 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %545, i32 0, i32 1
  %547 = load i64, i64* %9, align 8
  %548 = call i32 @spin_unlock_irqrestore(i32* %546, i64 %547)
  %549 = load i32, i32* %18, align 4
  ret i32 %549
}

declare dso_local %struct.nes_vnic* @to_nesvnic(i32) #1

declare dso_local %struct.nes_cq* @to_nescq(%struct.ib_cq*) #1

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @rmb(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @nes_write32(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
