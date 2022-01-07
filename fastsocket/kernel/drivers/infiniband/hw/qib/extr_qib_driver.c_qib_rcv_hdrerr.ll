; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_driver.c_qib_rcv_hdrerr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_driver.c_qib_rcv_hdrerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32 }
%struct.qib_pportdata = type { i32, i32, %struct.qib_ibport }
%struct.qib_ibport = type { i32, i32 }
%struct.qib_message_header = type { i32 }
%struct.qib_ib_header = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.qib_other_headers }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.qib_other_headers }
%struct.TYPE_5__ = type { i64, i32 }
%struct.qib_other_headers = type { i32* }
%struct.qib_qp = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@QLOGIC_IB_RHF_H_ICRCERR = common dso_local global i32 0, align 4
@QLOGIC_IB_RHF_H_VCRCERR = common dso_local global i32 0, align 4
@QLOGIC_IB_RHF_H_TIDERR = common dso_local global i32 0, align 4
@QIB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@QIB_LRH_BTH = common dso_local global i32 0, align 4
@QIB_LRH_GRH = common dso_local global i32 0, align 4
@IB_GRH_NEXT_HDR = common dso_local global i64 0, align 8
@IB_GRH_VERSION_SHIFT = common dso_local global i32 0, align 4
@IB_GRH_VERSION = common dso_local global i32 0, align 4
@QIB_QPN_MASK = common dso_local global i32 0, align 4
@QIB_MULTICAST_QPN = common dso_local global i32 0, align 4
@ib_qib_state_ops = common dso_local global i32* null, align 8
@QIB_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@IB_OPCODE_RC_RDMA_READ_RESPONSE_FIRST = common dso_local global i32 0, align 4
@IB_NAK_PSN_ERROR = common dso_local global i32 0, align 4
@QIB_R_RSP_NAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ctxtdata*, %struct.qib_pportdata*, i32, i32, i32, i32, i32*, %struct.qib_message_header*)* @qib_rcv_hdrerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_rcv_hdrerr(%struct.qib_ctxtdata* %0, %struct.qib_pportdata* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, %struct.qib_message_header* %7) #0 {
  %9 = alloca %struct.qib_ctxtdata*, align 8
  %10 = alloca %struct.qib_pportdata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.qib_message_header*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.qib_ib_header*, align 8
  %19 = alloca %struct.qib_other_headers*, align 8
  %20 = alloca %struct.qib_ibport*, align 8
  %21 = alloca %struct.qib_qp*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %9, align 8
  store %struct.qib_pportdata* %1, %struct.qib_pportdata** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store %struct.qib_message_header* %7, %struct.qib_message_header** %16, align 8
  store i32 0, i32* %17, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @QLOGIC_IB_RHF_H_ICRCERR, align 4
  %33 = load i32, i32* @QLOGIC_IB_RHF_H_VCRCERR, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %8
  store i32 1, i32* %17, align 4
  br label %274

38:                                               ; preds = %8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @QLOGIC_IB_RHF_H_TIDERR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %273

42:                                               ; preds = %38
  %43 = load %struct.qib_message_header*, %struct.qib_message_header** %16, align 8
  %44 = bitcast %struct.qib_message_header* %43 to %struct.qib_ib_header*
  store %struct.qib_ib_header* %44, %struct.qib_ib_header** %18, align 8
  store %struct.qib_other_headers* null, %struct.qib_other_headers** %19, align 8
  %45 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %46 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %45, i32 0, i32 2
  store %struct.qib_ibport* %46, %struct.qib_ibport** %20, align 8
  store %struct.qib_qp* null, %struct.qib_qp** %21, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = call i32 @qib_hdrget_length_in_bytes(i32* %47)
  store i32 %48, i32* %22, align 4
  %49 = load %struct.qib_ib_header*, %struct.qib_ib_header** %18, align 8
  %50 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be16_to_cpu(i32 %53)
  store i32 %54, i32* %23, align 4
  %55 = load %struct.qib_ib_header*, %struct.qib_ib_header** %18, align 8
  %56 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be16_to_cpu(i32 %59)
  %61 = and i32 %60, 3
  store i32 %61, i32* %24, align 4
  %62 = load i32, i32* %22, align 4
  %63 = icmp slt i32 %62, 24
  br i1 %63, label %64, label %65

