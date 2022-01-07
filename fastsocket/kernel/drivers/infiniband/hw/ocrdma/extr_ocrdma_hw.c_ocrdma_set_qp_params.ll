; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_qp_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_qp_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i64, i64, i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32*, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ocrdma_modify_qp = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32 }

@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_PKEY_INDEX_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_PKEY_VALID = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_QKEY_VALID = common dso_local global i32 0, align 4
@IB_QP_AV = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_QP_EN_SQD_ASYNC_NOTIFY = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_FLAGS_SQD_ASYNC = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_DST_QPN_VALID = common dso_local global i32 0, align 4
@IB_QP_DEST_QPN = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_DEST_QPN_MASK = common dso_local global i32 0, align 4
@IB_QP_PATH_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_PATH_MTU_SHIFT = common dso_local global i64 0, align 8
@OCRDMA_QP_PARAMS_PATH_MTU_MASK = common dso_local global i64 0, align 8
@OCRDMA_QP_PARA_PMTU_VALID = common dso_local global i32 0, align 4
@IB_QP_TIMEOUT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_ACK_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_ACK_TO_VALID = common dso_local global i32 0, align 4
@IB_QP_RETRY_CNT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RETRY_CNT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RETRY_CNT_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_RETRY_CNT_VALID = common dso_local global i32 0, align 4
@IB_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RNR_NAK_TIMER_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RNR_NAK_TIMER_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_RNT_VALID = common dso_local global i32 0, align 4
@IB_QP_RNR_RETRY = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RNR_RETRY_CNT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RNR_RETRY_CNT_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_RRC_VALID = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_SQPSN_VALID = common dso_local global i32 0, align 4
@IB_QP_RQ_PSN = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_RQPSN_VALID = common dso_local global i32 0, align 4
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_MAX_ORD_VALID = common dso_local global i32 0, align 4
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_MAX_IRD_VALID = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_MAX_ORD_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_MAX_IRD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*, %struct.ocrdma_modify_qp*, %struct.ib_qp_attr*, i32, i32)* @ocrdma_set_qp_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_set_qp_params(%struct.ocrdma_qp* %0, %struct.ocrdma_modify_qp* %1, %struct.ib_qp_attr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ocrdma_qp*, align 8
  %7 = alloca %struct.ocrdma_modify_qp*, align 8
  %8 = alloca %struct.ib_qp_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %6, align 8
  store %struct.ocrdma_modify_qp* %1, %struct.ocrdma_modify_qp** %7, align 8
  store %struct.ib_qp_attr* %2, %struct.ib_qp_attr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %15 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %14, i32 0, i32 3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %12, align 8
  %20 = load %struct.net_device*, %struct.net_device** %12, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iboe_get_mtu(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %5
  %29 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %30 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @OCRDMA_QP_PARAMS_PKEY_INDEX_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %35 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @OCRDMA_QP_PARA_PKEY_VALID, align 4
  %40 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %41 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %28, %5
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @IB_QP_QKEY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %51 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %54 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %56 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %59 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 9
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @OCRDMA_QP_PARA_QKEY_VALID, align 4
  %62 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %63 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %49, %44
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @IB_QP_AV, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %73 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %74 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %75 = call i32 @ocrdma_set_av_params(%struct.ocrdma_qp* %72, %struct.ocrdma_modify_qp* %73, %struct.ib_qp_attr* %74)
  br label %152

76:                                               ; preds = %66
  %77 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %78 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IB_QPT_GSI, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %84 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IB_QPT_UD, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %151

88:                                               ; preds = %82, %76
  %89 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %90 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %89, i32 0, i32 3
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %98 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %97, i32 0, i32 3
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 8
  %106 = or i32 %96, %105
  %107 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %108 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %107, i32 0, i32 3
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 16
  %116 = or i32 %106, %115
  %117 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %118 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %117, i32 0, i32 3
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 24
  %126 = or i32 %116, %125
  %127 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %128 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 4
  %130 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %131 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %130, i32 0, i32 3
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %139 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %138, i32 0, i32 3
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 5
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 8
  %147 = or i32 %137, %146
  %148 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %149 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  store i32 %147, i32* %150, align 4
  br label %151

151:                                              ; preds = %88, %82
  br label %152

152:                                              ; preds = %151, %71
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @IB_QP_EN_SQD_ASYNC_NOTIFY, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %174

157:                                              ; preds = %152
  %158 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %159 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %158, i32 0, i32 11
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %157
  %163 = load i32, i32* @OCRDMA_QP_PARAMS_FLAGS_SQD_ASYNC, align 4
  %164 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %165 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %163
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* @OCRDMA_QP_PARA_DST_QPN_VALID, align 4
  %170 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %171 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %162, %157, %152
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @IB_QP_DEST_QPN, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %195

179:                                              ; preds = %174
  %180 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %181 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @OCRDMA_QP_PARAMS_DEST_QPN_MASK, align 4
  %184 = and i32 %182, %183
  %185 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %186 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %184
  store i32 %189, i32* %187, align 4
  %190 = load i32, i32* @OCRDMA_QP_PARA_DST_QPN_VALID, align 4
  %191 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %192 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %179, %174
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %232

200:                                              ; preds = %195
  %201 = load i32, i32* %13, align 4
  %202 = call i64 @ib_mtu_enum_to_int(i32 %201)
  %203 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %204 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i64 @ib_mtu_enum_to_int(i32 %205)
  %207 = icmp slt i64 %202, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %200
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %11, align 4
  br label %440

211:                                              ; preds = %200
  %212 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %213 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i64 @ib_mtu_enum_to_int(i32 %214)
  %216 = load i64, i64* @OCRDMA_QP_PARAMS_PATH_MTU_SHIFT, align 8
  %217 = shl i64 %215, %216
  %218 = load i64, i64* @OCRDMA_QP_PARAMS_PATH_MTU_MASK, align 8
  %219 = and i64 %217, %218
  %220 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %221 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = or i64 %224, %219
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %222, align 4
  %227 = load i32, i32* @OCRDMA_QP_PARA_PMTU_VALID, align 4
  %228 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %229 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %211, %195
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* @IB_QP_TIMEOUT, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %253

237:                                              ; preds = %232
  %238 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %239 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @OCRDMA_QP_PARAMS_ACK_TIMEOUT_SHIFT, align 4
  %242 = shl i32 %240, %241
  %243 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %244 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %242
  store i32 %247, i32* %245, align 4
  %248 = load i32, i32* @OCRDMA_QP_PARA_ACK_TO_VALID, align 4
  %249 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %250 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %237, %232
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* @IB_QP_RETRY_CNT, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %276

258:                                              ; preds = %253
  %259 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %260 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @OCRDMA_QP_PARAMS_RETRY_CNT_SHIFT, align 4
  %263 = shl i32 %261, %262
  %264 = load i32, i32* @OCRDMA_QP_PARAMS_RETRY_CNT_MASK, align 4
  %265 = and i32 %263, %264
  %266 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %267 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %265
  store i32 %270, i32* %268, align 4
  %271 = load i32, i32* @OCRDMA_QP_PARA_RETRY_CNT_VALID, align 4
  %272 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %273 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %258, %253
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %299

281:                                              ; preds = %276
  %282 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %283 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @OCRDMA_QP_PARAMS_RNR_NAK_TIMER_SHIFT, align 4
  %286 = shl i32 %284, %285
  %287 = load i32, i32* @OCRDMA_QP_PARAMS_RNR_NAK_TIMER_MASK, align 4
  %288 = and i32 %286, %287
  %289 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %290 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 4
  %293 = or i32 %292, %288
  store i32 %293, i32* %291, align 4
  %294 = load i32, i32* @OCRDMA_QP_PARA_RNT_VALID, align 4
  %295 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %296 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 4
  br label %299

299:                                              ; preds = %281, %276
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* @IB_QP_RNR_RETRY, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %322

304:                                              ; preds = %299
  %305 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %306 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %305, i32 0, i32 6
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @OCRDMA_QP_PARAMS_RNR_RETRY_CNT_SHIFT, align 4
  %309 = shl i32 %307, %308
  %310 = load i32, i32* @OCRDMA_QP_PARAMS_RNR_RETRY_CNT_MASK, align 4
  %311 = and i32 %309, %310
  %312 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %313 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = or i32 %315, %311
  store i32 %316, i32* %314, align 4
  %317 = load i32, i32* @OCRDMA_QP_PARA_RRC_VALID, align 4
  %318 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %319 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 4
  br label %322

322:                                              ; preds = %304, %299
  %323 = load i32, i32* %9, align 4
  %324 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %342

327:                                              ; preds = %322
  %328 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %329 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %328, i32 0, i32 7
  %330 = load i32, i32* %329, align 4
  %331 = and i32 %330, 16777215
  %332 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %333 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, %331
  store i32 %336, i32* %334, align 4
  %337 = load i32, i32* @OCRDMA_QP_PARA_SQPSN_VALID, align 4
  %338 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %339 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = or i32 %340, %337
  store i32 %341, i32* %339, align 4
  br label %342

342:                                              ; preds = %327, %322
  %343 = load i32, i32* %9, align 4
  %344 = load i32, i32* @IB_QP_RQ_PSN, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %362

347:                                              ; preds = %342
  %348 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %349 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %348, i32 0, i32 8
  %350 = load i32, i32* %349, align 8
  %351 = and i32 %350, 16777215
  %352 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %353 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 6
  %355 = load i32, i32* %354, align 4
  %356 = or i32 %355, %351
  store i32 %356, i32* %354, align 4
  %357 = load i32, i32* @OCRDMA_QP_PARA_RQPSN_VALID, align 4
  %358 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %359 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = or i32 %360, %357
  store i32 %361, i32* %359, align 4
  br label %362

362:                                              ; preds = %347, %342
  %363 = load i32, i32* %9, align 4
  %364 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %392

367:                                              ; preds = %362
  %368 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %369 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %368, i32 0, i32 9
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %372 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %371, i32 0, i32 3
  %373 = load %struct.TYPE_7__*, %struct.TYPE_7__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = icmp sgt i64 %370, %376
  br i1 %377, label %378, label %381

378:                                              ; preds = %367
  %379 = load i32, i32* @EINVAL, align 4
  %380 = sub nsw i32 0, %379
  store i32 %380, i32* %11, align 4
  br label %440

381:                                              ; preds = %367
  %382 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %383 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %382, i32 0, i32 9
  %384 = load i64, i64* %383, align 8
  %385 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %386 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %385, i32 0, i32 1
  store i64 %384, i64* %386, align 8
  %387 = load i32, i32* @OCRDMA_QP_PARA_MAX_ORD_VALID, align 4
  %388 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %389 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = or i32 %390, %387
  store i32 %391, i32* %389, align 4
  br label %392

392:                                              ; preds = %381, %362
  %393 = load i32, i32* %9, align 4
  %394 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %422

397:                                              ; preds = %392
  %398 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %399 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %398, i32 0, i32 10
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %402 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %401, i32 0, i32 3
  %403 = load %struct.TYPE_7__*, %struct.TYPE_7__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = icmp sgt i64 %400, %406
  br i1 %407, label %408, label %411

408:                                              ; preds = %397
  %409 = load i32, i32* @EINVAL, align 4
  %410 = sub nsw i32 0, %409
  store i32 %410, i32* %11, align 4
  br label %440

411:                                              ; preds = %397
  %412 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %413 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %412, i32 0, i32 10
  %414 = load i64, i64* %413, align 8
  %415 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %416 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %415, i32 0, i32 2
  store i64 %414, i64* %416, align 8
  %417 = load i32, i32* @OCRDMA_QP_PARA_MAX_IRD_VALID, align 4
  %418 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %419 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = or i32 %420, %417
  store i32 %421, i32* %419, align 4
  br label %422

422:                                              ; preds = %411, %392
  %423 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %424 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %423, i32 0, i32 1
  %425 = load i64, i64* %424, align 8
  %426 = load i32, i32* @OCRDMA_QP_PARAMS_MAX_ORD_SHIFT, align 4
  %427 = zext i32 %426 to i64
  %428 = shl i64 %425, %427
  %429 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %430 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %429, i32 0, i32 2
  %431 = load i64, i64* %430, align 8
  %432 = load i32, i32* @OCRDMA_QP_PARAMS_MAX_IRD_MASK, align 4
  %433 = sext i32 %432 to i64
  %434 = and i64 %431, %433
  %435 = or i64 %428, %434
  %436 = trunc i64 %435 to i32
  %437 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %438 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %438, i32 0, i32 7
  store i32 %436, i32* %439, align 4
  br label %440

440:                                              ; preds = %422, %408, %378, %208
  %441 = load i32, i32* %11, align 4
  ret i32 %441
}

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i32 @ocrdma_set_av_params(%struct.ocrdma_qp*, %struct.ocrdma_modify_qp*, %struct.ib_qp_attr*) #1

declare dso_local i64 @ib_mtu_enum_to_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
