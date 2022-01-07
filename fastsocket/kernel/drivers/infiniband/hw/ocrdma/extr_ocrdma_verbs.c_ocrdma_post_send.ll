; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_post_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { i64, i32, i32, %struct.ib_send_wr*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ocrdma_qp = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ocrdma_hdr_wqe = type { i32, i32, i8*, i64 }

@OCRDMA_QPS_RTS = common dso_local global i64 0, align 8
@OCRDMA_QPS_SQD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@OCRDMA_FLAG_SIG = common dso_local global i32 0, align 4
@OCRDMA_WQE_FLAGS_SHIFT = common dso_local global i32 0, align 4
@IB_SEND_FENCE = common dso_local global i32 0, align 4
@OCRDMA_FLAG_FENCE_L = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@OCRDMA_FLAG_SOLICIT = common dso_local global i32 0, align 4
@OCRDMA_FLAG_IMM = common dso_local global i32 0, align 4
@OCRDMA_SEND = common dso_local global i32 0, align 4
@OCRDMA_WQE_OPCODE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_FLAG_INV = common dso_local global i32 0, align 4
@OCRDMA_WRITE = common dso_local global i32 0, align 4
@OCRDMA_LKEY_INV = common dso_local global i32 0, align 4
@OCRDMA_WQE_STRIDE = common dso_local global i32 0, align 4
@OCRDMA_WQE_SIZE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_WQE_SIZE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ib_send_wr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocrdma_qp*, align 8
  %10 = alloca %struct.ocrdma_hdr_wqe*, align 8
  %11 = alloca i64, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %13 = call %struct.ocrdma_qp* @get_ocrdma_qp(%struct.ib_qp* %12)
  store %struct.ocrdma_qp* %13, %struct.ocrdma_qp** %9, align 8
  %14 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %15 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %14, i32 0, i32 1
  %16 = load i64, i64* %11, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %19 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OCRDMA_QPS_RTS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %3
  %24 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %25 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OCRDMA_QPS_SQD, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %31 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %30, i32 0, i32 1
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %35 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %34, %struct.ib_send_wr** %35, align 8
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %310

38:                                               ; preds = %23, %3
  br label %39

39:                                               ; preds = %271, %38
  %40 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %41 = icmp ne %struct.ib_send_wr* %40, null
  br i1 %41, label %42, label %304

42:                                               ; preds = %39
  %43 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %44 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %43, i32 0, i32 2
  %45 = call i64 @ocrdma_hwq_free_cnt(%struct.TYPE_8__* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %49 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %52 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %50, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47, %42
  %57 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %58 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %57, %struct.ib_send_wr** %58, align 8
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %304

61:                                               ; preds = %47
  %62 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %63 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %62, i32 0, i32 2
  %64 = call %struct.ocrdma_hdr_wqe* @ocrdma_hwq_head(%struct.TYPE_8__* %63)
  store %struct.ocrdma_hdr_wqe* %64, %struct.ocrdma_hdr_wqe** %10, align 8
  %65 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %66 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %68 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %61
  %74 = load i32, i32* @OCRDMA_FLAG_SIG, align 4
  %75 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %78 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %73, %61
  %82 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %83 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IB_SEND_FENCE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = load i32, i32* @OCRDMA_FLAG_FENCE_L, align 4
  %90 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %93 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %88, %81
  %97 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %98 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load i32, i32* @OCRDMA_FLAG_SOLICIT, align 4
  %105 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %108 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %103, %96
  %112 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %113 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  %114 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %115 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %235 [
    i32 129, label %117
    i32 130, label %132
    i32 128, label %144
    i32 131, label %169
    i32 132, label %184
    i32 133, label %196
    i32 134, label %204
    i32 135, label %209
  ]

117:                                              ; preds = %111
  %118 = load i32, i32* @OCRDMA_FLAG_IMM, align 4
  %119 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %122 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %126 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @ntohl(i32 %128)
  %130 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %131 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %111, %117
  %133 = load i32, i32* @OCRDMA_SEND, align 4
  %134 = load i32, i32* @OCRDMA_WQE_OPCODE_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %137 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %141 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %142 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %143 = call i32 @ocrdma_build_send(%struct.ocrdma_qp* %140, %struct.ocrdma_hdr_wqe* %141, %struct.ib_send_wr* %142)
  br label %238

144:                                              ; preds = %111
  %145 = load i32, i32* @OCRDMA_FLAG_INV, align 4
  %146 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %149 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load i32, i32* @OCRDMA_SEND, align 4
  %153 = load i32, i32* @OCRDMA_WQE_OPCODE_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %156 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %160 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %164 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %166 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %167 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %168 = call i32 @ocrdma_build_send(%struct.ocrdma_qp* %165, %struct.ocrdma_hdr_wqe* %166, %struct.ib_send_wr* %167)
  store i32 %168, i32* %8, align 4
  br label %238

169:                                              ; preds = %111
  %170 = load i32, i32* @OCRDMA_FLAG_IMM, align 4
  %171 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %172 = shl i32 %170, %171
  %173 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %174 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %178 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @ntohl(i32 %180)
  %182 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %183 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %182, i32 0, i32 2
  store i8* %181, i8** %183, align 8
  br label %184

184:                                              ; preds = %111, %169
  %185 = load i32, i32* @OCRDMA_WRITE, align 4
  %186 = load i32, i32* @OCRDMA_WQE_OPCODE_SHIFT, align 4
  %187 = shl i32 %185, %186
  %188 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %189 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %193 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %194 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %195 = call i32 @ocrdma_build_write(%struct.ocrdma_qp* %192, %struct.ocrdma_hdr_wqe* %193, %struct.ib_send_wr* %194)
  store i32 %195, i32* %8, align 4
  br label %238

196:                                              ; preds = %111
  %197 = load i32, i32* @OCRDMA_FLAG_INV, align 4
  %198 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %199 = shl i32 %197, %198
  %200 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %201 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %111, %196
  %205 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %206 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %207 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %208 = call i32 @ocrdma_build_read(%struct.ocrdma_qp* %205, %struct.ocrdma_hdr_wqe* %206, %struct.ib_send_wr* %207)
  br label %238

209:                                              ; preds = %111
  %210 = load i32, i32* @OCRDMA_LKEY_INV, align 4
  %211 = load i32, i32* @OCRDMA_WQE_OPCODE_SHIFT, align 4
  %212 = shl i32 %210, %211
  %213 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %214 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 8
  %217 = load i32, i32* @OCRDMA_WQE_STRIDE, align 4
  %218 = sext i32 %217 to i64
  %219 = udiv i64 24, %218
  %220 = load i32, i32* @OCRDMA_WQE_SIZE_SHIFT, align 4
  %221 = zext i32 %220 to i64
  %222 = shl i64 %219, %221
  %223 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %224 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = or i64 %226, %222
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %224, align 8
  %229 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %230 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %234 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  br label %238

235:                                              ; preds = %111
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %8, align 4
  br label %238

238:                                              ; preds = %235, %209, %204, %184, %144, %132
  %239 = load i32, i32* %8, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %243 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %242, %struct.ib_send_wr** %243, align 8
  br label %304

244:                                              ; preds = %238
  %245 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %246 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %244
  %252 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %253 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %252, i32 0, i32 3
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %253, align 8
  %255 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %256 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  store i32 1, i32* %260, align 4
  br label %271

261:                                              ; preds = %244
  %262 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %263 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %262, i32 0, i32 3
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %266 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 0
  store i32 0, i32* %270, align 4
  br label %271

271:                                              ; preds = %261, %251
  %272 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %273 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %276 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %275, i32 0, i32 3
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %276, align 8
  %278 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %279 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 1
  store i32 %274, i32* %283, align 4
  %284 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %285 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %286 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @OCRDMA_WQE_SIZE_SHIFT, align 4
  %289 = ashr i32 %287, %288
  %290 = load i32, i32* @OCRDMA_WQE_SIZE_MASK, align 4
  %291 = and i32 %289, %290
  %292 = load i32, i32* @OCRDMA_WQE_STRIDE, align 4
  %293 = mul nsw i32 %291, %292
  %294 = call i32 @ocrdma_cpu_to_le32(%struct.ocrdma_hdr_wqe* %284, i32 %293)
  %295 = call i32 (...) @wmb()
  %296 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %297 = call i32 @ocrdma_ring_sq_db(%struct.ocrdma_qp* %296)
  %298 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %299 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %298, i32 0, i32 2
  %300 = call i32 @ocrdma_hwq_inc_head(%struct.TYPE_8__* %299)
  %301 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %302 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %301, i32 0, i32 3
  %303 = load %struct.ib_send_wr*, %struct.ib_send_wr** %302, align 8
  store %struct.ib_send_wr* %303, %struct.ib_send_wr** %6, align 8
  br label %39

304:                                              ; preds = %241, %56, %39
  %305 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %306 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %305, i32 0, i32 1
  %307 = load i64, i64* %11, align 8
  %308 = call i32 @spin_unlock_irqrestore(i32* %306, i64 %307)
  %309 = load i32, i32* %8, align 4
  store i32 %309, i32* %4, align 4
  br label %310

310:                                              ; preds = %304, %29
  %311 = load i32, i32* %4, align 4
  ret i32 %311
}

declare dso_local %struct.ocrdma_qp* @get_ocrdma_qp(%struct.ib_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ocrdma_hwq_free_cnt(%struct.TYPE_8__*) #1

declare dso_local %struct.ocrdma_hdr_wqe* @ocrdma_hwq_head(%struct.TYPE_8__*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @ocrdma_build_send(%struct.ocrdma_qp*, %struct.ocrdma_hdr_wqe*, %struct.ib_send_wr*) #1

declare dso_local i32 @ocrdma_build_write(%struct.ocrdma_qp*, %struct.ocrdma_hdr_wqe*, %struct.ib_send_wr*) #1

declare dso_local i32 @ocrdma_build_read(%struct.ocrdma_qp*, %struct.ocrdma_hdr_wqe*, %struct.ib_send_wr*) #1

declare dso_local i32 @ocrdma_cpu_to_le32(%struct.ocrdma_hdr_wqe*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ocrdma_ring_sq_db(%struct.ocrdma_qp*) #1

declare dso_local i32 @ocrdma_hwq_inc_head(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
