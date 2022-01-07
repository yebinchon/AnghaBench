; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_qib_rc_send_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_qib_rc_send_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i64, i64, i64, i32, i64, i64, i64, i64, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qib_ib_header = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.qib_other_headers }
%struct.TYPE_5__ = type { %struct.qib_other_headers }
%struct.qib_other_headers = type { i32* }
%struct.qib_swqe = type { i32, %struct.TYPE_7__, %struct.qib_sge*, i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i32 }
%struct.qib_sge = type { i32 }
%struct.ib_wc = type { %struct.TYPE_8__*, i32, i32, i32, i32 }

@ib_qib_state_ops = common dso_local global i32* null, align 8
@QIB_PROCESS_OR_FLUSH_SEND = common dso_local global i32 0, align 4
@QIB_LRH_BTH = common dso_local global i32 0, align 4
@RDMA_READ_RESPONSE_FIRST = common dso_local global i32 0, align 4
@ATOMIC_ACKNOWLEDGE = common dso_local global i32 0, align 4
@IB_BTH_REQ_ACK = common dso_local global i32 0, align 4
@QIB_S_TIMER = common dso_local global i32 0, align 4
@QIB_S_WAIT_RNR = common dso_local global i32 0, align 4
@QIB_S_WAIT_PSN = common dso_local global i32 0, align 4
@QIB_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@QIB_S_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@ib_qib_wc_opcode = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_rc_send_complete(%struct.qib_qp* %0, %struct.qib_ib_header* %1) #0 {
  %3 = alloca %struct.qib_qp*, align 8
  %4 = alloca %struct.qib_ib_header*, align 8
  %5 = alloca %struct.qib_other_headers*, align 8
  %6 = alloca %struct.qib_swqe*, align 8
  %7 = alloca %struct.ib_wc, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qib_sge*, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %3, align 8
  store %struct.qib_ib_header* %1, %struct.qib_ib_header** %4, align 8
  %12 = load i32*, i32** @ib_qib_state_ops, align 8
  %13 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %14 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @QIB_PROCESS_OR_FLUSH_SEND, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %265

22:                                               ; preds = %2
  %23 = load %struct.qib_ib_header*, %struct.qib_ib_header** %4, align 8
  %24 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be16_to_cpu(i32 %27)
  %29 = and i32 %28, 3
  %30 = load i32, i32* @QIB_LRH_BTH, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load %struct.qib_ib_header*, %struct.qib_ib_header** %4, align 8
  %34 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store %struct.qib_other_headers* %35, %struct.qib_other_headers** %5, align 8
  br label %41

36:                                               ; preds = %22
  %37 = load %struct.qib_ib_header*, %struct.qib_ib_header** %4, align 8
  %38 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store %struct.qib_other_headers* %40, %struct.qib_other_headers** %5, align 8
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.qib_other_headers*, %struct.qib_other_headers** %5, align 8
  %43 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  %48 = ashr i32 %47, 24
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @RDMA_READ_RESPONSE_FIRST, align 4
  %51 = call i32 @OP(i32 %50)
  %52 = icmp sge i32 %49, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %41
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @ATOMIC_ACKNOWLEDGE, align 4
  %56 = call i32 @OP(i32 %55)
  %57 = icmp sle i32 %54, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %60 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @WARN_ON(i32 %64)
  %66 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %67 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 4
  br label %265

