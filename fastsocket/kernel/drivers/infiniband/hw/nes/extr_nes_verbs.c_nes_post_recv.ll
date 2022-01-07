; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_post_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { i32, %struct.ib_recv_wr*, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nes_qp = type { i64, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.nes_hw_qp_wqe* }
%struct.nes_hw_qp_wqe = type { i32 }

@IB_QPS_RTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NES_DBG_IW_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ibwr sge count = %u.\0A\00", align 1
@NES_IWARP_SQ_WQE_COMP_SCRATCH_LOW_IDX = common dso_local global i64 0, align 8
@NES_IWARP_RQ_WQE_FRAG0_LOW_IDX = common dso_local global i64 0, align 8
@NES_IWARP_RQ_WQE_LENGTH0_IDX = common dso_local global i64 0, align 8
@NES_IWARP_RQ_WQE_STAG0_IDX = common dso_local global i64 0, align 8
@NES_IWARP_RQ_WQE_TOTAL_PAYLOAD_IDX = common dso_local global i64 0, align 8
@NES_WQE_ALLOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**)* @nes_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nes_vnic*, align 8
  %10 = alloca %struct.nes_device*, align 8
  %11 = alloca %struct.nes_qp*, align 8
  %12 = alloca %struct.nes_hw_qp_wqe*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  store i64 0, i64* %8, align 8
  %20 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %21 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.nes_vnic* @to_nesvnic(i32 %22)
  store %struct.nes_vnic* %23, %struct.nes_vnic** %9, align 8
  %24 = load %struct.nes_vnic*, %struct.nes_vnic** %9, align 8
  %25 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %24, i32 0, i32 0
  %26 = load %struct.nes_device*, %struct.nes_device** %25, align 8
  store %struct.nes_device* %26, %struct.nes_device** %10, align 8
  %27 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %28 = call %struct.nes_qp* @to_nesqp(%struct.ib_qp* %27)
  store %struct.nes_qp* %28, %struct.nes_qp** %11, align 8
  store i32 0, i32* %13, align 4
  %29 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %30 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %33 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %34 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IB_QPS_RTS, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %13, align 4
  br label %241

41:                                               ; preds = %3
  %42 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %43 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %42, i32 0, i32 1
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %47 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %16, align 4
  br label %50

50:                                               ; preds = %207, %41
  %51 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %52 = icmp ne %struct.ib_recv_wr* %51, null
  br i1 %52, label %53, label %208

53:                                               ; preds = %50
  %54 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %55 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  br label %208

61:                                               ; preds = %53
  %62 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %63 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nes_device*, %struct.nes_device** %10, align 8
  %66 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %64, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  br label %208

74:                                               ; preds = %61
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %15, align 4
  %77 = mul nsw i32 2, %76
  %78 = add nsw i32 %75, %77
  %79 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %80 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %78, %82
  %84 = load i32, i32* %15, align 4
  %85 = srem i32 %83, %84
  %86 = load i32, i32* %15, align 4
  %87 = sub nsw i32 %86, 1
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %13, align 4
  br label %208

