; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_do_rc_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_do_rc_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i32, i64, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_9__, i64, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.qib_ctxtdata = type { i32 }
%struct.qib_ibport = type { i32, i32, i32, i32, i32 }
%struct.qib_swqe = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32* }

@QIB_S_TIMER = common dso_local global i32 0, align 4
@QIB_S_WAIT_RNR = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@RDMA_READ_RESPONSE_ONLY = common dso_local global i32 0, align 4
@RDMA_READ_RESPONSE_LAST = common dso_local global i32 0, align 4
@IB_WR_ATOMIC_CMP_AND_SWP = common dso_local global i64 0, align 8
@IB_WR_ATOMIC_FETCH_AND_ADD = common dso_local global i64 0, align 8
@ATOMIC_ACKNOWLEDGE = common dso_local global i32 0, align 4
@QIB_R_RDMAR_SEQ = common dso_local global i32 0, align 4
@QIB_R_RSP_SEND = common dso_local global i32 0, align 4
@QIB_S_WAIT_FENCE = common dso_local global i32 0, align 4
@QIB_S_WAIT_ACK = common dso_local global i32 0, align 4
@QIB_S_WAIT_RDMAR = common dso_local global i32 0, align 4
@SEND_LAST = common dso_local global i32 0, align 4
@IB_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@QIB_PSN_MASK = common dso_local global i32 0, align 4
@QIB_S_WAIT_SSN_CREDIT = common dso_local global i32 0, align 4
@qib_rc_rnr_retry = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ib_qib_rnr_table = common dso_local global i32* null, align 8
@QIB_AETH_CREDIT_SHIFT = common dso_local global i32 0, align 4
@QIB_AETH_CREDIT_MASK = common dso_local global i32 0, align 4
@IB_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_qp*, i32, i32, i32, i32, %struct.qib_ctxtdata*)* @do_rc_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_rc_ack(%struct.qib_qp* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.qib_ctxtdata* %5) #0 {
  %7 = alloca %struct.qib_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qib_ctxtdata*, align 8
  %13 = alloca %struct.qib_ibport*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.qib_swqe*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.qib_ctxtdata* %5, %struct.qib_ctxtdata** %12, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %21 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @QIB_S_TIMER, align 4
  %24 = load i32, i32* @QIB_S_WAIT_RNR, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %6
  %29 = load i32, i32* @QIB_S_TIMER, align 4
  %30 = load i32, i32* @QIB_S_WAIT_RNR, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %34 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %38 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %37, i32 0, i32 12
  %39 = call i32 @del_timer(%struct.TYPE_9__* %38)
  br label %40

40:                                               ; preds = %28, %6
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 29
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %17, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %17, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %50 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %51 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp* %49, i64 %52)
  store %struct.qib_swqe* %53, %struct.qib_swqe** %15, align 8
  %54 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %55 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %54, i32 0, i32 17
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %59 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %58, i32 0, i32 16
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.qib_ibport* @to_iport(i32 %57, i32 %60)
  store %struct.qib_ibport* %61, %struct.qib_ibport** %13, align 8
  br label %62

62:                                               ; preds = %270, %48
  %63 = load i32, i32* %17, align 4
  %64 = load %struct.qib_swqe*, %struct.qib_swqe** %15, align 8
  %65 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @qib_cmp24(i32 %63, i32 %66)
  store i32 %67, i32* %18, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %271

69:                                               ; preds = %62
  %70 = load %struct.qib_swqe*, %struct.qib_swqe** %15, align 8
  %71 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @RDMA_READ_RESPONSE_ONLY, align 4
  %79 = call i32 @OP(i32 %78)
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* %18, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 1, i32* %16, align 4
  br label %521

85:                                               ; preds = %81, %76, %69
  %86 = load %struct.qib_swqe*, %struct.qib_swqe** %15, align 8
  %87 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @RDMA_READ_RESPONSE_LAST, align 4
  %95 = call i32 @OP(i32 %94)
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %122, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %122, label %100