70:                                               ; preds = %53, %41
  %71 = load %struct.qib_other_headers*, %struct.qib_other_headers** %5, align 8
  %72 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be32_to_cpu(i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @reset_sending_psn(%struct.qib_qp* %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @IB_BTH_REQ_ACK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %116

84:                                               ; preds = %70
  %85 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %86 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %89 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %84
  %93 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %94 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @QIB_S_TIMER, align 4
  %97 = load i32, i32* @QIB_S_WAIT_RNR, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @QIB_S_WAIT_PSN, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %95, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %116, label %103

103:                                              ; preds = %92
  %104 = load i32*, i32** @ib_qib_state_ops, align 8
  %105 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %106 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @QIB_PROCESS_RECV_OK, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %115 = call i32 @start_timer(%struct.qib_qp* %114)
  br label %116

116:                                              ; preds = %113, %103, %92, %84, %70
  br label %117

117:                                              ; preds = %228, %116
  %118 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %119 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %122 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %120, %123
  br i1 %124, label %125, label %229

125:                                              ; preds = %117
  %126 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %127 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %128 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = call %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp* %126, i64 %129)
  store %struct.qib_swqe* %130, %struct.qib_swqe** %6, align 8
  %131 = load %struct.qib_swqe*, %struct.qib_swqe** %6, align 8
  %132 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %135 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %134, i32 0, i32 8
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @qib_cmp24(i64 %133, i64 %136)
  %138 = icmp sge i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %125
  %140 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %141 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %140, i32 0, i32 8
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %144 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %143, i32 0, i32 7
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @qib_cmp24(i64 %142, i64 %145)
  %147 = icmp sle i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  br label %229

149:                                              ; preds = %139, %125
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %168, %149
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.qib_swqe*, %struct.qib_swqe** %6, align 8
  %153 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ult i32 %151, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %150
  %158 = load %struct.qib_swqe*, %struct.qib_swqe** %6, align 8
  %159 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %158, i32 0, i32 2
  %160 = load %struct.qib_sge*, %struct.qib_sge** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %160, i64 %162
  store %struct.qib_sge* %163, %struct.qib_sge** %11, align 8
  %164 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %165 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @qib_put_mr(i32 %166)
  br label %168

168:                                              ; preds = %157
  %169 = load i32, i32* %8, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %150

171:                                              ; preds = %150
  %172 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %173 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @QIB_S_SIGNAL_REQ_WR, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %171
  %179 = load %struct.qib_swqe*, %struct.qib_swqe** %6, align 8
  %180 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %216

186:                                              ; preds = %178, %171
  %187 = call i32 @memset(%struct.ib_wc* %7, i32 0, i32 24)
  %188 = load %struct.qib_swqe*, %struct.qib_swqe** %6, align 8
  %189 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 4
  store i32 %191, i32* %192, align 4
  %193 = load i32, i32* @IB_WC_SUCCESS, align 4
  %194 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 3
  store i32 %193, i32* %194, align 8
  %195 = load i32*, i32** @ib_qib_wc_opcode, align 8
  %196 = load %struct.qib_swqe*, %struct.qib_swqe** %6, align 8
  %197 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 2
  store i32 %201, i32* %202, align 4
  %203 = load %struct.qib_swqe*, %struct.qib_swqe** %6, align 8
  %204 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 1
  store i32 %205, i32* %206, align 8
  %207 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %208 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %207, i32 0, i32 9
  %209 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 0
  store %struct.TYPE_8__* %208, %struct.TYPE_8__** %209, align 8
  %210 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %211 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %210, i32 0, i32 9
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @to_icq(i32 %213)
  %215 = call i32 @qib_cq_enter(i32 %214, %struct.ib_wc* %7, i32 0)
  br label %216

216:                                              ; preds = %186, %178
  %217 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %218 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %218, align 8
  %221 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %222 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = icmp sge i64 %220, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %216
  %226 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %227 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %226, i32 0, i32 4
  store i64 0, i64* %227, align 8
  br label %228

228:                                              ; preds = %225, %216
  br label %117

229:                                              ; preds = %148, %117
  %230 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %231 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @QIB_S_WAIT_PSN, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %265

236:                                              ; preds = %229
  %237 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %238 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %237, i32 0, i32 8
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %241 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %240, i32 0, i32 7
  %242 = load i64, i64* %241, align 8
  %243 = call i64 @qib_cmp24(i64 %239, i64 %242)
  %244 = icmp sgt i64 %243, 0
  br i1 %244, label %245, label %265

245:                                              ; preds = %236
  %246 = load i32, i32* @QIB_S_WAIT_PSN, align 4
  %247 = xor i32 %246, -1
  %248 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %249 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = and i32 %250, %247
  store i32 %251, i32* %249, align 8
  %252 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %253 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %252, i32 0, i32 6
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %256 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %255, i32 0, i32 8
  store i64 %254, i64* %256, align 8
  %257 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %258 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %257, i32 0, i32 6
  %259 = load i64, i64* %258, align 8
  %260 = sub nsw i64 %259, 1
  %261 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %262 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %261, i32 0, i32 7
  store i64 %260, i64* %262, align 8
  %263 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %264 = call i32 @qib_schedule_send(%struct.qib_qp* %263)
  br label %265

265:                                              ; preds = %21, %58, %245, %236, %229
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @OP(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @reset_sending_psn(%struct.qib_qp*, i32) #1

declare dso_local i32 @start_timer(%struct.qib_qp*) #1

declare dso_local %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp*, i64) #1

declare dso_local i64 @qib_cmp24(i64, i64) #1

declare dso_local i32 @qib_put_mr(i32) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i32 @qib_cq_enter(i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @to_icq(i32) #1

declare dso_local i32 @qib_schedule_send(%struct.qib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