92:                                               ; preds = %74
  %93 = load i32, i32* @NES_DBG_IW_RX, align 4
  %94 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %95 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @nes_debug(i32 %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %99 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %100, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %101, i64 %103
  store %struct.nes_hw_qp_wqe* %104, %struct.nes_hw_qp_wqe** %12, align 8
  %105 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %12, align 8
  %106 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @nes_fill_init_qp_wqe(%struct.nes_hw_qp_wqe* %105, %struct.nes_qp* %106, i32 %107)
  %109 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %110 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %7, align 8
  %112 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %12, align 8
  %113 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* @NES_IWARP_SQ_WQE_COMP_SCRATCH_LOW_IDX, align 8
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @set_wqe_64bit_value(i32 %114, i64 %115, i64 %116)
  store i32 0, i32* %19, align 4
  store i32 0, i32* %14, align 4
  br label %118

118:                                              ; preds = %186, %92
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %121 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %189

124:                                              ; preds = %118
  %125 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %12, align 8
  %126 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* @NES_IWARP_RQ_WQE_FRAG0_LOW_IDX, align 8
  %129 = load i32, i32* %14, align 4
  %130 = mul nsw i32 %129, 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %128, %131
  %133 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %134 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %133, i32 0, i32 2
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @set_wqe_64bit_value(i32 %127, i64 %132, i64 %140)
  %142 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %12, align 8
  %143 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i64, i64* @NES_IWARP_RQ_WQE_LENGTH0_IDX, align 8
  %146 = load i32, i32* %14, align 4
  %147 = mul nsw i32 %146, 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %145, %148
  %150 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %151 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %150, i32 0, i32 2
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @set_wqe_32bit_value(i32 %144, i64 %149, i32 %157)
  %159 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %12, align 8
  %160 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i64, i64* @NES_IWARP_RQ_WQE_STAG0_IDX, align 8
  %163 = load i32, i32* %14, align 4
  %164 = mul nsw i32 %163, 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %162, %165
  %167 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %168 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %167, i32 0, i32 2
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @set_wqe_32bit_value(i32 %161, i64 %166, i32 %174)
  %176 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %177 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %176, i32 0, i32 2
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %19, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %19, align 4
  br label %186

186:                                              ; preds = %124
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %14, align 4
  br label %118

189:                                              ; preds = %118
  %190 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %12, align 8
  %191 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i64, i64* @NES_IWARP_RQ_WQE_TOTAL_PAYLOAD_IDX, align 8
  %194 = load i32, i32* %19, align 4
  %195 = call i32 @set_wqe_32bit_value(i32 %192, i64 %193, i32 %194)
  %196 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %197 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %196, i32 0, i32 1
  %198 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %197, align 8
  store %struct.ib_recv_wr* %198, %struct.ib_recv_wr** %5, align 8
  %199 = load i32, i32* %16, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %16, align 4
  %204 = load i32, i32* %15, align 4
  %205 = icmp sge i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %189
  store i32 0, i32* %16, align 4
  br label %207

207:                                              ; preds = %206, %189
  br label %50

208:                                              ; preds = %89, %71, %58, %50
  %209 = load i32, i32* %16, align 4
  %210 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %211 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  store i32 %209, i32* %212, align 4
  %213 = call i32 (...) @barrier()
  br label %214

214:                                              ; preds = %217, %208
  %215 = load i32, i32* %17, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %236

217:                                              ; preds = %214
  %218 = load i32, i32* %17, align 4
  %219 = call i32 @min(i32 %218, i32 255)
  store i32 %219, i32* %18, align 4
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* %17, align 4
  %222 = sub nsw i32 %221, %220
  store i32 %222, i32* %17, align 4
  %223 = load %struct.nes_device*, %struct.nes_device** %10, align 8
  %224 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @NES_WQE_ALLOC, align 8
  %227 = add nsw i64 %225, %226
  %228 = load i32, i32* %18, align 4
  %229 = shl i32 %228, 24
  %230 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %231 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %229, %233
  %235 = call i32 @nes_write32(i64 %227, i32 %234)
  br label %214

236:                                              ; preds = %214
  %237 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %238 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %237, i32 0, i32 1
  %239 = load i64, i64* %8, align 8
  %240 = call i32 @spin_unlock_irqrestore(i32* %238, i64 %239)
  br label %241

241:                                              ; preds = %236, %38
  %242 = load i32, i32* %13, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %246 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %245, %struct.ib_recv_wr** %246, align 8
  br label %247

247:                                              ; preds = %244, %241
  %248 = load i32, i32* %13, align 4
  ret i32 %248
}

declare dso_local %struct.nes_vnic* @to_nesvnic(i32) #1

declare dso_local %struct.nes_qp* @to_nesqp(%struct.ib_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nes_debug(i32, i8*, i32) #1

declare dso_local i32 @nes_fill_init_qp_wqe(%struct.nes_hw_qp_wqe*, %struct.nes_qp*, i32) #1

declare dso_local i32 @set_wqe_64bit_value(i32, i64, i64) #1

declare dso_local i32 @set_wqe_32bit_value(i32, i64, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nes_write32(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
