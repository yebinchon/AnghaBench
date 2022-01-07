; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_ruc_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_ruc_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i32, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, %struct.TYPE_19__, %struct.TYPE_22__, %struct.TYPE_31__, i32, i32, i32, %struct.TYPE_20__, %struct.TYPE_28__, i32 }
%struct.TYPE_19__ = type { i64, i32, i32 (%struct.ib_event*, i32)*, i32, i32 }
%struct.ib_event = type opaque
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.qib_sge, %struct.qib_sge* }
%struct.qib_sge = type { i64, i64, i64, i64, %struct.TYPE_21__*, i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_30__**, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_28__ = type { i32, %struct.qib_sge*, %struct.qib_sge }
%struct.qib_ibport = type { i32, i32, i32 }
%struct.qib_swqe = type { i32, %struct.TYPE_17__, %struct.qib_sge* }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_27__, %struct.TYPE_24__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i32, i64, i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.ib_wc = type { i32, i32, i8*, i32, i32, i32, %struct.TYPE_19__*, i32, i32, %struct.TYPE_23__, i8* }
%struct.TYPE_23__ = type { i32 }
%struct.ib_event.0 = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }

@QIB_S_BUSY = common dso_local global i32 0, align 4
@QIB_S_ANY_WAIT = common dso_local global i32 0, align 4
@ib_qib_state_ops = common dso_local global i32* null, align 8
@QIB_PROCESS_OR_FLUSH_SEND = common dso_local global i32 0, align 4
@QIB_PROCESS_NEXT_SEND_OK = common dso_local global i32 0, align 4
@QIB_FLUSH_SEND = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@QIB_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_WC_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i8* null, align 8
@IB_WC_WITH_IMM = common dso_local global i8* null, align 8
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@IB_WC_LOC_QP_OP_ERR = common dso_local global i8* null, align 8
@QIB_SEGSZ = common dso_local global i64 0, align 8
@QIB_R_WRID_VALID = common dso_local global i32 0, align 4
@IB_WC_RECV_RDMA_WITH_IMM = common dso_local global i32 0, align 4
@IB_WC_RECV = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@IB_QPT_UC = common dso_local global i64 0, align 8
@IB_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@QIB_S_WAIT_RNR = common dso_local global i32 0, align 4
@qib_rc_rnr_retry = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ib_qib_rnr_table = common dso_local global i32* null, align 8
@IB_WC_REM_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_PROT_ERR = common dso_local global i8* null, align 8
@IB_EVENT_QP_LAST_WQE_REACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_qp*)* @qib_ruc_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_ruc_loopback(%struct.qib_qp* %0) #0 {
  %2 = alloca %struct.qib_qp*, align 8
  %3 = alloca %struct.qib_ibport*, align 8
  %4 = alloca %struct.qib_qp*, align 8
  %5 = alloca %struct.qib_swqe*, align 8
  %6 = alloca %struct.qib_sge*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ib_wc, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_event.0, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %2, align 8
  %17 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %18 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %17, i32 0, i32 14
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %22 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %21, i32 0, i32 22
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.qib_ibport* @to_iport(i32 %20, i32 %23)
  store %struct.qib_ibport* %24, %struct.qib_ibport** %3, align 8
  %25 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %26 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %27 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %26, i32 0, i32 17
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.qib_qp* @qib_lookup_qpn(%struct.qib_ibport* %25, i32 %28)
  store %struct.qib_qp* %29, %struct.qib_qp** %4, align 8
  %30 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %31 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %30, i32 0, i32 13
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %35 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @QIB_S_BUSY, align 4
  %38 = load i32, i32* @QIB_S_ANY_WAIT, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %1
  %43 = load i32*, i32** @ib_qib_state_ops, align 8
  %44 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %45 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @QIB_PROCESS_OR_FLUSH_SEND, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %42, %1
  br label %891

53:                                               ; preds = %42
  %54 = load i32, i32* @QIB_S_BUSY, align 4
  %55 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %56 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %733, %53
  %60 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %61 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %64 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %884

68:                                               ; preds = %59
  %69 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %70 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %71 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp* %69, i64 %72)
  store %struct.qib_swqe* %73, %struct.qib_swqe** %5, align 8
  %74 = load i32*, i32** @ib_qib_state_ops, align 8
  %75 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %76 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @QIB_PROCESS_NEXT_SEND_OK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %68
  %84 = load i32*, i32** @ib_qib_state_ops, align 8
  %85 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %86 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @QIB_FLUSH_SEND, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %83
  br label %884

94:                                               ; preds = %83
  %95 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  store i32 %95, i32* %11, align 4
  br label %733