64:                                               ; preds = %42
  br label %275

65:                                               ; preds = %42
  %66 = load i32, i32* %23, align 4
  %67 = load i32, i32* @QIB_MULTICAST_LID_BASE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %71 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 1, %72
  %74 = sub nsw i32 %73, 1
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %23, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %23, align 4
  %78 = load i32, i32* %23, align 4
  %79 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %80 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %78, %81
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %69
  br label %275

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87, %65
  %89 = load i32, i32* %24, align 4
  %90 = load i32, i32* @QIB_LRH_BTH, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load %struct.qib_ib_header*, %struct.qib_ib_header** %18, align 8
  %94 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  store %struct.qib_other_headers* %95, %struct.qib_other_headers** %19, align 8
  br label %131

96:                                               ; preds = %88
  %97 = load i32, i32* %24, align 4
  %98 = load i32, i32* @QIB_LRH_GRH, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %129

100:                                              ; preds = %96
  %101 = load %struct.qib_ib_header*, %struct.qib_ib_header** %18, align 8
  %102 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store %struct.qib_other_headers* %104, %struct.qib_other_headers** %19, align 8
  %105 = load %struct.qib_ib_header*, %struct.qib_ib_header** %18, align 8
  %106 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @IB_GRH_NEXT_HDR, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %275

114:                                              ; preds = %100
  %115 = load %struct.qib_ib_header*, %struct.qib_ib_header** %18, align 8
  %116 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @be32_to_cpu(i32 %120)
  store i32 %121, i32* %29, align 4
  %122 = load i32, i32* %29, align 4
  %123 = load i32, i32* @IB_GRH_VERSION_SHIFT, align 4
  %124 = ashr i32 %122, %123
  %125 = load i32, i32* @IB_GRH_VERSION, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  br label %275

128:                                              ; preds = %114
  br label %130

129:                                              ; preds = %96
  br label %275

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130, %92
  %132 = load %struct.qib_other_headers*, %struct.qib_other_headers** %19, align 8
  %133 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @be32_to_cpu(i32 %136)
  store i32 %137, i32* %26, align 4
  %138 = load i32, i32* %26, align 4
  %139 = ashr i32 %138, 24
  store i32 %139, i32* %26, align 4
  %140 = load %struct.qib_other_headers*, %struct.qib_other_headers** %19, align 8
  %141 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @be32_to_cpu(i32 %144)
  store i32 %145, i32* %27, align 4
  %146 = load %struct.qib_other_headers*, %struct.qib_other_headers** %19, align 8
  %147 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @be32_to_cpu(i32 %150)
  %152 = load i32, i32* @QIB_QPN_MASK, align 4
  %153 = and i32 %151, %152
  store i32 %153, i32* %25, align 4
  %154 = load i32, i32* %25, align 4
  %155 = load i32, i32* @QIB_MULTICAST_QPN, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %272

157:                                              ; preds = %131
  %158 = load %struct.qib_ibport*, %struct.qib_ibport** %20, align 8
  %159 = load i32, i32* %25, align 4
  %160 = call %struct.qib_qp* @qib_lookup_qpn(%struct.qib_ibport* %158, i32 %159)
  store %struct.qib_qp* %160, %struct.qib_qp** %21, align 8
  %161 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %162 = icmp ne %struct.qib_qp* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %157
  br label %275

164:                                              ; preds = %157
  %165 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %166 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %165, i32 0, i32 3
  %167 = call i32 @spin_lock(i32* %166)
  %168 = load i32*, i32** @ib_qib_state_ops, align 8
  %169 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %170 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @QIB_PROCESS_RECV_OK, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %164
  %178 = load %struct.qib_ibport*, %struct.qib_ibport** %20, align 8
  %179 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  br label %259

182:                                              ; preds = %164
  %183 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %184 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %183, i32 0, i32 9
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  switch i32 %186, label %257 [
    i32 131, label %187
    i32 130, label %256
    i32 132, label %256
    i32 128, label %256
    i32 129, label %256
  ]

