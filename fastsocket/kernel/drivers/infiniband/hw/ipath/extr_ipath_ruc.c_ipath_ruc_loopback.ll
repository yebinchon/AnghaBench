; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ruc.c_ipath_ruc_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ruc.c_ipath_ruc_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i32, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, %struct.TYPE_17__, i32, %struct.TYPE_27__, i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_18__ }
%struct.TYPE_17__ = type { i64, i32, i32 (%struct.ib_event*, i32)*, i32, i32 }
%struct.ib_event = type opaque
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.ipath_sge*, i64, %struct.ipath_sge }
%struct.ipath_sge = type { i64, i64, i64, i64, %struct.TYPE_26__*, i64 }
%struct.TYPE_26__ = type { i64, %struct.TYPE_25__** }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i64 }
%struct.ipath_ibdev = type { i32, i32, i32 }
%struct.ipath_swqe = type { i32, %struct.TYPE_15__, %struct.ipath_sge* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_23__, i64, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32, i64, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.ib_wc = type { i32, i32, i8*, i32, i32, i32, %struct.TYPE_17__*, i32, i32, %struct.TYPE_19__, i8* }
%struct.TYPE_19__ = type { i32 }
%struct.ib_event.0 = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }

@IPATH_S_BUSY = common dso_local global i32 0, align 4
@IPATH_S_ANY_WAIT = common dso_local global i32 0, align 4
@ib_ipath_state_ops = common dso_local global i32* null, align 8
@IPATH_PROCESS_OR_FLUSH_SEND = common dso_local global i32 0, align 4
@IPATH_PROCESS_NEXT_SEND_OK = common dso_local global i32 0, align 4
@IPATH_FLUSH_SEND = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IPATH_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_WC_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i8* null, align 8
@IB_WC_WITH_IMM = common dso_local global i8* null, align 8
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@IB_WC_LOC_QP_OP_ERR = common dso_local global i8* null, align 8
@IPATH_SEGSZ = common dso_local global i64 0, align 8
@IPATH_R_WRID_VALID = common dso_local global i32 0, align 4
@IB_WC_RECV_RDMA_WITH_IMM = common dso_local global i32 0, align 4
@IB_WC_RECV = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@IB_QPT_UC = common dso_local global i64 0, align 8
@IB_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IPATH_S_WAITING = common dso_local global i32 0, align 4
@ib_ipath_rnr_table = common dso_local global i32* null, align 8
@IB_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_PROT_ERR = common dso_local global i8* null, align 8
@IB_EVENT_QP_LAST_WQE_REACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_qp*)* @ipath_ruc_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_ruc_loopback(%struct.ipath_qp* %0) #0 {
  %2 = alloca %struct.ipath_qp*, align 8
  %3 = alloca %struct.ipath_ibdev*, align 8
  %4 = alloca %struct.ipath_qp*, align 8
  %5 = alloca %struct.ipath_swqe*, align 8
  %6 = alloca %struct.ipath_sge*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ib_wc, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_event.0, align 8
  store %struct.ipath_qp* %0, %struct.ipath_qp** %2, align 8
  %15 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %16 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %15, i32 0, i32 14
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.ipath_ibdev* @to_idev(i32 %18)
  store %struct.ipath_ibdev* %19, %struct.ipath_ibdev** %3, align 8
  %20 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %21 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %20, i32 0, i32 2
  %22 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %23 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %22, i32 0, i32 17
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ipath_qp* @ipath_lookup_qpn(i32* %21, i32 %24)
  store %struct.ipath_qp* %25, %struct.ipath_qp** %4, align 8
  %26 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %27 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %26, i32 0, i32 13
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %31 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IPATH_S_BUSY, align 4
  %34 = load i32, i32* @IPATH_S_ANY_WAIT, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %1
  %39 = load i32*, i32** @ib_ipath_state_ops, align 8
  %40 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %41 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IPATH_PROCESS_OR_FLUSH_SEND, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38, %1
  br label %796

49:                                               ; preds = %38
  %50 = load i32, i32* @IPATH_S_BUSY, align 4
  %51 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %52 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %651, %49
  %56 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %57 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %60 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %789