96:                                               ; preds = %68
  %97 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %98 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %101 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %96
  %105 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %106 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %110 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp sge i64 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %115 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %114, i32 0, i32 4
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %104
  br label %117

117:                                              ; preds = %116, %96
  %118 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %119 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %118, i32 0, i32 13
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  %122 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %123 = icmp ne %struct.qib_qp* %122, null
  br i1 %123, label %124, label %144

124:                                              ; preds = %117
  %125 = load i32*, i32** @ib_qib_state_ops, align 8
  %126 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %127 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @QIB_PROCESS_RECV_OK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %124
  %135 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %136 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %135, i32 0, i32 14
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %140 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %139, i32 0, i32 14
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %138, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %134, %124, %117
  %145 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %146 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  %149 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %150 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %149, i32 0, i32 14
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @IB_QPT_RC, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %144
  %156 = load i32, i32* @IB_WC_RETRY_EXC_ERR, align 4
  store i32 %156, i32* %11, align 4
  br label %160

157:                                              ; preds = %144
  %158 = load i8*, i8** @IB_WC_SUCCESS, align 8
  %159 = ptrtoint i8* %158 to i32
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %157, %155
  br label %829

161:                                              ; preds = %134
  %162 = call i32 @memset(%struct.ib_wc* %8, i32 0, i32 64)
  %163 = load i8*, i8** @IB_WC_SUCCESS, align 8
  %164 = ptrtoint i8* %163 to i32
  store i32 %164, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %165 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %166 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %165, i32 0, i32 21
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 2
  %168 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %169 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %168, i32 0, i32 2
  %170 = load %struct.qib_sge*, %struct.qib_sge** %169, align 8
  %171 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %170, i64 0
  %172 = bitcast %struct.qib_sge* %167 to i8*
  %173 = bitcast %struct.qib_sge* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %172, i8* align 8 %173, i64 48, i1 false)
  %174 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %175 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %174, i32 0, i32 2
  %176 = load %struct.qib_sge*, %struct.qib_sge** %175, align 8
  %177 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %176, i64 1
  %178 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %179 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %178, i32 0, i32 21
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 1
  store %struct.qib_sge* %177, %struct.qib_sge** %180, align 8
  %181 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %182 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %186 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %185, i32 0, i32 21
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 8
  %188 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %189 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %192 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %191, i32 0, i32 6
  store i32 %190, i32* %192, align 8
  %193 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %194 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  switch i32 %196, label %480 [
    i32 128, label %197
    i32 129, label %207
    i32 130, label %218
    i32 131, label %250
    i32 132, label %309
    i32 134, label %385
    i32 133, label %385
  ]

197:                                              ; preds = %161
  %198 = load i8*, i8** @IB_WC_WITH_IMM, align 8
  %199 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 10
  store i8* %198, i8** %199, align 8
  %200 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %201 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 9
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %161, %197
  %208 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %209 = call i32 @qib_get_rwqe(%struct.qib_qp* %208, i32 0)
  store i32 %209, i32* %13, align 4
  %210 = load i32, i32* %13, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %812

213:                                              ; preds = %207
  %214 = load i32, i32* %13, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  br label %743

217:                                              ; preds = %213
  br label %483