187:                                              ; preds = %182
  %188 = load %struct.qib_ibport*, %struct.qib_ibport** %20, align 8
  %189 = load %struct.qib_ib_header*, %struct.qib_ib_header** %18, align 8
  %190 = load i32, i32* %24, align 4
  %191 = load i32, i32* @QIB_LRH_GRH, align 4
  %192 = icmp eq i32 %190, %191
  %193 = zext i1 %192 to i32
  %194 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %195 = load %struct.qib_other_headers*, %struct.qib_other_headers** %19, align 8
  %196 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @be32_to_cpu(i32 %199)
  %201 = call i32 @qib_ruc_check_hdr(%struct.qib_ibport* %188, %struct.qib_ib_header* %189, i32 %193, %struct.qib_qp* %194, i32 %200)
  store i32 %201, i32* %30, align 4
  %202 = load i32, i32* %30, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %187
  br label %259

205:                                              ; preds = %187
  %206 = load i32, i32* %26, align 4
  %207 = load i32, i32* @IB_OPCODE_RC_RDMA_READ_RESPONSE_FIRST, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %255

209:                                              ; preds = %205
  %210 = load i32, i32* %27, align 4
  %211 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %212 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @qib_cmp24(i32 %210, i32 %213)
  store i32 %214, i32* %28, align 4
  %215 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %216 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %254, label %219

219:                                              ; preds = %209
  %220 = load i32, i32* %28, align 4
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %254

222:                                              ; preds = %219
  %223 = load %struct.qib_ibport*, %struct.qib_ibport** %20, align 8
  %224 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 4
  %227 = load i32, i32* @IB_NAK_PSN_ERROR, align 4
  %228 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %229 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %228, i32 0, i32 8
  store i32 %227, i32* %229, align 4
  %230 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %231 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %234 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %233, i32 0, i32 7
  store i32 %232, i32* %234, align 8
  %235 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %236 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %235, i32 0, i32 4
  %237 = call i32 @list_empty(i32* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %253

239:                                              ; preds = %222
  %240 = load i32, i32* @QIB_R_RSP_NAK, align 4
  %241 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %242 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 8
  %245 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %246 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %245, i32 0, i32 2
  %247 = call i32 @atomic_inc(i32* %246)
  %248 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %249 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %248, i32 0, i32 4
  %250 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %9, align 8
  %251 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %250, i32 0, i32 0
  %252 = call i32 @list_add_tail(i32* %249, i32* %251)
  br label %253

253:                                              ; preds = %239, %222
  br label %254

254:                                              ; preds = %253, %219, %209
  br label %255

255:                                              ; preds = %254, %205
  br label %258

256:                                              ; preds = %182, %182, %182, %182
  br label %257

257:                                              ; preds = %182, %256
  br label %258

258:                                              ; preds = %257, %255
  br label %259

259:                                              ; preds = %258, %204, %177
  %260 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %261 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %260, i32 0, i32 3
  %262 = call i32 @spin_unlock(i32* %261)
  %263 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %264 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %263, i32 0, i32 2
  %265 = call i64 @atomic_dec_and_test(i32* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %259
  %268 = load %struct.qib_qp*, %struct.qib_qp** %21, align 8
  %269 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %268, i32 0, i32 1
  %270 = call i32 @wake_up(i32* %269)
  br label %271

271:                                              ; preds = %267, %259
  br label %272

272:                                              ; preds = %271, %131
  br label %273

273:                                              ; preds = %272, %38
  br label %274

274:                                              ; preds = %273, %37
  br label %275

275:                                              ; preds = %274, %163, %129, %127, %113, %86, %64
  %276 = load i32, i32* %17, align 4
  ret i32 %276
}

declare dso_local i32 @qib_hdrget_length_in_bytes(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.qib_qp* @qib_lookup_qpn(%struct.qib_ibport*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @qib_ruc_check_hdr(%struct.qib_ibport*, %struct.qib_ib_header*, i32, %struct.qib_qp*, i32) #1

declare dso_local i32 @qib_cmp24(i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