64:                                               ; preds = %55
  %65 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %66 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %67 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.ipath_swqe* @get_swqe_ptr(%struct.ipath_qp* %65, i64 %68)
  store %struct.ipath_swqe* %69, %struct.ipath_swqe** %5, align 8
  %70 = load i32*, i32** @ib_ipath_state_ops, align 8
  %71 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %72 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IPATH_PROCESS_NEXT_SEND_OK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %64
  %80 = load i32*, i32** @ib_ipath_state_ops, align 8
  %81 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %82 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IPATH_FLUSH_SEND, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %79
  br label %789

90:                                               ; preds = %79
  %91 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  store i32 %91, i32* %11, align 4
  br label %651

92:                                               ; preds = %64
  %93 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %94 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %97 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %95, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %92
  %101 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %102 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %106 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = icmp sge i64 %104, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %111 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %110, i32 0, i32 4
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %109, %100
  br label %113

113:                                              ; preds = %112, %92
  %114 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %115 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %114, i32 0, i32 13
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %119 = icmp ne %struct.ipath_qp* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %113
  %121 = load i32*, i32** @ib_ipath_state_ops, align 8
  %122 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %123 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IPATH_PROCESS_RECV_OK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %147, label %130

130:                                              ; preds = %120, %113
  %131 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %132 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %136 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %135, i32 0, i32 14
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @IB_QPT_RC, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %130
  %142 = load i32, i32* @IB_WC_RETRY_EXC_ERR, align 4
  store i32 %142, i32* %11, align 4
  br label %146

143:                                              ; preds = %130
  %144 = load i8*, i8** @IB_WC_SUCCESS, align 8
  %145 = ptrtoint i8* %144 to i32
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %143, %141
  br label %734

147:                                              ; preds = %120
  %148 = call i32 @memset(%struct.ib_wc* %8, i32 0, i32 64)
  %149 = load i8*, i8** @IB_WC_SUCCESS, align 8
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* %11, align 4
  %151 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %152 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %151, i32 0, i32 20
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %155 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %154, i32 0, i32 2
  %156 = load %struct.ipath_sge*, %struct.ipath_sge** %155, align 8
  %157 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %156, i64 0
  %158 = bitcast %struct.ipath_sge* %153 to i8*
  %159 = bitcast %struct.ipath_sge* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 48, i1 false)
  %160 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %161 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %160, i32 0, i32 2
  %162 = load %struct.ipath_sge*, %struct.ipath_sge** %161, align 8
  %163 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %162, i64 1
  %164 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %165 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %164, i32 0, i32 20
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  store %struct.ipath_sge* %163, %struct.ipath_sge** %166, align 8
  %167 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %168 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %172 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %171, i32 0, i32 20
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  store i64 %170, i64* %173, align 8
  %174 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %175 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %178 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %177, i32 0, i32 6
  store i32 %176, i32* %178, align 8
  %179 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %180 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  switch i32 %182, label %420 [
    i32 128, label %183
    i32 129, label %193
    i32 130, label %199
    i32 131, label %226
    i32 132, label %272
    i32 134, label %335
    i32 133, label %335
  ]

183:                                              ; preds = %147
  %184 = load i8*, i8** @IB_WC_WITH_IMM, align 8
  %185 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 10
  store i8* %184, i8** %185, align 8
  %186 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %187 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 9
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %147, %183
  %194 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %195 = call i32 @ipath_get_rwqe(%struct.ipath_qp* %194, i32 0)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  br label %661

198:                                              ; preds = %193
  br label %423