100:                                              ; preds = %97, %85
  %101 = load %struct.qib_swqe*, %struct.qib_swqe** %15, align 8
  %102 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %100
  %108 = load %struct.qib_swqe*, %struct.qib_swqe** %15, align 8
  %109 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %161

114:                                              ; preds = %107, %100
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @ATOMIC_ACKNOWLEDGE, align 4
  %117 = call i32 @OP(i32 %116)
  %118 = icmp ne i32 %115, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %18, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %161

122:                                              ; preds = %119, %114, %97, %92
  %123 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %124 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @QIB_R_RDMAR_SEQ, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %160, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* @QIB_R_RDMAR_SEQ, align 4
  %131 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %132 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %136 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %137 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  %140 = call i32 @qib_restart_rc(%struct.qib_qp* %135, i32 %139, i32 0)
  %141 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %142 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %141, i32 0, i32 14
  %143 = call i64 @list_empty(i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %129
  %146 = load i32, i32* @QIB_R_RSP_SEND, align 4
  %147 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %148 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %152 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %151, i32 0, i32 15
  %153 = call i32 @atomic_inc(i32* %152)
  %154 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %155 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %154, i32 0, i32 14
  %156 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %12, align 8
  %157 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %156, i32 0, i32 0
  %158 = call i32 @list_add_tail(i32* %155, i32* %157)
  br label %159

159:                                              ; preds = %145, %129
  br label %160

160:                                              ; preds = %159, %122
  br label %521

161:                                              ; preds = %119, %107
  %162 = load %struct.qib_swqe*, %struct.qib_swqe** %15, align 8
  %163 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %175, label %168

168:                                              ; preds = %161
  %169 = load %struct.qib_swqe*, %struct.qib_swqe** %15, align 8
  %170 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %168, %161
  %176 = load %struct.qib_swqe*, %struct.qib_swqe** %15, align 8
  %177 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %176, i32 0, i32 2
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  store i32* %181, i32** %19, align 8
  %182 = load i32, i32* %11, align 4
  %183 = load i32*, i32** %19, align 8
  store i32 %182, i32* %183, align 4
  br label %184

184:                                              ; preds = %175, %168
  %185 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %186 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %185, i32 0, i32 13
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %257

189:                                              ; preds = %184
  %190 = load %struct.qib_swqe*, %struct.qib_swqe** %15, align 8
  %191 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %210, label %196

196:                                              ; preds = %189
  %197 = load %struct.qib_swqe*, %struct.qib_swqe** %15, align 8
  %198 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %210, label %203

203:                                              ; preds = %196
  %204 = load %struct.qib_swqe*, %struct.qib_swqe** %15, align 8
  %205 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %257

210:                                              ; preds = %203, %196, %189
  %211 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %212 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %211, i32 0, i32 13
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, -1
  store i64 %214, i64* %212, align 8
  %215 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %216 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @QIB_S_WAIT_FENCE, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %237

221:                                              ; preds = %210
  %222 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %223 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %222, i32 0, i32 13
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %237, label %226

226:                                              ; preds = %221
  %227 = load i32, i32* @QIB_S_WAIT_FENCE, align 4
  %228 = load i32, i32* @QIB_S_WAIT_ACK, align 4
  %229 = or i32 %227, %228
  %230 = xor i32 %229, -1
  %231 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %232 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = and i32 %233, %230
  store i32 %234, i32* %232, align 8
  %235 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %236 = call i32 @qib_schedule_send(%struct.qib_qp* %235)
  br label %256

237:                                              ; preds = %221, %210
  %238 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %239 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @QIB_S_WAIT_RDMAR, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %255

244:                                              ; preds = %237
  %245 = load i32, i32* @QIB_S_WAIT_RDMAR, align 4
  %246 = load i32, i32* @QIB_S_WAIT_ACK, align 4
  %247 = or i32 %245, %246
  %248 = xor i32 %247, -1
  %249 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %250 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = and i32 %251, %248
  store i32 %252, i32* %250, align 8
  %253 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %254 = call i32 @qib_schedule_send(%struct.qib_qp* %253)
  br label %255

255:                                              ; preds = %244, %237
  br label %256

256:                                              ; preds = %255, %226
  br label %257

257:                                              ; preds = %256, %203, %184
  %258 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %259 = load %struct.qib_swqe*, %struct.qib_swqe** %15, align 8
  %260 = load %struct.qib_ibport*, %struct.qib_ibport** %13, align 8
  %261 = call %struct.qib_swqe* @do_rc_completion(%struct.qib_qp* %258, %struct.qib_swqe* %259, %struct.qib_ibport* %260)
  store %struct.qib_swqe* %261, %struct.qib_swqe** %15, align 8
  %262 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %263 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %266 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %265, i32 0, i32 4
  %267 = load i64, i64* %266, align 8
  %268 = icmp eq i64 %264, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %257
  br label %271

270:                                              ; preds = %257
  br label %62

271:                                              ; preds = %269, %62
  %272 = load i32, i32* %8, align 4
  %273 = ashr i32 %272, 29
  switch i32 %273, label %519 [
    i32 0, label %274
    i32 1, label %351
    i32 3, label %443
  ]

274:                                              ; preds = %271
  %275 = load %struct.qib_ibport*, %struct.qib_ibport** %13, align 8
  %276 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 4
  %279 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %280 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %283 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %282, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %281, %284
  br i1 %285, label %286, label %301

286:                                              ; preds = %274
  %287 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %288 = call i32 @start_timer(%struct.qib_qp* %287)
  %289 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %290 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* %9, align 4
  %293 = call i32 @qib_cmp24(i32 %291, i32 %292)
  %294 = icmp sle i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %286
  %296 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %297 = load i32, i32* %9, align 4
  %298 = add nsw i32 %297, 1
  %299 = call i32 @reset_psn(%struct.qib_qp* %296, i32 %298)
  br label %300

300:                                              ; preds = %295, %286
  br label %318

301:                                              ; preds = %274
  %302 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %303 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* %9, align 4
  %306 = call i32 @qib_cmp24(i32 %304, i32 %305)
  %307 = icmp sle i32 %306, 0
  br i1 %307, label %308, label %317

308:                                              ; preds = %301
  %309 = load i32, i32* @SEND_LAST, align 4
  %310 = call i32 @OP(i32 %309)
  %311 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %312 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %311, i32 0, i32 6
  store i32 %310, i32* %312, align 4
  %313 = load i32, i32* %9, align 4
  %314 = add nsw i32 %313, 1
  %315 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %316 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %315, i32 0, i32 5
  store i32 %314, i32* %316, align 8
  br label %317

317:                                              ; preds = %308, %301
  br label %318

318:                                              ; preds = %317, %300
  %319 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %320 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @QIB_S_WAIT_ACK, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %334

325:                                              ; preds = %318
  %326 = load i32, i32* @QIB_S_WAIT_ACK, align 4
  %327 = xor i32 %326, -1
  %328 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %329 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = and i32 %330, %327
  store i32 %331, i32* %329, align 8
  %332 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %333 = call i32 @qib_schedule_send(%struct.qib_qp* %332)
  br label %334

334:                                              ; preds = %325, %318
  %335 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %336 = load i32, i32* %8, align 4
  %337 = call i32 @qib_get_credit(%struct.qib_qp* %335, i32 %336)
  %338 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %339 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %338, i32 0, i32 8
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %342 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %341, i32 0, i32 7
  store i32 %340, i32* %342, align 8
  %343 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %344 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %343, i32 0, i32 10
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %347 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %346, i32 0, i32 11
  store i32 %345, i32* %347, align 4
  %348 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %349 = load i32, i32* %9, align 4
  %350 = call i32 @update_last_psn(%struct.qib_qp* %348, i32 %349)
  store i32 1, i32* %16, align 4
  br label %521

351:                                              ; preds = %271
  %352 = load %struct.qib_ibport*, %struct.qib_ibport** %13, align 8
  %353 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %353, align 4
  %356 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %357 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %360 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %359, i32 0, i32 4
  %361 = load i64, i64* %360, align 8
  %362 = icmp eq i64 %358, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %351
  br label %521

364:                                              ; preds = %351
  %365 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %366 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @QIB_S_WAIT_RNR, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %364
  br label %521

372:                                              ; preds = %364
  %373 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %374 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %373, i32 0, i32 7
  %375 = load i32, i32* %374, align 8
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %372
  %378 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  store i32 %378, i32* %14, align 4
  br label %490

379:                                              ; preds = %372
  %380 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %381 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %380, i32 0, i32 8
  %382 = load i32, i32* %381, align 4
  %383 = icmp slt i32 %382, 7
  br i1 %383, label %384, label %389

384:                                              ; preds = %379
  %385 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %386 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %385, i32 0, i32 7
  %387 = load i32, i32* %386, align 8
  %388 = add nsw i32 %387, -1
  store i32 %388, i32* %386, align 8
  br label %389

389:                                              ; preds = %384, %379
  %390 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %391 = load i32, i32* %9, align 4
  %392 = sub nsw i32 %391, 1
  %393 = call i32 @update_last_psn(%struct.qib_qp* %390, i32 %392)
  %394 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %395 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %394, i32 0, i32 5
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* %9, align 4
  %398 = sub nsw i32 %396, %397
  %399 = load i32, i32* @QIB_PSN_MASK, align 4
  %400 = and i32 %398, %399
  %401 = load %struct.qib_ibport*, %struct.qib_ibport** %13, align 8
  %402 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %403, %400
  store i32 %404, i32* %402, align 4
  %405 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %406 = load i32, i32* %9, align 4
  %407 = call i32 @reset_psn(%struct.qib_qp* %405, i32 %406)
  %408 = load i32, i32* @QIB_S_WAIT_SSN_CREDIT, align 4
  %409 = load i32, i32* @QIB_S_WAIT_ACK, align 4
  %410 = or i32 %408, %409
  %411 = xor i32 %410, -1
  %412 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %413 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = and i32 %414, %411
  store i32 %415, i32* %413, align 8
  %416 = load i32, i32* @QIB_S_WAIT_RNR, align 4
  %417 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %418 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = or i32 %419, %416
  store i32 %420, i32* %418, align 8
  %421 = load i32, i32* @qib_rc_rnr_retry, align 4
  %422 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %423 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %422, i32 0, i32 12
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 1
  store i32 %421, i32* %424, align 8
  %425 = load i64, i64* @jiffies, align 8
  %426 = load i32*, i32** @ib_qib_rnr_table, align 8
  %427 = load i32, i32* %8, align 4
  %428 = load i32, i32* @QIB_AETH_CREDIT_SHIFT, align 4
  %429 = ashr i32 %427, %428
  %430 = load i32, i32* @QIB_AETH_CREDIT_MASK, align 4
  %431 = and i32 %429, %430
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %426, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = call i64 @usecs_to_jiffies(i32 %434)
  %436 = add nsw i64 %425, %435
  %437 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %438 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %437, i32 0, i32 12
  %439 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %438, i32 0, i32 0
  store i64 %436, i64* %439, align 8
  %440 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %441 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %440, i32 0, i32 12
  %442 = call i32 @add_timer(%struct.TYPE_9__* %441)
  br label %521

443:                                              ; preds = %271
  %444 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %445 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %444, i32 0, i32 1
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %448 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %447, i32 0, i32 4
  %449 = load i64, i64* %448, align 8
  %450 = icmp eq i64 %446, %449
  br i1 %450, label %451, label %452

451:                                              ; preds = %443
  br label %521

452:                                              ; preds = %443
  %453 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %454 = load i32, i32* %9, align 4
  %455 = sub nsw i32 %454, 1
  %456 = call i32 @update_last_psn(%struct.qib_qp* %453, i32 %455)
  %457 = load i32, i32* %8, align 4
  %458 = load i32, i32* @QIB_AETH_CREDIT_SHIFT, align 4
  %459 = ashr i32 %457, %458
  %460 = load i32, i32* @QIB_AETH_CREDIT_MASK, align 4
  %461 = and i32 %459, %460
  switch i32 %461, label %507 [
    i32 0, label %462
    i32 1, label %472
    i32 2, label %478
    i32 3, label %484
  ]

462:                                              ; preds = %452
  %463 = load %struct.qib_ibport*, %struct.qib_ibport** %13, align 8
  %464 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %464, align 4
  %467 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %468 = load i32, i32* %9, align 4
  %469 = call i32 @qib_restart_rc(%struct.qib_qp* %467, i32 %468, i32 0)
  %470 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %471 = call i32 @qib_schedule_send(%struct.qib_qp* %470)
  br label %508

472:                                              ; preds = %452
  %473 = load i32, i32* @IB_WC_REM_INV_REQ_ERR, align 4
  store i32 %473, i32* %14, align 4
  %474 = load %struct.qib_ibport*, %struct.qib_ibport** %13, align 8
  %475 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %475, align 4
  br label %490

478:                                              ; preds = %452
  %479 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %479, i32* %14, align 4
  %480 = load %struct.qib_ibport*, %struct.qib_ibport** %13, align 8
  %481 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %481, align 4
  br label %490

484:                                              ; preds = %452
  %485 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  store i32 %485, i32* %14, align 4
  %486 = load %struct.qib_ibport*, %struct.qib_ibport** %13, align 8
  %487 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %486, i32 0, i32 1
  %488 = load i32, i32* %487, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %487, align 4
  br label %490

490:                                              ; preds = %484, %478, %472, %377
  %491 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %492 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %491, i32 0, i32 9
  %493 = load i64, i64* %492, align 8
  %494 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %495 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %494, i32 0, i32 1
  %496 = load i64, i64* %495, align 8
  %497 = icmp eq i64 %493, %496
  br i1 %497, label %498, label %506

498:                                              ; preds = %490
  %499 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %500 = load %struct.qib_swqe*, %struct.qib_swqe** %15, align 8
  %501 = load i32, i32* %14, align 4
  %502 = call i32 @qib_send_complete(%struct.qib_qp* %499, %struct.qib_swqe* %500, i32 %501)
  %503 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %504 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %505 = call i32 @qib_error_qp(%struct.qib_qp* %503, i32 %504)
  br label %506

506:                                              ; preds = %498, %490
  br label %508

507:                                              ; preds = %452
  br label %520

508:                                              ; preds = %506, %462
  %509 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %510 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %509, i32 0, i32 10
  %511 = load i32, i32* %510, align 8
  %512 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %513 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %512, i32 0, i32 11
  store i32 %511, i32* %513, align 4
  %514 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %515 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %514, i32 0, i32 8
  %516 = load i32, i32* %515, align 4
  %517 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %518 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %517, i32 0, i32 7
  store i32 %516, i32* %518, align 8
  br label %521

519:                                              ; preds = %271
  br label %520

520:                                              ; preds = %519, %507
  br label %521

521:                                              ; preds = %520, %508, %451, %389, %371, %363, %334, %160, %84
  %522 = load i32, i32* %16, align 4
  ret i32 %522
}

declare dso_local i32 @del_timer(%struct.TYPE_9__*) #1

declare dso_local %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp*, i64) #1

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local i32 @qib_cmp24(i32, i32) #1

declare dso_local i32 @OP(i32) #1

declare dso_local i32 @qib_restart_rc(%struct.qib_qp*, i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @qib_schedule_send(%struct.qib_qp*) #1

declare dso_local %struct.qib_swqe* @do_rc_completion(%struct.qib_qp*, %struct.qib_swqe*, %struct.qib_ibport*) #1

declare dso_local i32 @start_timer(%struct.qib_qp*) #1

declare dso_local i32 @reset_psn(%struct.qib_qp*, i32) #1

declare dso_local i32 @qib_get_credit(%struct.qib_qp*, i32) #1

declare dso_local i32 @update_last_psn(%struct.qib_qp*, i32) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @qib_send_complete(%struct.qib_qp*, %struct.qib_swqe*, i32) #1

declare dso_local i32 @qib_error_qp(%struct.qib_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