218:                                              ; preds = %161
  %219 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %220 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = call i32 @unlikely(i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %218
  br label %816

230:                                              ; preds = %218
  %231 = load i8*, i8** @IB_WC_WITH_IMM, align 8
  %232 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 10
  store i8* %231, i8** %232, align 8
  %233 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %234 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 9
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  %240 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %241 = call i32 @qib_get_rwqe(%struct.qib_qp* %240, i32 1)
  store i32 %241, i32* %13, align 4
  %242 = load i32, i32* %13, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %230
  br label %812

245:                                              ; preds = %230
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %245
  br label %743

249:                                              ; preds = %245
  br label %250

250:                                              ; preds = %161, %249
  %251 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %252 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %251, i32 0, i32 7
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  %257 = xor i1 %256, true
  %258 = zext i1 %257 to i32
  %259 = call i32 @unlikely(i32 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %250
  br label %816

262:                                              ; preds = %250
  %263 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %264 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  br label %483

268:                                              ; preds = %262
  %269 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %270 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %271 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %270, i32 0, i32 20
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 2
  %273 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %274 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %277 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %283 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %289 = call i32 @qib_rkey_ok(%struct.qib_qp* %269, %struct.qib_sge* %272, i32 %275, i32 %281, i32 %287, i32 %288)
  %290 = icmp ne i32 %289, 0
  %291 = xor i1 %290, true
  %292 = zext i1 %291 to i32
  %293 = call i32 @unlikely(i32 %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %268
  br label %820

296:                                              ; preds = %268
  %297 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %298 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %297, i32 0, i32 20
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 3
  store %struct.qib_sge* null, %struct.qib_sge** %299, align 8
  %300 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %301 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %300, i32 0, i32 20
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 0
  store i32 1, i32* %302, align 8
  %303 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %304 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %307 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %306, i32 0, i32 20
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 1
  store i32 %305, i32* %308, align 4
  br label %483

309:                                              ; preds = %161
  %310 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %311 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %310, i32 0, i32 7
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  %316 = xor i1 %315, true
  %317 = zext i1 %316 to i32
  %318 = call i32 @unlikely(i32 %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %309
  br label %816

321:                                              ; preds = %309
  %322 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %323 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %324 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %323, i32 0, i32 21
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %324, i32 0, i32 2
  %326 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %327 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %330 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %336 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %336, i32 0, i32 3
  %338 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %342 = call i32 @qib_rkey_ok(%struct.qib_qp* %322, %struct.qib_sge* %325, i32 %328, i32 %334, i32 %340, i32 %341)
  %343 = icmp ne i32 %342, 0
  %344 = xor i1 %343, true
  %345 = zext i1 %344 to i32
  %346 = call i32 @unlikely(i32 %345)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %321
  br label %820

349:                                              ; preds = %321
  store i32 0, i32* %12, align 4
  %350 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %351 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %350, i32 0, i32 21
  %352 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %351, i32 0, i32 1
  store %struct.qib_sge* null, %struct.qib_sge** %352, align 8
  %353 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %354 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %353, i32 0, i32 21
  %355 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %354, i32 0, i32 0
  store i32 1, i32* %355, align 8
  %356 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %357 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %356, i32 0, i32 20
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 2
  %359 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %360 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %359, i32 0, i32 2
  %361 = load %struct.qib_sge*, %struct.qib_sge** %360, align 8
  %362 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %361, i64 0
  %363 = bitcast %struct.qib_sge* %358 to i8*
  %364 = bitcast %struct.qib_sge* %362 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %363, i8* align 8 %364, i64 48, i1 false)
  %365 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %366 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %365, i32 0, i32 2
  %367 = load %struct.qib_sge*, %struct.qib_sge** %366, align 8
  %368 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %367, i64 1
  %369 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %370 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %369, i32 0, i32 20
  %371 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %370, i32 0, i32 3
  store %struct.qib_sge* %368, %struct.qib_sge** %371, align 8
  %372 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %373 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %377 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %376, i32 0, i32 20
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %377, i32 0, i32 0
  store i32 %375, i32* %378, align 8
  %379 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %380 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %383 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %382, i32 0, i32 20
  %384 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %383, i32 0, i32 1
  store i32 %381, i32* %384, align 4
  br label %483

385:                                              ; preds = %161, %161
  %386 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %387 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %386, i32 0, i32 7
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  %392 = xor i1 %391, true
  %393 = zext i1 %392 to i32
  %394 = call i32 @unlikely(i32 %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %385
  br label %816

397:                                              ; preds = %385
  %398 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %399 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %400 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %399, i32 0, i32 20
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 2
  %402 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %403 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %409 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 3
  %411 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %415 = call i32 @qib_rkey_ok(%struct.qib_qp* %398, %struct.qib_sge* %401, i32 8, i32 %407, i32 %413, i32 %414)
  %416 = icmp ne i32 %415, 0
  %417 = xor i1 %416, true
  %418 = zext i1 %417 to i32
  %419 = call i32 @unlikely(i32 %418)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %397
  br label %820

422:                                              ; preds = %397
  %423 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %424 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %423, i32 0, i32 20
  %425 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %425, i32 0, i32 5
  %427 = load i64, i64* %426, align 8
  %428 = inttoptr i64 %427 to i32*
  store i32* %428, i32** %10, align 8
  %429 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %430 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %430, i32 0, i32 3
  %432 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  store i64 %434, i64* %9, align 8
  %435 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %436 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = icmp eq i32 %438, 133
  br i1 %439, label %440, label %447

440:                                              ; preds = %422
  %441 = load i64, i64* %9, align 8
  %442 = load i32*, i32** %10, align 8
  %443 = call i32 @atomic64_add_return(i64 %441, i32* %442)
  %444 = sext i32 %443 to i64
  %445 = load i64, i64* %9, align 8
  %446 = sub nsw i64 %444, %445
  br label %463

447:                                              ; preds = %422
  %448 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %449 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %448, i32 0, i32 20
  %450 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %449, i32 0, i32 2
  %451 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %450, i32 0, i32 5
  %452 = load i64, i64* %451, align 8
  %453 = inttoptr i64 %452 to i64*
  %454 = load i64, i64* %9, align 8
  %455 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %456 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %456, i32 0, i32 3
  %458 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = call i32 @cmpxchg(i64* %453, i64 %454, i32 %460)
  %462 = sext i32 %461 to i64
  br label %463

463:                                              ; preds = %447, %440
  %464 = phi i64 [ %446, %440 ], [ %462, %447 ]
  %465 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %466 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %465, i32 0, i32 21
  %467 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %466, i32 0, i32 2
  %468 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %467, i32 0, i32 5
  %469 = load i64, i64* %468, align 8
  %470 = inttoptr i64 %469 to i64*
  store i64 %464, i64* %470, align 8
  %471 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %472 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %471, i32 0, i32 20
  %473 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %472, i32 0, i32 2
  %474 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %473, i32 0, i32 4
  %475 = load %struct.TYPE_21__*, %struct.TYPE_21__** %474, align 8
  %476 = call i32 @qib_put_mr(%struct.TYPE_21__* %475)
  %477 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %478 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %477, i32 0, i32 20
  %479 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %478, i32 0, i32 0
  store i32 0, i32* %479, align 8
  br label %724

480:                                              ; preds = %161
  %481 = load i8*, i8** @IB_WC_LOC_QP_OP_ERR, align 8
  %482 = ptrtoint i8* %481 to i32
  store i32 %482, i32* %11, align 4
  br label %829

483:                                              ; preds = %349, %296, %267, %217
  %484 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %485 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %484, i32 0, i32 21
  %486 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %485, i32 0, i32 2
  store %struct.qib_sge* %486, %struct.qib_sge** %6, align 8
  br label %487

487:                                              ; preds = %649, %483
  %488 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %489 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %488, i32 0, i32 6
  %490 = load i32, i32* %489, align 8
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %657

492:                                              ; preds = %487
  %493 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %494 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %493, i32 0, i32 6
  %495 = load i32, i32* %494, align 8
  %496 = sext i32 %495 to i64
  store i64 %496, i64* %14, align 8
  %497 = load i64, i64* %14, align 8
  %498 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %499 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = icmp sgt i64 %497, %500
  br i1 %501, label %502, label %506

502:                                              ; preds = %492
  %503 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %504 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  store i64 %505, i64* %14, align 8
  br label %506

506:                                              ; preds = %502, %492
  %507 = load i64, i64* %14, align 8
  %508 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %509 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %508, i32 0, i32 1
  %510 = load i64, i64* %509, align 8
  %511 = icmp sgt i64 %507, %510
  br i1 %511, label %512, label %516

512:                                              ; preds = %506
  %513 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %514 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %513, i32 0, i32 1
  %515 = load i64, i64* %514, align 8
  store i64 %515, i64* %14, align 8
  br label %516

516:                                              ; preds = %512, %506
  %517 = load i64, i64* %14, align 8
  %518 = icmp eq i64 %517, 0
  %519 = zext i1 %518 to i32
  %520 = call i32 @BUG_ON(i32 %519)
  %521 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %522 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %521, i32 0, i32 20
  %523 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %524 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %523, i32 0, i32 5
  %525 = load i64, i64* %524, align 8
  %526 = load i64, i64* %14, align 8
  %527 = load i32, i32* %12, align 4
  %528 = call i32 @qib_copy_sge(%struct.TYPE_20__* %522, i64 %525, i64 %526, i32 %527)
  %529 = load i64, i64* %14, align 8
  %530 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %531 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %530, i32 0, i32 5
  %532 = load i64, i64* %531, align 8
  %533 = add nsw i64 %532, %529
  store i64 %533, i64* %531, align 8
  %534 = load i64, i64* %14, align 8
  %535 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %536 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %535, i32 0, i32 0
  %537 = load i64, i64* %536, align 8
  %538 = sub nsw i64 %537, %534
  store i64 %538, i64* %536, align 8
  %539 = load i64, i64* %14, align 8
  %540 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %541 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %540, i32 0, i32 1
  %542 = load i64, i64* %541, align 8
  %543 = sub nsw i64 %542, %539
  store i64 %543, i64* %541, align 8
  %544 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %545 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %544, i32 0, i32 1
  %546 = load i64, i64* %545, align 8
  %547 = icmp eq i64 %546, 0
  br i1 %547, label %548, label %573

548:                                              ; preds = %516
  %549 = load i32, i32* %12, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %556, label %551

551:                                              ; preds = %548
  %552 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %553 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %552, i32 0, i32 4
  %554 = load %struct.TYPE_21__*, %struct.TYPE_21__** %553, align 8
  %555 = call i32 @qib_put_mr(%struct.TYPE_21__* %554)
  br label %556

556:                                              ; preds = %551, %548
  %557 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %558 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %557, i32 0, i32 21
  %559 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = add nsw i32 %560, -1
  store i32 %561, i32* %559, align 8
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %572

563:                                              ; preds = %556
  %564 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %565 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %566 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %565, i32 0, i32 21
  %567 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %566, i32 0, i32 1
  %568 = load %struct.qib_sge*, %struct.qib_sge** %567, align 8
  %569 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %568, i32 1
  store %struct.qib_sge* %569, %struct.qib_sge** %567, align 8
  %570 = bitcast %struct.qib_sge* %564 to i8*
  %571 = bitcast %struct.qib_sge* %568 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %570, i8* align 8 %571, i64 48, i1 false)
  br label %572

572:                                              ; preds = %563, %556
  br label %649

573:                                              ; preds = %516
  %574 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %575 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %574, i32 0, i32 0
  %576 = load i64, i64* %575, align 8
  %577 = icmp eq i64 %576, 0
  br i1 %577, label %578, label %648

578:                                              ; preds = %573
  %579 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %580 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %579, i32 0, i32 4
  %581 = load %struct.TYPE_21__*, %struct.TYPE_21__** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %581, i32 0, i32 2
  %583 = load i64, i64* %582, align 8
  %584 = icmp ne i64 %583, 0
  br i1 %584, label %585, label %648

585:                                              ; preds = %578
  %586 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %587 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %586, i32 0, i32 2
  %588 = load i64, i64* %587, align 8
  %589 = add nsw i64 %588, 1
  store i64 %589, i64* %587, align 8
  %590 = load i64, i64* @QIB_SEGSZ, align 8
  %591 = icmp sge i64 %589, %590
  br i1 %591, label %592, label %607

592:                                              ; preds = %585
  %593 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %594 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %593, i32 0, i32 3
  %595 = load i64, i64* %594, align 8
  %596 = add nsw i64 %595, 1
  store i64 %596, i64* %594, align 8
  %597 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %598 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %597, i32 0, i32 4
  %599 = load %struct.TYPE_21__*, %struct.TYPE_21__** %598, align 8
  %600 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %599, i32 0, i32 0
  %601 = load i64, i64* %600, align 8
  %602 = icmp sge i64 %596, %601
  br i1 %602, label %603, label %604

603:                                              ; preds = %592
  br label %657

604:                                              ; preds = %592
  %605 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %606 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %605, i32 0, i32 2
  store i64 0, i64* %606, align 8
  br label %607

607:                                              ; preds = %604, %585
  %608 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %609 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %608, i32 0, i32 4
  %610 = load %struct.TYPE_21__*, %struct.TYPE_21__** %609, align 8
  %611 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %610, i32 0, i32 1
  %612 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %611, align 8
  %613 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %614 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %613, i32 0, i32 3
  %615 = load i64, i64* %614, align 8
  %616 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %612, i64 %615
  %617 = load %struct.TYPE_30__*, %struct.TYPE_30__** %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %617, i32 0, i32 0
  %619 = load %struct.TYPE_29__*, %struct.TYPE_29__** %618, align 8
  %620 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %621 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %620, i32 0, i32 2
  %622 = load i64, i64* %621, align 8
  %623 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %619, i64 %622
  %624 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %623, i32 0, i32 1
  %625 = load i64, i64* %624, align 8
  %626 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %627 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %626, i32 0, i32 5
  store i64 %625, i64* %627, align 8
  %628 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %629 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %628, i32 0, i32 4
  %630 = load %struct.TYPE_21__*, %struct.TYPE_21__** %629, align 8
  %631 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %630, i32 0, i32 1
  %632 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %631, align 8
  %633 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %634 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %633, i32 0, i32 3
  %635 = load i64, i64* %634, align 8
  %636 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %632, i64 %635
  %637 = load %struct.TYPE_30__*, %struct.TYPE_30__** %636, align 8
  %638 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %637, i32 0, i32 0
  %639 = load %struct.TYPE_29__*, %struct.TYPE_29__** %638, align 8
  %640 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %641 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %640, i32 0, i32 2
  %642 = load i64, i64* %641, align 8
  %643 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %639, i64 %642
  %644 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %643, i32 0, i32 0
  %645 = load i64, i64* %644, align 8
  %646 = load %struct.qib_sge*, %struct.qib_sge** %6, align 8
  %647 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %646, i32 0, i32 0
  store i64 %645, i64* %647, align 8
  br label %648

648:                                              ; preds = %607, %578, %573
  br label %649

649:                                              ; preds = %648, %572
  %650 = load i64, i64* %14, align 8
  %651 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %652 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %651, i32 0, i32 6
  %653 = load i32, i32* %652, align 8
  %654 = sext i32 %653 to i64
  %655 = sub nsw i64 %654, %650
  %656 = trunc i64 %655 to i32
  store i32 %656, i32* %652, align 8
  br label %487

657:                                              ; preds = %603, %487
  %658 = load i32, i32* %12, align 4
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %660, label %664

660:                                              ; preds = %657
  %661 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %662 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %661, i32 0, i32 20
  %663 = call i32 @qib_put_ss(%struct.TYPE_20__* %662)
  br label %664

664:                                              ; preds = %660, %657
  %665 = load i32, i32* @QIB_R_WRID_VALID, align 4
  %666 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %667 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %666, i32 0, i32 19
  %668 = call i32 @test_and_clear_bit(i32 %665, i32* %667)
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %671, label %670

670:                                              ; preds = %664
  br label %724

671:                                              ; preds = %664
  %672 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %673 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %672, i32 0, i32 1
  %674 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %673, i32 0, i32 1
  %675 = load i32, i32* %674, align 4
  %676 = icmp eq i32 %675, 130
  br i1 %676, label %677, label %680

677:                                              ; preds = %671
  %678 = load i32, i32* @IB_WC_RECV_RDMA_WITH_IMM, align 4
  %679 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 8
  store i32 %678, i32* %679, align 4
  br label %683

680:                                              ; preds = %671
  %681 = load i32, i32* @IB_WC_RECV, align 4
  %682 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 8
  store i32 %681, i32* %682, align 4
  br label %683

683:                                              ; preds = %680, %677
  %684 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %685 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %684, i32 0, i32 18
  %686 = load i32, i32* %685, align 4
  %687 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 7
  store i32 %686, i32* %687, align 8
  %688 = load i8*, i8** @IB_WC_SUCCESS, align 8
  %689 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 2
  store i8* %688, i8** %689, align 8
  %690 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %691 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %690, i32 0, i32 0
  %692 = load i32, i32* %691, align 8
  %693 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 0
  store i32 %692, i32* %693, align 8
  %694 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %695 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %694, i32 0, i32 14
  %696 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 6
  store %struct.TYPE_19__* %695, %struct.TYPE_19__** %696, align 8
  %697 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %698 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %697, i32 0, i32 17
  %699 = load i32, i32* %698, align 8
  %700 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 5
  store i32 %699, i32* %700, align 8
  %701 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %702 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %701, i32 0, i32 16
  %703 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %702, i32 0, i32 1
  %704 = load i32, i32* %703, align 4
  %705 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 4
  store i32 %704, i32* %705, align 4
  %706 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %707 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %706, i32 0, i32 16
  %708 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %707, i32 0, i32 0
  %709 = load i32, i32* %708, align 8
  %710 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 3
  store i32 %709, i32* %710, align 8
  %711 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 1
  store i32 1, i32* %711, align 4
  %712 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %713 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %712, i32 0, i32 14
  %714 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %713, i32 0, i32 4
  %715 = load i32, i32* %714, align 4
  %716 = call i32 @to_icq(i32 %715)
  %717 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %718 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %718, i32 0, i32 2
  %720 = load i32, i32* %719, align 8
  %721 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %722 = and i32 %720, %721
  %723 = call i32 @qib_cq_enter(i32 %716, %struct.ib_wc* %8, i32 %722)
  br label %724

724:                                              ; preds = %750, %683, %670, %463
  %725 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %726 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %725, i32 0, i32 13
  %727 = load i64, i64* %7, align 8
  %728 = call i32 @spin_lock_irqsave(i32* %726, i64 %727)
  %729 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %730 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %729, i32 0, i32 1
  %731 = load i32, i32* %730, align 4
  %732 = add nsw i32 %731, 1
  store i32 %732, i32* %730, align 4
  br label %733

733:                                              ; preds = %724, %94
  %734 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %735 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %734, i32 0, i32 9
  %736 = load i64, i64* %735, align 8
  %737 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %738 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %737, i32 0, i32 8
  store i64 %736, i64* %738, align 8
  %739 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %740 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %741 = load i32, i32* %11, align 4
  %742 = call i32 @qib_send_complete(%struct.qib_qp* %739, %struct.qib_swqe* %740, i32 %741)
  br label %59

743:                                              ; preds = %248, %216
  %744 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %745 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %744, i32 0, i32 14
  %746 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %745, i32 0, i32 0
  %747 = load i64, i64* %746, align 8
  %748 = load i64, i64* @IB_QPT_UC, align 8
  %749 = icmp eq i64 %747, %748
  br i1 %749, label %750, label %751

750:                                              ; preds = %743
  br label %724

751:                                              ; preds = %743
  %752 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %753 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %752, i32 0, i32 0
  %754 = load i32, i32* %753, align 4
  %755 = add nsw i32 %754, 1
  store i32 %755, i32* %753, align 4
  %756 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %757 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %756, i32 0, i32 8
  %758 = load i64, i64* %757, align 8
  %759 = icmp eq i64 %758, 0
  br i1 %759, label %760, label %762

760:                                              ; preds = %751
  %761 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  store i32 %761, i32* %11, align 4
  br label %829

762:                                              ; preds = %751
  %763 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %764 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %763, i32 0, i32 9
  %765 = load i64, i64* %764, align 8
  %766 = icmp slt i64 %765, 7
  br i1 %766, label %767, label %772

767:                                              ; preds = %762
  %768 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %769 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %768, i32 0, i32 8
  %770 = load i64, i64* %769, align 8
  %771 = add nsw i64 %770, -1
  store i64 %771, i64* %769, align 8
  br label %772

772:                                              ; preds = %767, %762
  %773 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %774 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %773, i32 0, i32 13
  %775 = load i64, i64* %7, align 8
  %776 = call i32 @spin_lock_irqsave(i32* %774, i64 %775)
  %777 = load i32*, i32** @ib_qib_state_ops, align 8
  %778 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %779 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %778, i32 0, i32 1
  %780 = load i64, i64* %779, align 8
  %781 = getelementptr inbounds i32, i32* %777, i64 %780
  %782 = load i32, i32* %781, align 4
  %783 = load i32, i32* @QIB_PROCESS_RECV_OK, align 4
  %784 = and i32 %782, %783
  %785 = icmp ne i32 %784, 0
  br i1 %785, label %787, label %786

786:                                              ; preds = %772
  br label %884

787:                                              ; preds = %772
  %788 = load i32, i32* @QIB_S_WAIT_RNR, align 4
  %789 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %790 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %789, i32 0, i32 0
  %791 = load i32, i32* %790, align 8
  %792 = or i32 %791, %788
  store i32 %792, i32* %790, align 8
  %793 = load i32, i32* @qib_rc_rnr_retry, align 4
  %794 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %795 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %794, i32 0, i32 15
  %796 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %795, i32 0, i32 1
  store i32 %793, i32* %796, align 8
  %797 = load i64, i64* @jiffies, align 8
  %798 = load i32*, i32** @ib_qib_rnr_table, align 8
  %799 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %800 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %799, i32 0, i32 10
  %801 = load i64, i64* %800, align 8
  %802 = getelementptr inbounds i32, i32* %798, i64 %801
  %803 = load i32, i32* %802, align 4
  %804 = call i64 @usecs_to_jiffies(i32 %803)
  %805 = add nsw i64 %797, %804
  %806 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %807 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %806, i32 0, i32 15
  %808 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %807, i32 0, i32 0
  store i64 %805, i64* %808, align 8
  %809 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %810 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %809, i32 0, i32 15
  %811 = call i32 @add_timer(%struct.TYPE_22__* %810)
  br label %884

812:                                              ; preds = %244, %212
  %813 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  store i32 %813, i32* %11, align 4
  %814 = load i8*, i8** @IB_WC_LOC_QP_OP_ERR, align 8
  %815 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 2
  store i8* %814, i8** %815, align 8
  br label %824

816:                                              ; preds = %396, %320, %261, %229
  %817 = load i32, i32* @IB_WC_REM_INV_REQ_ERR, align 4
  store i32 %817, i32* %11, align 4
  %818 = load i8*, i8** @IB_WC_LOC_QP_OP_ERR, align 8
  %819 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 2
  store i8* %818, i8** %819, align 8
  br label %824

820:                                              ; preds = %421, %348, %295
  %821 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %821, i32* %11, align 4
  %822 = load i8*, i8** @IB_WC_LOC_PROT_ERR, align 8
  %823 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 2
  store i8* %822, i8** %823, align 8
  br label %824

824:                                              ; preds = %820, %816, %812
  %825 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %826 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 2
  %827 = load i8*, i8** %826, align 8
  %828 = call i32 @qib_rc_error(%struct.qib_qp* %825, i8* %827)
  br label %829

829:                                              ; preds = %824, %760, %480, %160
  %830 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %831 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %830, i32 0, i32 13
  %832 = load i64, i64* %7, align 8
  %833 = call i32 @spin_lock_irqsave(i32* %831, i64 %832)
  %834 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %835 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %836 = load i32, i32* %11, align 4
  %837 = call i32 @qib_send_complete(%struct.qib_qp* %834, %struct.qib_swqe* %835, i32 %836)
  %838 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %839 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %838, i32 0, i32 14
  %840 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %839, i32 0, i32 0
  %841 = load i64, i64* %840, align 8
  %842 = load i64, i64* @IB_QPT_RC, align 8
  %843 = icmp eq i64 %841, %842
  br i1 %843, label %844, label %883

844:                                              ; preds = %829
  %845 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %846 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %847 = call i32 @qib_error_qp(%struct.qib_qp* %845, i32 %846)
  store i32 %847, i32* %15, align 4
  %848 = load i32, i32* @QIB_S_BUSY, align 4
  %849 = xor i32 %848, -1
  %850 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %851 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %850, i32 0, i32 0
  %852 = load i32, i32* %851, align 8
  %853 = and i32 %852, %849
  store i32 %853, i32* %851, align 8
  %854 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %855 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %854, i32 0, i32 13
  %856 = load i64, i64* %7, align 8
  %857 = call i32 @spin_unlock_irqrestore(i32* %855, i64 %856)
  %858 = load i32, i32* %15, align 4
  %859 = icmp ne i32 %858, 0
  br i1 %859, label %860, label %882

860:                                              ; preds = %844
  %861 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %862 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %861, i32 0, i32 14
  %863 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %862, i32 0, i32 3
  %864 = load i32, i32* %863, align 8
  %865 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %16, i32 0, i32 2
  store i32 %864, i32* %865, align 8
  %866 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %867 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %866, i32 0, i32 14
  %868 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %16, i32 0, i32 1
  %869 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %868, i32 0, i32 0
  store %struct.TYPE_19__* %867, %struct.TYPE_19__** %869, align 8
  %870 = load i32, i32* @IB_EVENT_QP_LAST_WQE_REACHED, align 4
  %871 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %16, i32 0, i32 0
  store i32 %870, i32* %871, align 8
  %872 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %873 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %872, i32 0, i32 14
  %874 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %873, i32 0, i32 2
  %875 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %874, align 8
  %876 = bitcast %struct.ib_event.0* %16 to %struct.ib_event*
  %877 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %878 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %877, i32 0, i32 14
  %879 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %878, i32 0, i32 1
  %880 = load i32, i32* %879, align 8
  %881 = call i32 %875(%struct.ib_event* %876, i32 %880)
  br label %882

882:                                              ; preds = %860, %844
  br label %896

883:                                              ; preds = %829
  br label %884

884:                                              ; preds = %883, %787, %786, %93, %67
  %885 = load i32, i32* @QIB_S_BUSY, align 4
  %886 = xor i32 %885, -1
  %887 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %888 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %887, i32 0, i32 0
  %889 = load i32, i32* %888, align 8
  %890 = and i32 %889, %886
  store i32 %890, i32* %888, align 8
  br label %891

891:                                              ; preds = %884, %52
  %892 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %893 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %892, i32 0, i32 13
  %894 = load i64, i64* %7, align 8
  %895 = call i32 @spin_unlock_irqrestore(i32* %893, i64 %894)
  br label %896

896:                                              ; preds = %891, %882
  %897 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %898 = icmp ne %struct.qib_qp* %897, null
  br i1 %898, label %899, label %908

899:                                              ; preds = %896
  %900 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %901 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %900, i32 0, i32 12
  %902 = call i64 @atomic_dec_and_test(i32* %901)
  %903 = icmp ne i64 %902, 0
  br i1 %903, label %904, label %908

904:                                              ; preds = %899
  %905 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %906 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %905, i32 0, i32 11
  %907 = call i32 @wake_up(i32* %906)
  br label %908

908:                                              ; preds = %904, %899, %896
  ret void
}

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local %struct.qib_qp* @qib_lookup_qpn(%struct.qib_ibport*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qib_get_rwqe(%struct.qib_qp*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @qib_rkey_ok(%struct.qib_qp*, %struct.qib_sge*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic64_add_return(i64, i32*) #1

declare dso_local i32 @cmpxchg(i64*, i64, i32) #1

declare dso_local i32 @qib_put_mr(%struct.TYPE_21__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @qib_copy_sge(%struct.TYPE_20__*, i64, i64, i32) #1

declare dso_local i32 @qib_put_ss(%struct.TYPE_20__*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @qib_cq_enter(i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @to_icq(i32) #1

declare dso_local i32 @qib_send_complete(%struct.qib_qp*, %struct.qib_swqe*, i32) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_22__*) #1

declare dso_local i32 @qib_rc_error(%struct.qib_qp*, i8*) #1

declare dso_local i32 @qib_error_qp(%struct.qib_qp*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