199:                                              ; preds = %147
  %200 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %201 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  %206 = xor i1 %205, true
  %207 = zext i1 %206 to i32
  %208 = call i32 @unlikely(i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %199
  br label %721

211:                                              ; preds = %199
  %212 = load i8*, i8** @IB_WC_WITH_IMM, align 8
  %213 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 10
  store i8* %212, i8** %213, align 8
  %214 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %215 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 9
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %222 = call i32 @ipath_get_rwqe(%struct.ipath_qp* %221, i32 1)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %211
  br label %661

225:                                              ; preds = %211
  br label %226

226:                                              ; preds = %147, %225
  %227 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %228 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = call i32 @unlikely(i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %226
  br label %721

238:                                              ; preds = %226
  %239 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %240 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  br label %423

244:                                              ; preds = %238
  %245 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %246 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %247 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %246, i32 0, i32 21
  %248 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %249 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %252 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %258 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %264 = call i32 @ipath_rkey_ok(%struct.ipath_qp* %245, %struct.TYPE_18__* %247, i32 %250, i32 %256, i32 %262, i32 %263)
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  %268 = call i32 @unlikely(i32 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %244
  br label %725

271:                                              ; preds = %244
  br label %423

272:                                              ; preds = %147
  %273 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %274 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %273, i32 0, i32 7
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  %279 = xor i1 %278, true
  %280 = zext i1 %279 to i32
  %281 = call i32 @unlikely(i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %272
  br label %721

284:                                              ; preds = %272
  %285 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %286 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %287 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %286, i32 0, i32 20
  %288 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %289 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %292 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %298 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %304 = call i32 @ipath_rkey_ok(%struct.ipath_qp* %285, %struct.TYPE_18__* %287, i32 %290, i32 %296, i32 %302, i32 %303)
  %305 = icmp ne i32 %304, 0
  %306 = xor i1 %305, true
  %307 = zext i1 %306 to i32
  %308 = call i32 @unlikely(i32 %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %284
  br label %725

311:                                              ; preds = %284
  %312 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %313 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %312, i32 0, i32 21
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 2
  %315 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %316 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %315, i32 0, i32 2
  %317 = load %struct.ipath_sge*, %struct.ipath_sge** %316, align 8
  %318 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %317, i64 0
  %319 = bitcast %struct.ipath_sge* %314 to i8*
  %320 = bitcast %struct.ipath_sge* %318 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %319, i8* align 8 %320, i64 48, i1 false)
  %321 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %322 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %321, i32 0, i32 2
  %323 = load %struct.ipath_sge*, %struct.ipath_sge** %322, align 8
  %324 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %323, i64 1
  %325 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %326 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %325, i32 0, i32 21
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 0
  store %struct.ipath_sge* %324, %struct.ipath_sge** %327, align 8
  %328 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %329 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 3
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %333 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %332, i32 0, i32 21
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  store i64 %331, i64* %334, align 8
  br label %423

335:                                              ; preds = %147, %147
  %336 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %337 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %336, i32 0, i32 7
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  %342 = xor i1 %341, true
  %343 = zext i1 %342 to i32
  %344 = call i32 @unlikely(i32 %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %335
  br label %721

347:                                              ; preds = %335
  %348 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %349 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %350 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %349, i32 0, i32 21
  %351 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %352 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %358 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %364 = call i32 @ipath_rkey_ok(%struct.ipath_qp* %348, %struct.TYPE_18__* %350, i32 8, i32 %356, i32 %362, i32 %363)
  %365 = icmp ne i32 %364, 0
  %366 = xor i1 %365, true
  %367 = zext i1 %366 to i32
  %368 = call i32 @unlikely(i32 %367)
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %347
  br label %725

371:                                              ; preds = %347
  %372 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %373 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %372, i32 0, i32 21
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %374, i32 0, i32 5
  %376 = load i64, i64* %375, align 8
  %377 = inttoptr i64 %376 to i32*
  store i32* %377, i32** %10, align 8
  %378 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %379 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i32 0, i32 2
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  store i64 %383, i64* %9, align 8
  %384 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %385 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = icmp eq i32 %387, 133
  br i1 %388, label %389, label %396

389:                                              ; preds = %371
  %390 = load i64, i64* %9, align 8
  %391 = load i32*, i32** %10, align 8
  %392 = call i32 @atomic64_add_return(i64 %390, i32* %391)
  %393 = sext i32 %392 to i64
  %394 = load i64, i64* %9, align 8
  %395 = sub nsw i64 %393, %394
  br label %412

396:                                              ; preds = %371
  %397 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %398 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %397, i32 0, i32 21
  %399 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %399, i32 0, i32 5
  %401 = load i64, i64* %400, align 8
  %402 = inttoptr i64 %401 to i64*
  %403 = load i64, i64* %9, align 8
  %404 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %405 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @cmpxchg(i64* %402, i64 %403, i32 %409)
  %411 = sext i32 %410 to i64
  br label %412

412:                                              ; preds = %396, %389
  %413 = phi i64 [ %395, %389 ], [ %411, %396 ]
  %414 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %415 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %414, i32 0, i32 20
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %416, i32 0, i32 5
  %418 = load i64, i64* %417, align 8
  %419 = inttoptr i64 %418 to i64*
  store i64 %413, i64* %419, align 8
  br label %646

420:                                              ; preds = %147
  %421 = load i8*, i8** @IB_WC_LOC_QP_OP_ERR, align 8
  %422 = ptrtoint i8* %421 to i32
  store i32 %422, i32* %11, align 4
  br label %734

423:                                              ; preds = %311, %271, %243, %198
  %424 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %425 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %424, i32 0, i32 20
  %426 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %425, i32 0, i32 2
  store %struct.ipath_sge* %426, %struct.ipath_sge** %6, align 8
  br label %427

427:                                              ; preds = %578, %423
  %428 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %429 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %428, i32 0, i32 6
  %430 = load i32, i32* %429, align 8
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %586

432:                                              ; preds = %427
  %433 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %434 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %433, i32 0, i32 6
  %435 = load i32, i32* %434, align 8
  %436 = sext i32 %435 to i64
  store i64 %436, i64* %12, align 8
  %437 = load i64, i64* %12, align 8
  %438 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %439 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = icmp sgt i64 %437, %440
  br i1 %441, label %442, label %446

442:                                              ; preds = %432
  %443 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %444 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %12, align 8
  br label %446

446:                                              ; preds = %442, %432
  %447 = load i64, i64* %12, align 8
  %448 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %449 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %448, i32 0, i32 1
  %450 = load i64, i64* %449, align 8
  %451 = icmp sgt i64 %447, %450
  br i1 %451, label %452, label %456

452:                                              ; preds = %446
  %453 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %454 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  store i64 %455, i64* %12, align 8
  br label %456

456:                                              ; preds = %452, %446
  %457 = load i64, i64* %12, align 8
  %458 = icmp eq i64 %457, 0
  %459 = zext i1 %458 to i32
  %460 = call i32 @BUG_ON(i32 %459)
  %461 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %462 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %461, i32 0, i32 21
  %463 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %464 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %463, i32 0, i32 5
  %465 = load i64, i64* %464, align 8
  %466 = load i64, i64* %12, align 8
  %467 = call i32 @ipath_copy_sge(%struct.TYPE_18__* %462, i64 %465, i64 %466)
  %468 = load i64, i64* %12, align 8
  %469 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %470 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %469, i32 0, i32 5
  %471 = load i64, i64* %470, align 8
  %472 = add nsw i64 %471, %468
  store i64 %472, i64* %470, align 8
  %473 = load i64, i64* %12, align 8
  %474 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %475 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = sub nsw i64 %476, %473
  store i64 %477, i64* %475, align 8
  %478 = load i64, i64* %12, align 8
  %479 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %480 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %479, i32 0, i32 1
  %481 = load i64, i64* %480, align 8
  %482 = sub nsw i64 %481, %478
  store i64 %482, i64* %480, align 8
  %483 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %484 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = icmp eq i64 %485, 0
  br i1 %486, label %487, label %504

487:                                              ; preds = %456
  %488 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %489 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %488, i32 0, i32 20
  %490 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %489, i32 0, i32 1
  %491 = load i64, i64* %490, align 8
  %492 = add nsw i64 %491, -1
  store i64 %492, i64* %490, align 8
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %503

494:                                              ; preds = %487
  %495 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %496 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %497 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %496, i32 0, i32 20
  %498 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %497, i32 0, i32 0
  %499 = load %struct.ipath_sge*, %struct.ipath_sge** %498, align 8
  %500 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %499, i32 1
  store %struct.ipath_sge* %500, %struct.ipath_sge** %498, align 8
  %501 = bitcast %struct.ipath_sge* %495 to i8*
  %502 = bitcast %struct.ipath_sge* %499 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %501, i8* align 8 %502, i64 48, i1 false)
  br label %503

503:                                              ; preds = %494, %487
  br label %578

504:                                              ; preds = %456
  %505 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %506 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %505, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = icmp eq i64 %507, 0
  br i1 %508, label %509, label %577

509:                                              ; preds = %504
  %510 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %511 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %510, i32 0, i32 4
  %512 = load %struct.TYPE_26__*, %struct.TYPE_26__** %511, align 8
  %513 = icmp ne %struct.TYPE_26__* %512, null
  br i1 %513, label %514, label %577

514:                                              ; preds = %509
  %515 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %516 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %515, i32 0, i32 2
  %517 = load i64, i64* %516, align 8
  %518 = add nsw i64 %517, 1
  store i64 %518, i64* %516, align 8
  %519 = load i64, i64* @IPATH_SEGSZ, align 8
  %520 = icmp sge i64 %518, %519
  br i1 %520, label %521, label %536

521:                                              ; preds = %514
  %522 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %523 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %522, i32 0, i32 3
  %524 = load i64, i64* %523, align 8
  %525 = add nsw i64 %524, 1
  store i64 %525, i64* %523, align 8
  %526 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %527 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %526, i32 0, i32 4
  %528 = load %struct.TYPE_26__*, %struct.TYPE_26__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = icmp sge i64 %525, %530
  br i1 %531, label %532, label %533

532:                                              ; preds = %521
  br label %586

533:                                              ; preds = %521
  %534 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %535 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %534, i32 0, i32 2
  store i64 0, i64* %535, align 8
  br label %536

536:                                              ; preds = %533, %514
  %537 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %538 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %537, i32 0, i32 4
  %539 = load %struct.TYPE_26__*, %struct.TYPE_26__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %539, i32 0, i32 1
  %541 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %540, align 8
  %542 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %543 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %542, i32 0, i32 3
  %544 = load i64, i64* %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %541, i64 %544
  %546 = load %struct.TYPE_25__*, %struct.TYPE_25__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %546, i32 0, i32 0
  %548 = load %struct.TYPE_24__*, %struct.TYPE_24__** %547, align 8
  %549 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %550 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %549, i32 0, i32 2
  %551 = load i64, i64* %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %548, i64 %551
  %553 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %552, i32 0, i32 1
  %554 = load i64, i64* %553, align 8
  %555 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %556 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %555, i32 0, i32 5
  store i64 %554, i64* %556, align 8
  %557 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %558 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %557, i32 0, i32 4
  %559 = load %struct.TYPE_26__*, %struct.TYPE_26__** %558, align 8
  %560 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %559, i32 0, i32 1
  %561 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %560, align 8
  %562 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %563 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %562, i32 0, i32 3
  %564 = load i64, i64* %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %561, i64 %564
  %566 = load %struct.TYPE_25__*, %struct.TYPE_25__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %566, i32 0, i32 0
  %568 = load %struct.TYPE_24__*, %struct.TYPE_24__** %567, align 8
  %569 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %570 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %569, i32 0, i32 2
  %571 = load i64, i64* %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %568, i64 %571
  %573 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %572, i32 0, i32 0
  %574 = load i64, i64* %573, align 8
  %575 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %576 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %575, i32 0, i32 0
  store i64 %574, i64* %576, align 8
  br label %577

577:                                              ; preds = %536, %509, %504
  br label %578

578:                                              ; preds = %577, %503
  %579 = load i64, i64* %12, align 8
  %580 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %581 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %580, i32 0, i32 6
  %582 = load i32, i32* %581, align 8
  %583 = sext i32 %582 to i64
  %584 = sub nsw i64 %583, %579
  %585 = trunc i64 %584 to i32
  store i32 %585, i32* %581, align 8
  br label %427

586:                                              ; preds = %532, %427
  %587 = load i32, i32* @IPATH_R_WRID_VALID, align 4
  %588 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %589 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %588, i32 0, i32 19
  %590 = call i32 @test_and_clear_bit(i32 %587, i32* %589)
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %593, label %592

592:                                              ; preds = %586
  br label %646

593:                                              ; preds = %586
  %594 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %595 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %594, i32 0, i32 1
  %596 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = icmp eq i32 %597, 130
  br i1 %598, label %599, label %602

599:                                              ; preds = %593
  %600 = load i32, i32* @IB_WC_RECV_RDMA_WITH_IMM, align 4
  %601 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 8
  store i32 %600, i32* %601, align 4
  br label %605

602:                                              ; preds = %593
  %603 = load i32, i32* @IB_WC_RECV, align 4
  %604 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 8
  store i32 %603, i32* %604, align 4
  br label %605

605:                                              ; preds = %602, %599
  %606 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %607 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %606, i32 0, i32 18
  %608 = load i32, i32* %607, align 8
  %609 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 7
  store i32 %608, i32* %609, align 8
  %610 = load i8*, i8** @IB_WC_SUCCESS, align 8
  %611 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 2
  store i8* %610, i8** %611, align 8
  %612 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %613 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %612, i32 0, i32 0
  %614 = load i32, i32* %613, align 8
  %615 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 0
  store i32 %614, i32* %615, align 8
  %616 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %617 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %616, i32 0, i32 14
  %618 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 6
  store %struct.TYPE_17__* %617, %struct.TYPE_17__** %618, align 8
  %619 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %620 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %619, i32 0, i32 17
  %621 = load i32, i32* %620, align 4
  %622 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 5
  store i32 %621, i32* %622, align 8
  %623 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %624 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %623, i32 0, i32 16
  %625 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %624, i32 0, i32 1
  %626 = load i32, i32* %625, align 4
  %627 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 4
  store i32 %626, i32* %627, align 4
  %628 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %629 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %628, i32 0, i32 16
  %630 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %629, i32 0, i32 0
  %631 = load i32, i32* %630, align 4
  %632 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 3
  store i32 %631, i32* %632, align 8
  %633 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 1
  store i32 1, i32* %633, align 4
  %634 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %635 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %634, i32 0, i32 14
  %636 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %635, i32 0, i32 4
  %637 = load i32, i32* %636, align 4
  %638 = call i32 @to_icq(i32 %637)
  %639 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %640 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %639, i32 0, i32 1
  %641 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %640, i32 0, i32 1
  %642 = load i32, i32* %641, align 4
  %643 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %644 = and i32 %642, %643
  %645 = call i32 @ipath_cq_enter(i32 %638, %struct.ib_wc* %8, i32 %644)
  br label %646

646:                                              ; preds = %668, %605, %592, %412
  %647 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %648 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %647, i32 0, i32 13
  %649 = load i64, i64* %7, align 8
  %650 = call i32 @spin_lock_irqsave(i32* %648, i64 %649)
  br label %651

651:                                              ; preds = %646, %90
  %652 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %653 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %652, i32 0, i32 9
  %654 = load i64, i64* %653, align 8
  %655 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %656 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %655, i32 0, i32 8
  store i64 %654, i64* %656, align 8
  %657 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %658 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %659 = load i32, i32* %11, align 4
  %660 = call i32 @ipath_send_complete(%struct.ipath_qp* %657, %struct.ipath_swqe* %658, i32 %659)
  br label %55

661:                                              ; preds = %224, %197
  %662 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %663 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %662, i32 0, i32 14
  %664 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %663, i32 0, i32 0
  %665 = load i64, i64* %664, align 8
  %666 = load i64, i64* @IB_QPT_UC, align 8
  %667 = icmp eq i64 %665, %666
  br i1 %667, label %668, label %669

668:                                              ; preds = %661
  br label %646

669:                                              ; preds = %661
  %670 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %671 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %670, i32 0, i32 8
  %672 = load i64, i64* %671, align 8
  %673 = icmp eq i64 %672, 0
  br i1 %673, label %674, label %676

674:                                              ; preds = %669
  %675 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  store i32 %675, i32* %11, align 4
  br label %734

676:                                              ; preds = %669
  %677 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %678 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %677, i32 0, i32 9
  %679 = load i64, i64* %678, align 8
  %680 = icmp slt i64 %679, 7
  br i1 %680, label %681, label %686

681:                                              ; preds = %676
  %682 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %683 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %682, i32 0, i32 8
  %684 = load i64, i64* %683, align 8
  %685 = add nsw i64 %684, -1
  store i64 %685, i64* %683, align 8
  br label %686

686:                                              ; preds = %681, %676
  %687 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %688 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %687, i32 0, i32 13
  %689 = load i64, i64* %7, align 8
  %690 = call i32 @spin_lock_irqsave(i32* %688, i64 %689)
  %691 = load i32*, i32** @ib_ipath_state_ops, align 8
  %692 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %693 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %692, i32 0, i32 1
  %694 = load i64, i64* %693, align 8
  %695 = getelementptr inbounds i32, i32* %691, i64 %694
  %696 = load i32, i32* %695, align 4
  %697 = load i32, i32* @IPATH_PROCESS_RECV_OK, align 4
  %698 = and i32 %696, %697
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %701, label %700

700:                                              ; preds = %686
  br label %789

701:                                              ; preds = %686
  %702 = load i32, i32* @IPATH_S_WAITING, align 4
  %703 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %704 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %703, i32 0, i32 0
  %705 = load i32, i32* %704, align 8
  %706 = or i32 %705, %702
  store i32 %706, i32* %704, align 8
  %707 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %708 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %707, i32 0, i32 0
  %709 = load i32, i32* %708, align 4
  %710 = add nsw i32 %709, 1
  store i32 %710, i32* %708, align 4
  %711 = load i32*, i32** @ib_ipath_rnr_table, align 8
  %712 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %713 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %712, i32 0, i32 10
  %714 = load i64, i64* %713, align 8
  %715 = getelementptr inbounds i32, i32* %711, i64 %714
  %716 = load i32, i32* %715, align 4
  %717 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %718 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %717, i32 0, i32 15
  store i32 %716, i32* %718, align 8
  %719 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %720 = call i32 @ipath_insert_rnr_queue(%struct.ipath_qp* %719)
  br label %789

721:                                              ; preds = %346, %283, %237, %210
  %722 = load i32, i32* @IB_WC_REM_INV_REQ_ERR, align 4
  store i32 %722, i32* %11, align 4
  %723 = load i8*, i8** @IB_WC_LOC_QP_OP_ERR, align 8
  %724 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 2
  store i8* %723, i8** %724, align 8
  br label %729

725:                                              ; preds = %370, %310, %270
  %726 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %726, i32* %11, align 4
  %727 = load i8*, i8** @IB_WC_LOC_PROT_ERR, align 8
  %728 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 2
  store i8* %727, i8** %728, align 8
  br label %729

729:                                              ; preds = %725, %721
  %730 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %731 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 2
  %732 = load i8*, i8** %731, align 8
  %733 = call i32 @ipath_rc_error(%struct.ipath_qp* %730, i8* %732)
  br label %734

734:                                              ; preds = %729, %674, %420, %146
  %735 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %736 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %735, i32 0, i32 13
  %737 = load i64, i64* %7, align 8
  %738 = call i32 @spin_lock_irqsave(i32* %736, i64 %737)
  %739 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %740 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %741 = load i32, i32* %11, align 4
  %742 = call i32 @ipath_send_complete(%struct.ipath_qp* %739, %struct.ipath_swqe* %740, i32 %741)
  %743 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %744 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %743, i32 0, i32 14
  %745 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %744, i32 0, i32 0
  %746 = load i64, i64* %745, align 8
  %747 = load i64, i64* @IB_QPT_RC, align 8
  %748 = icmp eq i64 %746, %747
  br i1 %748, label %749, label %788

749:                                              ; preds = %734
  %750 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %751 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %752 = call i32 @ipath_error_qp(%struct.ipath_qp* %750, i32 %751)
  store i32 %752, i32* %13, align 4
  %753 = load i32, i32* @IPATH_S_BUSY, align 4
  %754 = xor i32 %753, -1
  %755 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %756 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %755, i32 0, i32 0
  %757 = load i32, i32* %756, align 8
  %758 = and i32 %757, %754
  store i32 %758, i32* %756, align 8
  %759 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %760 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %759, i32 0, i32 13
  %761 = load i64, i64* %7, align 8
  %762 = call i32 @spin_unlock_irqrestore(i32* %760, i64 %761)
  %763 = load i32, i32* %13, align 4
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %765, label %787

765:                                              ; preds = %749
  %766 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %767 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %766, i32 0, i32 14
  %768 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %767, i32 0, i32 3
  %769 = load i32, i32* %768, align 8
  %770 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %14, i32 0, i32 2
  store i32 %769, i32* %770, align 8
  %771 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %772 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %771, i32 0, i32 14
  %773 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %14, i32 0, i32 1
  %774 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %773, i32 0, i32 0
  store %struct.TYPE_17__* %772, %struct.TYPE_17__** %774, align 8
  %775 = load i32, i32* @IB_EVENT_QP_LAST_WQE_REACHED, align 4
  %776 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %14, i32 0, i32 0
  store i32 %775, i32* %776, align 8
  %777 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %778 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %777, i32 0, i32 14
  %779 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %778, i32 0, i32 2
  %780 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %779, align 8
  %781 = bitcast %struct.ib_event.0* %14 to %struct.ib_event*
  %782 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %783 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %782, i32 0, i32 14
  %784 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %783, i32 0, i32 1
  %785 = load i32, i32* %784, align 8
  %786 = call i32 %780(%struct.ib_event* %781, i32 %785)
  br label %787

787:                                              ; preds = %765, %749
  br label %801

788:                                              ; preds = %734
  br label %789

789:                                              ; preds = %788, %701, %700, %89, %63
  %790 = load i32, i32* @IPATH_S_BUSY, align 4
  %791 = xor i32 %790, -1
  %792 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %793 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %792, i32 0, i32 0
  %794 = load i32, i32* %793, align 8
  %795 = and i32 %794, %791
  store i32 %795, i32* %793, align 8
  br label %796

796:                                              ; preds = %789, %48
  %797 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %798 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %797, i32 0, i32 13
  %799 = load i64, i64* %7, align 8
  %800 = call i32 @spin_unlock_irqrestore(i32* %798, i64 %799)
  br label %801

801:                                              ; preds = %796, %787
  %802 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %803 = icmp ne %struct.ipath_qp* %802, null
  br i1 %803, label %804, label %813

804:                                              ; preds = %801
  %805 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %806 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %805, i32 0, i32 12
  %807 = call i64 @atomic_dec_and_test(i32* %806)
  %808 = icmp ne i64 %807, 0
  br i1 %808, label %809, label %813

809:                                              ; preds = %804
  %810 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %811 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %810, i32 0, i32 11
  %812 = call i32 @wake_up(i32* %811)
  br label %813

813:                                              ; preds = %809, %804, %801
  ret void
}

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local %struct.ipath_qp* @ipath_lookup_qpn(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ipath_swqe* @get_swqe_ptr(%struct.ipath_qp*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ipath_get_rwqe(%struct.ipath_qp*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @ipath_rkey_ok(%struct.ipath_qp*, %struct.TYPE_18__*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic64_add_return(i64, i32*) #1

declare dso_local i32 @cmpxchg(i64*, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ipath_copy_sge(%struct.TYPE_18__*, i64, i64) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ipath_cq_enter(i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @to_icq(i32) #1

declare dso_local i32 @ipath_send_complete(%struct.ipath_qp*, %struct.ipath_swqe*, i32) #1

declare dso_local i32 @ipath_insert_rnr_queue(%struct.ipath_qp*) #1

declare dso_local i32 @ipath_rc_error(%struct.ipath_qp*, i8*) #1

declare dso_local i32 @ipath_error_qp(%struct.ipath_qp*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
